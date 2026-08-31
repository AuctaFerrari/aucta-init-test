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

Arquivo de estado do Aucta Dev Init. Registra **progresso**, não conteúdo. Atualizado e commitado pelo agente a cada avanço material.

## Sub-skills

| Sub-skill | Status | Última atualização | Evidência |
| --- | --- | --- | --- |
| init-interview | concluida | 2026-08-31 | PROJECT.md, TRUTHS.md, GLOSSARY.md, ACCEPTANCE.md, OWNERS.md |
| init-repo | em_andamento | 2026-08-31 | AUTO ok (82244f3); baseline/v0 (bac3bd4). Assistidos pendentes: ver Blockers |
| init-data | concluida | 2026-08-31 | .project/DATA_CATALOG.md; fixture tests/fixtures/contatos_fixture.csv |
| init-plugin | concluida | 2026-08-31 | project-plugin/ (8e55883); manifesto D3; drift check exercitado |
| init-check | concluida | 2026-08-31 | Preflight P1–P10 executado; harness verde na base e falhando com margem alterada; dry run /start-work simulado. Veredito: NÃO PRONTO (gates tier 2 pendentes) |

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
| I. Ambientes e acessos | concluida | GitHub ok; SharePoint sem conector (blocker administrativo) |
| J. Repositório e governança | em_andamento | assistidos pendentes (Blockers) |
| K. Estratégia de testes | concluida | harness verde (base); falha detectada com margem 0.12 (camada 3 D4 funcional) |
| L. Conhecimento canônico | concluida | TRUTHS-001–004 + glossário |
| M. Plugin e skill stack | concluida | project-plugin/ gerado; stack justificado |
| N. Release e sustentação | concluida | entrega via SharePoint; sustentação Aucta |
| O. Baseline | em_andamento | branch baseline/v0 ok; tag baseline-v0 pendente (UI) |

## Premissas

- Usuário único (analista comercial) na v1 — confirmar com sponsor.
- Atualização mensal da base de pontos — confirmar com Operações.
- Estrutura da planilha oficial idêntica ao extrato — validar no primeiro acesso ao SharePoint.
- GitHub Project não verificável pelo conector — confirmação do consultor valerá como evidência.

## Blockers

- [P3] Permissão Workflows do app GitHub (403 ao criar .github/workflows/ci.yml). Correção: Settings → GitHub Apps → Claude → Workflows: Read and write; agente re-executa o push. Owner: Caio.
- [P4] Proteção da main ausente (push direto aceito — evidência real). Correção: ruleset em Settings → Branches (PR, 1 review, check `checks`, sem force push). Owner: Caio.
- [P4] Labels de governança ausentes (get_label muda-numero → 404). Correção: criar labels conforme init-repo item 5. Owner: Caio.
- [P4] GitHub Project pendente. Owner: Caio.
- [O] Tag baseline-v0 pendente (Releases → new tag). Owner: Caio.
- [P8] CI sem workflow (consequência do P3). Owner: Caio → agente.
- [P9] Conector SharePoint ausente na sessão — blocker administrativo para o arquivo de releases; não trava desenvolvimento. Owner: Caio.

## Retomada

- Próximo passo: consultor executa itens de UI (P3/P4/O); agente valida (push rejeitado, get_label, PR de teste do CI — T2.4), fecha init-repo e reemite o Definition of Ready (esperado: PRONTO).
