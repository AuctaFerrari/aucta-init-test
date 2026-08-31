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
| init-repo | pendente | | |
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
| J. Repositório e governança | pendente | executado no init-repo |
| K. Estratégia de testes | concluida | golden cases obrigatórios (tier 2) |
| L. Conhecimento canônico | concluida | TRUTHS-001–004 + glossário |
| M. Plugin e skill stack | pendente | executado no init-plugin |
| N. Release e sustentação | concluida | entrega via SharePoint; sustentação Aucta pós-v1 |
| O. Baseline | pendente | código existente — tag baseline no init-repo |

## Premissas

- Usuário único (analista comercial) na v1 — confirmar com sponsor se surgir segundo perfil.
- Atualização mensal da base de pontos é suficiente — confirmar com Operações.

## Blockers

- _(nenhum registrado)_

## Retomada

- Próximo passo: iniciar init-repo (governança do repositório + tag baseline do código existente).
