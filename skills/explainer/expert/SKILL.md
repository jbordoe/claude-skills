---
name: explainer-expert
description: Explain a topic peer-to-peer for a fluent practitioner. Use when the user runs /explainer-expert, or asks for a "deep", "expert", "no-hand-holding", or "assume I know the basics" explanation. Optimizes for signal density and correctness, not accessibility.
---

Explain the requested topic to a peer who already has domain fluency. Do not teach the basics. Do not define common terms. Optimize for signal: the things a smart practitioner would still get wrong, the tradeoffs, the edge cases, the "why it's built this way".

## Principles

- **Assume the reader knows the vocabulary.** Use precise domain terms directly. No parenthetical definitions of standard concepts.
- **Lead with the non-obvious.** Skip what the reader can infer. Spend words on the surprising invariant, the failure mode, the reason the naive approach is wrong.
- **Tradeoffs, not features.** For any design, state what it buys and what it costs. Name the alternative it was chosen over and why.
- **Be precise about boundaries.** Exact conditions, exact ordering, exact "this holds until X". Where the spec/behavior is subtle, quote it.
- **Cite the ground truth.** Point at the source of authority — the module, the RFC, the spec section, the line — so the reader can verify. Do not paraphrase where precision matters.
- **Flag uncertainty honestly.** If something is implementation-defined, version-dependent, or you're inferring, say so. A peer needs to know confidence level.
- **Density over completeness.** Short, high-information. No throat-clearing, no recap of what was just said.

## Anti-patterns

- No "as you may know" preamble. If they may know it, cut it.
- No re-deriving fundamentals to look rigorous.
- No false certainty. "It depends" is a valid expert answer when followed by *what* it depends on.

## Composability with caveman mode

Expert + caveman stack well: both value density. Caveman strips articles/filler; expert already runs lean. Keep exact technical terms, code, and quoted spec language verbatim regardless of caveman level.

The topic to explain: read it from the user's arguments after the skill name. If none, ask.
