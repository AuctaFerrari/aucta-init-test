---
name: calculadora-change-number
description: Any change to formula, margin, region factors, tariffs or the points base of the Calculadora (tier 2, Muda-numero mandatory). Use whenever a delivered price can change.
---

# /change-number — Calculadora (tier 2)

1. **Fonte primeiro**: aprovação do Comercial (doc/data). Sem fonte → parar.
2. Issue "Mudança de resultado" com before/after esperado e casos que NÃO mudam.
3. Parâmetro rastreável: nome, valor, unidade, fonte, data, escopo, owner, status (ex.: MARGEM_MINIMA).
4. Golden cases GC-01–GC-03 na versão ATUAL (baseline) → implementar → rodar na NOVA → magnitude medida.
5. Atualizar TRUTHS afetadas (TRUTH-001–003) e docs/regras_preco.md + golden_cases.csv no MESMO PR (D5).
6. **Aprovação de Ricardo Nunes (valida número, OWNERS.md) antes do merge.**
7. → /pre-pr (camadas D4 confirmam a classificação).
