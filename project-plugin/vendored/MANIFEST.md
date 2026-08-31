# Manifesto de vendorização — Calculadora de Preço por Ponto (D3)

Skills de terceiros usadas por este plugin, em versão auditada e copiada. A operação NUNCA depende de upstream vivo. O drift check sinaliza divergência sem bloquear nada.

As cópias canônicas vivem no **Aucta Dev Core** (`AuctaFerrari/aucta-dev-core/vendored/`), auditadas na tranche 1 (2026-08-31, PR aucta-dev-core#8). Este plugin referencia as cópias do core.

| Skill | Origem (repo @ commit) | Cópia auditada | Data da auditoria | Responsável | Status |
| --- | --- | --- | --- | --- | --- |
| context-engineering | addyosmani/agent-skills @ d2c37ef | aucta-dev-core/vendored/context-engineering (blob be99110) | 2026-08-31 | Caio Ferrari (revisão PR #8) | vendorizada |
| tdd | mattpocock/skills @ 6654f6b | aucta-dev-core/vendored/tdd (blobs 8fc0867 · 71cbfee · 7ab8647 · 651b838) | 2026-08-31 | idem | vendorizada |
| diagnosing-bugs ("diagnose") | mattpocock/skills @ 6654f6b | aucta-dev-core/vendored/diagnosing-bugs (blobs 061c25a · a13a755 · 2431984) | 2026-08-31 | idem | vendorizada |
| handoff | mattpocock/skills @ 6654f6b | aucta-dev-core/vendored/handoff (blobs 2eb98a5 · 6e1d8da) — nota: destino do resumo sobreposto pelo workflow /handoff (Issue/PR) | 2026-08-31 | idem | vendorizada |
| exemplo-drift | (sintético — teste do mecanismo) | v1 local | 2026-08-31 | Claude (sessão Fase 1) | vendorizada — sha256 5e871856a91fb8c30aa65404e5bb528c63ce1a007c3ed23b8e94de97d790bdc6 |

## Drift check

Para cada linha `vendorizada`: comparar o git blob SHA da cópia (core) com o do upstream em HEAD via conector. Divergência → sinalizar "upstream alterado — auditar e atualizar?" e **continuar operando com a cópia vendorizada**.
