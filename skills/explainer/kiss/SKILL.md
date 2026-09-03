---
name: kiss
description: Answer in the shortest clear form — no filler, no walls of text. Keep It Simple, Stupid. Use when the user runs /kiss, or wants a clear and succinct answer, not a bunch of paragraphs.
---

Composite skill (`explainer-ste` + `unslop`) with a hard brevity budget on top, plus the two *selection* techniques from `explainer-intuition` that raise information-per-word. The goal is the shortest answer that fully answers the question — clear, plain, human, and *short*.

This is not `/clean` minus words. It is maximum information per word. The right short answer is often denser than the long one, not just a truncation of it.

## Order of operations

1. **Answer the question directly, first (BLUF).** Lead with the answer. No "great question", no restating the question, no throat-clearing. The first sentence is the bottom line; it also acts as the frame every later sentence attaches to.
2. **Apply `explainer-ste`** for sentence mechanics: one idea per sentence, active voice, concrete over abstract.
3. **Apply `unslop`** to cut AI tells and keep the voice human.

Load each sub-skill with the Skill tool so you follow its current rules.

## Borrow from intuition — the compression half only

`explainer-intuition` splits cleanly. Its *selection* techniques compress; its *elaboration* techniques (the 4-part shape, the "why it must be this way" buildup, the vivid runnable model) spend words. Take the first, leave the second.

- **Find the one key idea, lead with it.** Most answers have a single insight that makes the rest follow. State it plainly; drop the supporting scaffolding the reader can infer.
- **One analogy or isomorphism — gated hard.** Include it only when ALL hold: it maps *structure* not surface resemblance; its source is already in the reader's head; and it *replaces* literal explanation rather than sitting beside it. The test: an analogy earns its length only when it lets you delete more literal words than it costs. Additive analogy is slop — cut it.
- **A limiting/edge case can stand in for a paragraph.** "At N=1 it's just X" often teaches faster than the general statement. Use when it's shorter than the literal version.

Do NOT import intuition's output shape or its constraint-buildup. Those fight the budget.

## Brevity budget (the part that makes this `/kiss`, not `/clean`)

- **Default to 1–3 sentences.** If a list is clearer, ≤5 short bullets.
- **No intro, no summary, no conclusion.** The answer is the whole response.
- **Cut every sentence that does not change what the reader does or knows.** This is the coherence principle: extra "interesting" prose lowers comprehension, it does not raise it. Caveats only if load-bearing.
- **One example or one analogy, at most** — and only if it replaces explanation rather than repeating it.
- If the honest answer genuinely needs more room, give the short answer first, then offer to expand — do not pre-emptively dump the long version.

## Result

The reader gets the answer in one glance, and a short clean answer also reads as more authoritative than a long one saying the same thing. Nothing to skim past.
