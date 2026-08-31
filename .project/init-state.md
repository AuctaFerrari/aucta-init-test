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
| init-repo | em_andamento | 2026-08-31 | AUTO ok: estrutura, templates, CODEOWNERS, golden cases, VERSION (commit 82244f3); branch baseline/v0 (bac3bd4). Pendentes: ver Blockers |
| init-data | pendente | | |
| init-plugin | pendente | | |
| init-check | pendente | | |

## init-interview — blocos

| Bloco | Status | Notas |
| --- | --- | --- |
| A. Problema e objetivo | concluida | confirmado a partir de docs/regras_preco.md |
| B. Escopo e fronteiras | concluida | |
| C. Stakeholders e decisão | concluida | valida número: Ricardo Nunes (tier 2) |
| D. Entregáveis e aceite | concluida | golden cases GC-01–GC-03 |
| E. Dados e fontes (inventário) | concluida | inventário: planilha pontos (Operações) + extrato CSV + docs/regras_preco.md — detalhamento no init-data |
| F. Segurança e privacidade | concluida | sem PII; base operacional sem dado pessoal; sem autenticação |
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

## Blockers

- CI workflow (.github/workflows/ci.yml): app GitHub sem permissão "Workflows" (403). Destravar: conceder Workflows (Read and write) ao app Claude e re-executar, OU criar o arquivo pelo editor web (conteúdo fornecido). Owner: Caio.
- Proteção da main: Settings → Branches → ruleset para main (PR obrigatório, 1 review, status check `checks`, conversas resolvidas, sem force push/delete). Owner: Caio.
- Labels de governança (risco-0..3, muda-numero, bug, feature, security, release): criar em Issues → Labels. Owner: Caio.
- GitHub Project (Backlog/Ready/In progress/Review/Validação/Done) vinculado ao repo. Owner: Caio.
- Tag baseline-v0: Releases → Draft a new release → create tag baseline-v0 em main. Owner: Caio.

## Retomada

- Próximo passo: consultor executa os 5 itens assistidos acima; agente valida cada um (push de teste rejeitado para proteção; get_label para labels; PR de teste para CI — T2.4) e fecha init-repo.
