---
name: calculadora-router
description: Control plane of the Calculadora de Preço por Ponto project. Use at the start of ANY demand on this project to classify it (type + change tier + Muda-numero) and route to the minimal workflow. Also use when unsure which workflow applies.
---

# Router — Calculadora de Preço por Ponto

Dialogue in pt-BR. Read `references/pointers.md` first (PROJECT.md + TRUTHS.md + active Issue only — progressive disclosure).

## Routing

| Demanda | Tier | Workflow |
| --- | --- | --- |
| Texto, tooltip, espaçamento, docs | 0 | caminho leve: /start-work → mudança → /pre-pr |
| Fluxo/feature sem tocar preço | 1 | /start-work → /build-feature |
| Bug reproduzível | 1–2 | /start-work → /fix-bug |
| Interface | 0–1 | /start-work → /ui-change |
| **Qualquer coisa que toque fórmula, margem, fatores, tarifa ou base de pontos** | 2 | /start-work → /change-number (Muda-numero obrigatório) |
| Persistência, autenticação, integração nova | 3 | fora do perfil atual — reclassificar projeto antes (avisar consultor) |

Módulos de regra/cálculo (heurística de caminho D4): `calculadora.html` (função calcular, MARGEM_MINIMA), `dados/pontos.csv`, `tests/regression/golden_cases.csv`.

Rules: agent executes all Git (D6); only judgment questions go to the consultant; /pre-pr always runs before any PR.
