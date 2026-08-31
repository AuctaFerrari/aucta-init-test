---
init_version: 0.1.0
projeto: "Calculadora de Preço por Ponto (mini-Tecban sintético)"
repo: "AuctaFerrari/aucta-init-test"
risk_tier: 2
status_geral: concluida
iniciado_em: 2026-08-31
atualizado_em: 2026-08-31
---

# Estado do /init — Calculadora de Preço por Ponto

Arquivo de estado do Aucta Dev Init. Registra **progresso**, não conteúdo. Atualizado e commitado pelo agente a cada avanço material.

## Sub-skills

| Sub-skill | Status | Última atualização | Evidência |
| --- | --- | --- | --- |
| init-interview | concluida | 2026-08-31 | PROJECT.md, TRUTHS.md, GLOSSARY.md, ACCEPTANCE.md, OWNERS.md |
| init-repo | concluida | 2026-08-31 | Templates/CODEOWNERS/CI/labels/Project/proteção validados; push direto rejeitado (409); baseline branch + tag baseline-v0 (bac3bd4); PR de teste bloqueado (T2.4) |
| init-data | concluida | 2026-08-31 | .project/DATA_CATALOG.md; fixture tests/fixtures/contatos_fixture.csv |
| init-plugin | concluida | 2026-08-31 | project-plugin/ completo; manifesto D3; drift check exercitado |
| init-check | concluida | 2026-08-31 | Preflight P1–P10; dry run /start-work; ciclo tier 2 real fechado (Issue #2 → PR #3 mergeado com gates D4/D5/D6) |

## init-interview — blocos

| Bloco | Status | Notas |
| --- | --- | --- |
| A. Problema e objetivo | concluida | confirmado a partir de docs/regras_preco.md |
| B. Escopo e fronteiras | concluida | |
| C. Stakeholders e decisão | concluida | valida número: Ricardo Nunes (tier 2) |
| D. Entregáveis e aceite | concluida | golden cases GC-01–GC-03 |
| E. Dados e fontes | concluida | DATA_CATALOG.md com 4 fontes |
| F. Segurança e privacidade | concluida | PII fora do Git; fixture sanitizada |
| G. IP e licenças | concluida | código da Aucta |
| H. Arquitetura inicial | concluida | HTML único, sem backend |
| I. Ambientes e acessos | concluida | GitHub ok; SharePoint pendente (blocker administrativo) |
| J. Repositório e governança | concluida | init-repo fechado (T2.1–T2.4) |
| K. Estratégia de testes | concluida | harness no CI; golden cases before/after exercitados no PR #3 |
| L. Conhecimento canônico | concluida | TRUTHS-001–004 (TRUTH-002 atualizada por PR — D5) |
| M. Plugin e skill stack | concluida | project-plugin/ gerado |
| N. Release e sustentação | concluida | entrega via SharePoint; sustentação Aucta |
| O. Baseline | concluida | branch baseline/v0 + tag baseline-v0 → bac3bd4 |

## Premissas

- Usuário único (analista comercial) na v1 — confirmar com sponsor.
- Atualização mensal da base de pontos — confirmar com Operações.
- Estrutura da planilha oficial idêntica ao extrato — validar no primeiro acesso ao SharePoint.
- GitHub Project confirmado pelo consultor (conector não lê Projects).
- Repo público APENAS por ser piloto sintético (plano Free não aplica proteção em privado); projetos reais: org Aucta com plano Team+, repo privado.
- Aprovações Muda-numero registradas como review-comment (consultor solo — auto-aprovação vedada pelo GitHub); com segundo revisor real, reativar "Require approvals".

## Blockers

- Conector SharePoint ausente — blocker administrativo para arquivo de releases (04_Releases); não trava desenvolvimento. Owner: Caio.

## Retomada

- /init concluído. Próximas mudanças: abrir via router do project-plugin (/start-work). Pendência externa: conector SharePoint para o fluxo /release.
