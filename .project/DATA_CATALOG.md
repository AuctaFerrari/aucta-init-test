# Calculadora de Preço por Ponto — DATA_CATALOG.md

> Inventário e avaliação das fontes de dados (blueprint 2.4). Uma seção por fonte, com os 8 campos mínimos. O catálogo é um mapa — não contém cópias das bases. Aprofundamento acontece na tarefa que precisar; o que não foi verificado fica marcado `não validado`. _(Projeto sintético de teste.)_

## Planilha "pontos" (base oficial)

| Campo | Conteúdo |
| --- | --- |
| Fonte e localização | Planilha "pontos" no SharePoint do cliente (caminho oficial a registrar quando o site do projeto for criado); sistema de origem: controle da Operações |
| Owner | Operações (cliente) |
| Uso na solução | Fonte primária de pontos, regiões e tarifas — todas as cotações dependem dela (TRUTH-004) |
| Estrutura | Presumida idêntica ao extrato: ponto_id, regiao, qtd_equipamentos, tarifa_base | 
| Qualidade | Não inspecionada diretamente — ver extrato abaixo |
| Status de evidência | **não validado** (fonte não acessível nesta sessão; estrutura **inferida** do extrato) |
| Sensibilidade | Confidencial (dados operacionais do cliente); sem PII conhecida; não copiar íntegra para o Git |
| Atualização | Mensal (premissa registrada no init-state — confirmar com Operações) |

## dados/pontos.csv (extrato versionado)

| Campo | Conteúdo |
| --- | --- |
| Fonte e localização | dados/pontos.csv neste repositório — extrato da planilha oficial |
| Owner | Aucta (extração); dado de origem: Operações (cliente) |
| Uso na solução | Base de trabalho da calculadora e dos testes de dados |
| Estrutura | 1 tabela, 4 campos: ponto_id (chave, texto), regiao (Capital/Interior/Remota), qtd_equipamentos (int), tarifa_base (numérico, R$) |
| Qualidade | 6 linhas; sem duplicidade de chave; sem nulls; tarifas coerentes por região (1150–1300); sem outliers no sample |
| Status de evidência | **observado** (arquivo lido integralmente — pequeno) |
| Sensibilidade | Confidencial leve (operacional); sem PII |
| Atualização | Regerado a cada atualização mensal da planilha oficial; data de corte do extrato atual: não registrada (**não validado**) |

## docs/regras_preco.md (documento de regras)

| Campo | Conteúdo |
| --- | --- |
| Fonte e localização | docs/regras_preco.md neste repositório; origem: regras aprovadas pelo Comercial do cliente em 2026-08-15 |
| Owner | Comercial (cliente) |
| Uso na solução | Define R1–R4: fórmula de preço, margem mínima, fatores de região, base oficial — fonte das TRUTHS-001–004 e dos golden cases |
| Estrutura | Documento markdown: contexto, 4 regras, glossário |
| Qualidade | Consistente com o código e com os golden cases (verificado GC-01–GC-03) |
| Status de evidência | **observado** (lido integralmente) |
| Sensibilidade | Confidencial (regra comercial do cliente) |
| Atualização | Sob demanda — só muda com aprovação do Comercial (regra inegociável em PROJECT.md) |

## Contatos de analistas (planilha do cliente — fora do repositório)

| Campo | Conteúdo |
| --- | --- |
| Fonte e localização | "contatos_analistas.xlsx" fornecida pelo cliente; localização oficial: SharePoint do projeto (pasta 02_Bases) — **não copiada para o Git** |
| Owner | Comercial (cliente) |
| Uso na solução | Distribuição da ferramenta e treinamento dos analistas (fora do cálculo) |
| Estrutura | nome, e-mail, telefone, regional — 1 aba |
| Qualidade | Sample inspecionado: sem duplicidade de e-mail; 2 telefones vazios |
| Status de evidência | **observado** (sample); completude total **não validado** |
| Sensibilidade | **PII (nome, e-mail, telefone)** — não versionar no Git; uso restrito à distribuição/treinamento; fixture sanitizada para testes: tests/fixtures/contatos_fixture.csv |
| Atualização | Sob demanda (mudanças de equipe do cliente) |
