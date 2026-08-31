---
init_version: 0.1.0
projeto: "Calculadora de Preço por Ponto (mini-Tecban sintético)"
repo: "AuctaFerrari/aucta-init-test"
risk_tier: 2
status_geral: em_andamento
iniciado_em: 2026-08-31
atualizado_em: 2026-08-31
---

# Estado do /init — Calculadora de Preço por Ponto

Arquivo de estado do Aucta Dev Init. Registra **progresso**, não conteúdo: respostas e decisões vivem nos artefatos canônicos. Atualizado e commitado pelo agente a cada avanço material.

## Sub-skills

| Sub-skill | Status | Última atualização | Evidência |
| --- | --- | --- | --- |
| init-interview | concluida | 2026-08-31 | PROJECT.md, TRUTHS.md, GLOSSARY.md, ACCEPTANCE.md, OWNERS.md |
| init-repo | em_andamento | 2026-08-31 | AUTO ok: estrutura, templates, CODEOWNERS, golden cases, VERSION (82244f3); branch baseline/v0 (bac3bd4). Pendentes: ver Blockers |
| init-data | concluida | 2026-08-31 | .project/DATA_CATALOG.md (4 fontes, 8 campos); fixture sanitizada tests/fixtures/contatos_fixture.csv |
| init-plugin | pendente | | |
| init-check | pendente | | |

## init-interview — blocos

| Bloco | Status | Notas |
| --- | --- | --- |
| A. Problema e objetivo | concluida | confirmado a partir de docs/regras_preco.md |
| B. Escopo e fronteiras | concluida | |
| C. Stakeholders e decisão | concluida | valida número: Ricardo Nunes (tier 2) |
| D. Entregáveis e aceite | concluida | golden cases GC-01–GC-03 |
| E. Dados e fontes | concluida | DATA_CATALOG.md com 4 fontes; planilha oficial `não validado` (premissa de estrutura) |
| F. Segurança e privacidade | concluida | PII identificada na fonte de contatos — fora do Git; fixture sanitizada |
| G. IP e licenças | concluida | código da Aucta; sem libs de terceiros |
| H. Arquitetura inicial | concluida | HTML único, sem backend |
| I. Ambientes e acessos | concluida | GitHub (AuctaFerrari) + SharePoint do projeto |
| J. Repositório e governança | em_andamento | init-repo: AUTO concluídos; assistidos pendentes |
| K. Estratégia de testes | concluida | golden cases obrigatórios (tier 2); harness em .github/ci/run-checks.sh |
| L. Conhecimento canônico | concluida | TRUTHS-001–004 + glossário |
| M. Plugin e skill stack | pendente | executado no init-plugin |
| N. Release e sustentação | concluida | entrega via SharePoint; sustentação Aucta pós-v1 |
| O. Baseline | em_andamento | branch baseline/v0 criada (bac3bd4); tag baseline-v0 pendente (UI) |

## Premissas

- Usuário único (analista comercial) na v1 — confirmar com sponsor se surgir segundo perfil.
- Atualização mensal da base de pontos é suficiente — confirmar com Operações.
- Estrutura da planilha oficial "pontos" idêntica ao extrato versionado — validar no primeiro acesso ao SharePoint.

## Blockers

- CI workflow (.github/workflows/ci.yml): app GitHub sem permissão "Workflows" (403). Destravar: conceder Workflows (Read and write) ao app Claude e re-executar, OU criar o arquivo pelo editor web (conteúdo fornecido). Owner: Caio.
- Proteção da main: Settings → Branches → ruleset para main (PR obrigatório, 1 review, status check `checks`, conversas resolvidas, sem force push/delete). Owner: Caio.
- Labels de governança (risco-0..3, muda-numero, bug, feature, security, release): criar em Issues → Labels. Owner: Caio.
- GitHub Project (Backlog/Ready/In progress/Review/Validação/Done) vinculado ao repo. Owner: Caio.
- Tag baseline-v0: Releases → Draft a new release → create tag baseline-v0 em main. Owner: Caio.

## Retomada

- Próximo passo: init-plugin (gerar plugin do projeto) — em paralelo, consultor executa os itens assistidos do init-repo para o agente validar e fechar T2.
