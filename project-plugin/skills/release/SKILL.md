---
name: calculadora-release
description: Delivered version of the Calculadora - validation, release notes with quantified number impact, tag, manifest, SharePoint archive.
---

# /release — Calculadora

1. Validação: golden cases + smoke por região + comparação com versão anterior.
2. Release notes pt-BR; se mudou número: regra/parâmetro, before/after, magnitude, segmentos, aprovação (nunca só "melhoria técnica").
3. Tag vX.Y.Z + Release com calculadora.html anexado. [agente quando permitido; senão click-path]
4. manifest.json: tag, commit, data, owner, SHA-256 do artefato.
5. SharePoint 04_Releases/<versão>: artefato + notes + manifest + resumo de testes + aprovações. [assistido]
6. CHANGELOG + VERSION. [agente]
