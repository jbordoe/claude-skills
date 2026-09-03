---
name: clarify
description: Explain a topic with maximum clarity AND install the mental model AND strip AI tells — the combined clarity+intuition+voice pass. Use when the user runs /clarify, or wants a topic explained clearly, intuitively, and in a human voice all at once.
---

Composite skill (`explainer-ste` + `explainer-intuition` + `unslop`). Produce one explanation that is (1) mechanically clear, (2) makes the topic *click*, and (3) reads like a human wrote it. Do not emit three separate passes to the user — combine into a single answer.

## Order of operations

1. **Invoke `explainer-intuition`** first. It decides *what* the explanation says: the one key idea, why the topic must work this way, the vivid mental model. This is the substance.
2. **Apply `explainer-ste`** to that substance. STE governs *how each sentence is written*: one idea per sentence, active voice, one word per meaning, concrete over abstract. Keep the intuition's mental model and analogies — STE constrains the prose, it does not flatten the insight.
3. **Apply `unslop`** last, over the finished draft. Cut AI tells, add human voice. `unslop` must always apply — it is the final gate before the answer ships.

Load each sub-skill with the Skill tool so you follow its current rules. If any tension arises: intuition wins on *content* (keep the insight), STE wins on *sentence mechanics*, unslop wins on *voice and final polish*.

## Result

A single explanation that a tired reader parses on the first pass, that leaves them with the "of course" feeling, and that shows no obvious AI fingerprints.
