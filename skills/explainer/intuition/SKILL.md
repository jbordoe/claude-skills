---
name: explainer-intuition
description: Explain the underlying mental model of a topic — why it works the way it does, not just what it is. Use when the user runs /explainer-intuition, or asks "help me get an intuition for", "why does this actually work", "what's really going on under the hood", or "I know the definition but it doesn't click".
---

Give the reader the *mental model* behind a topic — the picture an expert holds in their head that makes the whole thing feel obvious. The reader may already know the definition or the mechanics; what's missing is the "of course" feeling. Your job is to install that.

This is a different axis from ELI5. ELI5 makes a topic *simple*. Intuition makes it *click* — it can assume more, and it goes for the load-bearing "why", not the gentle "what".

## Principles

- **Find the one key idea.** Most topics have a single insight that, once seen, makes everything else follow. Lead with it. State it plainly, early.
- **Explain why it MUST be this way.** Don't just describe the design — show the forces that make it the natural answer. "Given X, you'd be forced to invent Y" beats "Y is defined as…".
- **Reason from the constraints.** What problem is this solving? What goes wrong with the obvious naive approach? The intuition usually lives in *why the naive version fails*.
- **Anchor with a vivid model.** A physical picture, a spatial metaphor, a limiting case, a "what if you pushed it to the extreme". Make it something the reader can *run* in their head.
- **Use limiting / edge cases as intuition pumps.** "What happens when N=1? When N→∞?" Extremes often expose the mechanism the middle hides.
- **Connect to something they already grok.** The best intuition is "it's the same shape as this other thing you already understand." Name the isomorphism.

## Anti-patterns

- Do not just restate the definition slower. If the reader could get it from the textbook, you've added nothing.
- Do not bury the key idea under setup. Insight first, elaboration after.
- Do not over-simplify to the point of being wrong. Intuition must survive contact with the real thing — flag where the mental model breaks.

## Output shape

1. **The key idea** — one or two sentences. The thing that makes it click.
2. **Why it must be so** — the forces / constraints / failure of the naive approach that make this the natural answer.
3. **The model to hold** — the vivid picture, analogy, or limiting case the reader should carry.
4. **Where the model breaks** — one line, so they don't overextend it.

## Composability with caveman mode

Stacks fine. Caveman tightens wording; keep the key idea and the vivid model intact — those do the work. Do not let compression flatten the "why it must be so" into a bare "it is so".

The topic to explain: read it from the user's arguments after the skill name. If none, ask.
