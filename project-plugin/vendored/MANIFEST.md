# Manifesto de vendorização — Calculadora de Preço por Ponto (D3)

Skills de terceiros usadas por este plugin, em versão auditada e copiada. A operação NUNCA depende de upstream vivo. O drift check sinaliza divergência sem bloquear nada.

| Skill | Origem (repo) | Commit hash | Data da auditoria | Responsável | Status |
| --- | --- | --- | --- | --- | --- |
| context-engineering | github.com/addyosmani/agent-skills | — | — | — | pendente de vendorização (fallback: princípio aplicado manualmente no /start-work) |
| tdd | github.com/mattpocock/skills | — | — | — | pendente de vendorização (fallback: TDD conduzido pelo agente no /build-feature) |
| diagnose | github.com/mattpocock/skills | — | — | — | pendente de vendorização (fallback: triagem 4.1 embutida no /fix-bug) |
| handoff | github.com/mattpocock/skills | — | — | — | pendente de vendorização (fallback: template 6.4 embutido no /handoff) |
| exemplo-drift | (sintético — teste do mecanismo) | v1 | 2026-08-31 | Claude (sessão Fase 1) | vendorizada — sha256 5e871856a91fb8c30aa65404e5bb528c63ce1a007c3ed23b8e94de97d790bdc6 |

## Drift check

Para cada linha `vendorizada`: comparar hash do conteúdo local com o hash registrado (e com o upstream quando alcançável). Divergência → sinalizar "upstream/cópia alterada — auditar e atualizar?" e **continuar operando com a cópia vendorizada**.
