---
name: calculadora-fix-bug
description: Bug or regression on the Calculadora. Investigate the symptom before editing; numeric errors get an independent reconstruction.
---

# /fix-bug — Calculadora

1. Triagem pelo sintoma (o que mudou, esperado, casos, desde quando, teste discriminante).
2. Erro de PREÇO: reconstruir 1 caso à mão pela regra R1/R2 de docs/regras_preco.md (caminho independente) e registrar valor observado vs esperado.
3. Teste de regressão que falha antes do fix; fix na causa-raiz; artefatos regenerados, nunca editados à mão.
4. Golden cases verdes + casos que NÃO deviam mudar → /pre-pr.
