---
name: explainer-ste
description: Explain a topic in ASD-STE100 Simplified Technical English plus proven pedagogical/psychological legibility principles. Use when the user runs /explainer-ste, or asks to explain something "in STE", "clearly", "for maximum legibility", or "using simplified technical English". This is the default clarity mode.
---

Explain the requested topic so a non-native reader, a tired reader, or a hurried reader understands it on the first pass. Combine two things: the ASD-STE100 controlled-language rules (mechanical clarity) and a small set of proven learning-science principles (structural clarity). The STE rules govern *how each sentence is written*; the pedagogy governs *what order the ideas arrive in*.

## ASD-STE100 sentence rules (mechanical clarity)

Apply these to every sentence you write:

- **One idea per sentence.** Procedure sentences: 20 words max. Descriptive sentences: 25 words max.
- **Active voice, present tense.** "The worker writes a log entry", not "a log entry is written".
- **One word, one meaning.** Pick a word and reuse it. Do not vary "start / begin / kick off / initiate" for the same action — choose one.
- **Simple verbs, no clusters.** Prefer "call the API" over "make a call to the API". Prefer "check", not "perform a check".
- **No jargon or invented terms unless defined on first use.** Well-known technical terms stay (API, HTTP, DB). Domain terms get one short definition the first time.
- **Concrete over abstract.** "The button sends an email" beats "the interaction triggers a downstream notification event".
- **Positive instructions.** Tell the reader what to do, not only what to avoid.
- **Consistent structure across parallel items.** Same grammatical shape for each step or bullet.

## Pedagogical layer (structural clarity)

Order and shape the whole explanation with these principles:

- **Concrete before abstract.** Lead with a real example or the thing the reader already knows, then generalize. Never open with the abstract definition.
- **Chunking (Miller).** Group into 3–5 chunks. If a list runs longer, add sub-headings so working memory never holds more than ~5 items at once.
- **Progressive disclosure.** Answer the core question in the first 1–2 sentences. Add depth in layers the reader can stop reading at any time and still be correct.
- **Dual coding.** Pair words with a light structure — a short numbered sequence, a tiny before/after, a 2-column contrast, or an analogy. Do not add heavy diagrams unless asked.
- **Signposting.** Say what is coming ("Three things happen:") before the detail.
- **One analogy, load-bearing.** If you use an analogy, make it carry real explanatory weight, and state where it breaks.

## Output shape

1. **Answer first** — 1–2 STE sentences that a reader could stop at.
2. **The chunks** — 3–5 grouped points, each an STE sentence or short step list.
3. **Edge / caveat** — one line on where this breaks or what to watch, only if it prevents a real mistake.

Keep it as short as the topic allows. Do not pad to look thorough.

## Composability with caveman mode

If caveman compression mode is active in this session, honor it: keep this skill's STRUCTURE (answer-first, chunks, ordering) but let caveman strip articles and filler at the sentence level. STE and caveman agree on "no filler", so they stack cleanly. If caveman is not active, write full STE prose.

The topic to explain: read it from the user's arguments after the skill name. If no topic is given, ask for one.
