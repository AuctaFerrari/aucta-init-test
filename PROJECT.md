# Calculadora de Preço por Ponto — PROJECT.md

> Memória canônica compacta (blueprint 6.1). Não é diário de trabalho: detalhes de features vivem em Issues/PRs; fatos e regras vigentes em TRUTHS.md. Atualizado por PR quando o entendimento do projeto muda. _(Projeto sintético de teste do Aucta Dev Init.)_

## Objetivo

O cliente cota manualmente, em planilhas divergentes, o preço mensal de operação de cada ponto de autoatendimento. A ferramenta padroniza o cálculo do preço por ponto para propostas comerciais, eliminando divergência entre analistas.

**Decisão apoiada:** valor de proposta comercial por ponto.
**KPI de sucesso:** 100% das propostas cotadas pela ferramenta (zero planilhas paralelas) e zero divergência entre analistas para o mesmo ponto.

## Usuários

Time de vendas do cliente (analistas comerciais). Perfil único na v1.

## Escopo

**In scope:** cálculo do preço mensal por ponto (regras R1–R3), consulta à base de pontos, exportação do resultado para proposta.
**Out of scope:** aprovação de propostas abaixo da margem (fica no fluxo atual do Comercial), integração com CRM, multiusuário com login.
**Premissas e restrições:** base de pontos atualizada mensalmente pela Operações; regras de preço só mudam com aprovação do Comercial (regra inegociável).

## Risk tier

| Tier | Gatilhos | Justificativa |
| --- | --- | --- |
| 2 | dados de cliente; números externos (preço entregue ao cliente) | A saída é um preço usado em proposta comercial — mudanças de regra/parâmetro exigem golden cases e gate Muda-numero. |

## Arquitetura em uma página

HTML único (calculadora.html) com cálculo em JavaScript no navegador; base de pontos em CSV versionado (extrato da planilha oficial da Operações). Sem backend, sem autenticação, sem persistência. Entrega por arquivo.

## Estado atual

Em iniciação (/init em andamento). Código existente preservado como baseline. 2026-08-31.

## Owners (resumo)

Sponsor: Marina Duarte (cliente) · Owner funcional e técnico: Caio Ferrari (Aucta) — detalhe em OWNERS.md.

## Mapa de navegação

| Artefato | Onde | O que contém |
| --- | --- | --- |
| TRUTHS.md | raiz | Fatos e regras vigentes |
| GLOSSARY.md | raiz | Vocabulário canônico |
| ACCEPTANCE.md | raiz | Aceite, definição de pronto e estratégia de provas |
| OWNERS.md | raiz | Papéis e responsáveis |
| DATA_CATALOG.md | .project/ | Fontes de dados (a criar no init-data) |
| init-state.md | .project/ | Estado do /init |
| docs/regras_preco.md | docs/ | Documento de regras do cliente (fonte) |
