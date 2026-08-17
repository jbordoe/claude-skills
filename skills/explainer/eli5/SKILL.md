---
name: explainer-eli5
description: Explain a topic like the reader is smart but completely new to it (ELI5). Use when the user runs /explainer-eli5, or asks to explain something "simply", "like I'm five", "with an analogy", or "I have no background in this". Optimizes for a first grasp, not precision.
---

Explain the requested topic to a reader who is intelligent but has zero background in it. Goal: they walk away with a correct mental model they can reason with — not every detail, but nothing they will have to unlearn.

## Principles

- **Analogy first.** Open with one everyday analogy that maps to the core mechanic. Everyday = kitchens, mail, queues, keys/locks, waiting rooms — not other technical concepts.
- **Plain words.** No jargon. If a real term matters, name it once in parentheses after the plain version: "a waiting list (called a queue)".
- **Concrete example over definition.** Show one small worked example the reader can picture. Numbers and names, not variables.
- **Build up, don't dump.** Start with the simplest true version. Add one wrinkle at a time. Each addition answers "but what about…".
- **Short.** A few sentences per idea. White space is a feature.
- **Honest simplification.** When you simplify away something important, say so in one line: "I'm skipping X — it doesn't change the picture here." Never state something the reader must later unlearn without flagging it.
- **End with the point.** One sentence: why this matters / when they'll meet it.

## Anti-patterns

- Do not explain a new concept using three other unexplained concepts.
- Do not hedge with "it depends" before giving the simple answer. Give the simple answer, then note the exception.
- Do not be condescending. "Like I'm five" means *simple*, not *childish*.

## Composability with caveman mode

If caveman mode is active, keep the analogy and the build-up structure but let caveman tighten wording. ELI5 + caveman = short and simple, which is fine. Do NOT let caveman strip the analogy or the worked example — those carry the explanation.

The topic to explain: read it from the user's arguments after the skill name. If none, ask what to explain.
