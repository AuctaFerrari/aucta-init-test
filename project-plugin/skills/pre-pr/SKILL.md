---
name: calculadora-pre-pr
description: Mandatory gate before opening or updating any PR on the Calculadora project - tests, QA, Muda-numero 3-layer check (D4), TRUTHS check (D5), PR by the agent (D6).
---

# /pre-pr — Calculadora

1. Testes do tier verdes; QA do fluxo; diff sem mudanças laterais.
2. **Muda-numero em 3 camadas (D4):**
   a) Caminho: diff tocou `calculadora.html` (calcular/MARGEM_MINIMA), `dados/pontos.csv` ou `tests/regression/golden_cases.csv` → pergunta obrigatória;
   b) Conteúdo: constantes numéricas/fórmulas alteradas → idem;
   c) Golden cases before/after: `bash .github/ci/run-checks.sh` na base e no head — saída diferente = **fato medido** → exigir artefatos do /change-number.
3. **Check de TRUTHS (D5):** diff + sessão vs TRUTHS.md → listas (a) contraditas (b) fatos novos canônicos → confirmar com consultor → atualização no mesmo PR. IA detecta; consultor decide.
4. Docs sync (regras_preco.md, ACCEPTANCE.md se aceite mudou).
5. Risk gate: tier 2 → aprovação de Ricardo Nunes registrada.
6. Abrir/atualizar PR com template preenchido. [agente — D6]
