# Pointers — artefatos canônicos (Calculadora de Preço por Ponto)

Ordem de leitura na abertura de sessão (progressive disclosure 6.5): PROJECT.md → TRUTHS.md → Issue/Spec ativo. O resto sob demanda.

| Artefato | Caminho | Uso |
| --- | --- | --- |
| PROJECT.md | /PROJECT.md | objetivo, escopo, tier, arquitetura |
| TRUTHS.md | /TRUTHS.md | regras vigentes (R1–R4 → TRUTH-001–004) |
| GLOSSARY.md | /GLOSSARY.md | termos do cliente |
| ACCEPTANCE.md | /ACCEPTANCE.md | aceite + golden cases GC-01–GC-03 |
| OWNERS.md | /OWNERS.md | aprovações (valida número: Ricardo Nunes) |
| DATA_CATALOG.md | /.project/DATA_CATALOG.md | fontes e sensibilidade |
| Estado do /init | /.project/init-state.md | progresso da iniciação |
| Golden cases | /tests/regression/golden_cases.csv | casos de controle (referência externa) |
| Harness CI | /.github/ci/run-checks.sh | parâmetros + golden cases |
| Regras do cliente | /docs/regras_preco.md | fonte das TRUTHS |

**Módulos de regra/cálculo (heurística D4-caminho):** calculadora.html · dados/pontos.csv · tests/regression/golden_cases.csv.
