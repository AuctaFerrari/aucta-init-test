# Regras de precificação por ponto (documento sintético do cliente)

**Fonte oficial:** aprovado pelo Comercial do cliente em 2026-08-15.

## Contexto

O cliente opera uma rede de pontos de autoatendimento e precisa cotar o preço mensal de operação de cada ponto para propostas comerciais. Hoje a cotação é feita em planilha manual e cada analista usa uma versão diferente. A ferramenta apoia a decisão de proposta comercial do time de vendas.

## Regras vigentes

- R1. O preço é calculado **por ponto, por mês**: `preco_mensal = (tarifa_base + custo_manutencao) * fator_regiao`.
- R2. A margem mínima é de **10%** sobre o custo total; propostas abaixo disso exigem aprovação do Comercial.
- R3. Fatores de região vigentes: Capital 1,00 · Interior 1,15 · Remota 1,30.
- R4. A base oficial de pontos é a planilha `pontos` mantida pela Operações (extrato em dados/pontos.csv).

## Termos do cliente

- **Ponto**: local físico com um ou mais equipamentos de autoatendimento.
- **Tarifa base**: custo mensal padrão de operação de um ponto na região, antes de manutenção.
- **Fator de região**: multiplicador logístico por localização do ponto.
