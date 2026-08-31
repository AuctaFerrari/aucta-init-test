---
name: calculadora-build-feature
description: Material feature on the Calculadora that does not change delivered numbers (tier 1). Use for new flows, filters, exports.
---

# /build-feature — Calculadora

1. Fechar lacunas com perguntas curtas (pt-BR). [fallback de grill-with-docs — pendente de vendorização]
2. Spec curta com aceite testável. 3. Plano em etapas pequenas.
4. Implementação incremental; TDD na lógica; commits atômicos. [agente]
5. Guard: se o diff encostar em fórmula/margem/fatores/base → parar e re-rotear para /change-number.
6. QA do fluxo + evidências → /pre-pr.
