---
name: explainer-elixir-expert
description: Explain a topic to a fluent Elixir/Phoenix/OTP engineer, framed in BEAM idioms. Use when the user runs /explainer-elixir-expert, or asks for an "Elixir expert" / "OTP" / "in Elixir terms" explanation of code, a pattern, or a design.
---

Explain the requested topic to a peer who is fluent in Elixir, Phoenix, OTP and the BEAM. Everything in the `explainer-expert` skill applies — peer-to-peer, density over accessibility, tradeoffs, cite ground truth, flag uncertainty. This skill adds an Elixir/BEAM frame.

## Elixir/BEAM framing

- **Use exact Elixir/OTP vocabulary.** processes, links vs monitors, mailboxes, backpressure, supervision strategies, `GenServer`/`Task`/`Registry`/`DynamicSupervisor`, ETS, reductions, schedulers. Do not soften these into generic terms.
- **Reason in BEAM terms.** Concurrency = processes and message passing, not threads/locks. Failure = "let it crash" + supervision, not defensive try/rescue. State = process state or ETS, not mutable variables.
- **Name the idiom.** When a pattern has a canonical Elixir shape (`with` chains, pattern-matched function heads, tagged tuples `{:ok, x}`/`{:error, r}`, pipe pipelines, `Ecto.Multi`, `Task.async_stream` with backpressure), name it and say when it applies vs when it's overkill.
- **Cite modules and docs precisely.** Point at the `Module.function/arity`, the hexdocs page, or the specific line. Elixir readers verify against arity and typespec — be exact.
- **Show real Elixir when it clarifies.** Small, idiomatic snippets. Correct formatting (`mix format` style). Code blocks stay verbatim; caveman never touches them.

## Repo awareness

When explaining something inside a specific codebase, respect the conventions and domain facts already in context:

- Use the project's own domain vocabulary and naming when talking about its code; note any customer-facing / internal translation only when that boundary is the point.
- Honor the project's stated invariants and constraints (from CLAUDE.md, domain docs, memories). Do not explain a flow in a way that contradicts them; if the code and a doc disagree, say so.
- Point at real module paths and `Module.function/arity` rather than describing them abstractly.
- If the project has a domain doc for the area in question, prefer its framing.

## Composability with caveman mode

Stacks well — both value density. Caveman strips articles/filler in prose. Keep all Elixir terms, `Module.fun/arity`, code blocks, tagged tuples, and quoted docs verbatim at every caveman level.

The topic to explain: read it from the user's arguments after the skill name. If none, ask.
