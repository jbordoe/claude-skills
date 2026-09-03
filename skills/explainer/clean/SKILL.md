---
name: clean
description: Explain a topic with maximum clarity AND strip AI tells — the combined clarity+voice pass. Use when the user runs /clean, or wants a topic explained plainly and in a human voice (no intuition/mental-model layer).
---

Composite skill (`explainer-ste` + `unslop`). Produce one explanation that is (1) mechanically clear and (2) reads like a human wrote it. Do not emit two separate passes to the user — combine into a single answer.

## Order of operations

1. **Invoke `explainer-ste`** first. It governs *how each sentence is written*: one idea per sentence, active voice, one word per meaning, concrete over abstract, consistent structure. This produces the clear draft.
2. **Apply `unslop`** last, over that draft. Cut AI tells, add human voice. `unslop` must always apply — it is the final gate before the answer ships.

Load each sub-skill with the Skill tool so you follow its current rules. If tension arises: STE wins on *sentence mechanics*, unslop wins on *voice and final polish*.

Use `/clarify` instead when the topic also needs a mental model — that variant adds the intuition layer.

## Result

A single explanation that a tired reader parses on the first pass and that shows no obvious AI fingerprints.
