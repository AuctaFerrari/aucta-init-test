# Calculadora de Preço por Ponto — ACCEPTANCE.md

> Critérios de aceite, definição de pronto e estratégia de provas (blocos D e K). _(Projeto sintético de teste.)_

## Entrega

**Formato:** HTML único (calculadora.html), sem backend.
**Ambiente alvo:** navegador dos analistas; distribuído via SharePoint do projeto.
**Mecanismo de aprovação:** validação dos golden cases por Ricardo Nunes (Comercial) registrada no PR de release.

## Critérios de aceite

| # | Critério (testável) | Como provar |
| --- | --- | --- |
| ACC-001 | Preço calculado confere com a regra R1 para qualquer ponto da base | Golden cases GC-01–GC-03 |
| ACC-002 | Margem mínima de 10% aplicada em todo cálculo | Golden cases + inspeção de parâmetro nomeado |
| ACC-003 | Fatores de região conformes à R3 | Teste unitário dos fatores |
| ACC-004 | Analista consegue cotar um ponto em menos de 1 minuto | Demonstração com usuário-chave |

## Definição de pronto

- Critérios de aceite atendidos e demonstrados.
- Golden cases verdes nas duas versões (before/after) quando houver mudança de regra.
- Documentação que ficaria incorreta atualizada no mesmo ciclo.

## Marcos

| Marco | Conteúdo | Data alvo |
| --- | --- | --- |
| M1 | Baseline preservado + governança do repo | — |
| M2 | Golden cases automatizados no CI | — |

## Como vamos provar (estratégia de testes — bloco K)

**Risk tier do projeto:** 2

| Tipo | Aplicação neste projeto |
| --- | --- |
| Golden cases | **Obrigatórios antes de qualquer mudança de regra/parâmetro** (tier 2). GC-01: Capital, tarifa 1200 + manutenção 350 → R$ 1.705,00. GC-02: Interior, 1150 + 350 → R$ 1.897,50. GC-03: Remota, 1300 + 350 → R$ 2.359,50. Referência externa: planilha manual validada pelo Comercial (não recalculada pelo código sob teste). |
| Smoke / E2E | Abrir calculadora, cotar um ponto de cada região, exportar resultado |
| Regressão | Golden cases before/after em toda mudança Muda-numero |
| Dados | Schema e completude do extrato dados/pontos.csv a cada atualização mensal |
