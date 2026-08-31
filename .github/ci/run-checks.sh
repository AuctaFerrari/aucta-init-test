#!/usr/bin/env bash
# Checks determinísticos do projeto (tier 2): parâmetros de negócio + golden cases.
# Golden cases são recalculados por implementação INDEPENDENTE (awk) a partir das
# regras R1/R2 de docs/regras_preco.md — nunca pelo código sob teste (blueprint 2.5).
set -uo pipefail
fail=0

# 1. Parâmetro de negócio conforme TRUTH-002 (margem mínima 10%)
if ! grep -q "const MARGEM_MINIMA = 0.10;" calculadora.html; then
  echo "FALHA: MARGEM_MINIMA difere de 0.10 (TRUTH-002)."
  echo "Mudança de resultado exige o workflow /change-number: fonte, before/after, golden cases e aprovação de quem valida número."
  fail=1
fi

# 2. Golden cases (GC-01..GC-03 de ACCEPTANCE.md)
if ! awk -F, 'NR>1 {
  calc=($3+$4)*$2*1.10;
  diff=(calc>$5 ? calc-$5 : $5-calc);
  if (diff>0.005) { printf "FALHA golden case %s: calculado %.2f, esperado %.2f\n", $1, calc, $5; bad=1 }
} END { exit bad }' tests/regression/golden_cases.csv; then
  fail=1
fi

if [ "$fail" -eq 0 ]; then echo "Checks OK: parâmetros e golden cases conformes."; fi
exit "$fail"
