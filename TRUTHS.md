# Project truths

> Verdades canônicas para a **versão atual** do projeto (blueprint 6.2). Cada item é atômico, verificável e relevante para decisões futuras. Quando a realidade muda, a verdade é alterada por PR — o Git preserva o histórico. _(Projeto sintético de teste.)_

TRUTH-001 │ O preço é calculado por ponto, por mês: preco_mensal = (tarifa_base + custo_manutencao) * fator_regiao, com margem mínima aplicada sobre o custo total.
Source: docs/regras_preco.md (R1), aprovado pelo Comercial do cliente em 2026-08-15
Owner: Comercial (cliente)
Last reviewed: 2026-08-31

TRUTH-002 │ A margem mínima é de 10% sobre o custo total; abaixo disso exige aprovação do Comercial.
Source: docs/regras_preco.md (R2) — confirmado pelo consultor em 2026-08-31 após contradição apontada (12% citado em conversa não prevalece)
Owner: Comercial (cliente)
Last reviewed: 2026-08-31

TRUTH-003 │ Fatores de região vigentes: Capital 1,00 · Interior 1,15 · Remota 1,30.
Source: docs/regras_preco.md (R3)
Owner: Comercial (cliente)
Last reviewed: 2026-08-31

TRUTH-004 │ A base oficial de pontos é a planilha "pontos" mantida pela Operações; dados/pontos.csv é extrato versionado, não a fonte.
Source: docs/regras_preco.md (R4)
Owner: Operações (cliente)
Last reviewed: 2026-08-31
