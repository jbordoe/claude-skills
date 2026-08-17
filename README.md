# claude-skills

Personal [Claude Code](https://claude.com/claude-code) skills, versioned so they follow me across machines.

## Install

```sh
git clone <this-repo> ~/workspace/claude-skills
cd ~/workspace/claude-skills
./install.sh
```

`install.sh` symlinks every skill into `~/.claude/skills/`. It's idempotent — re-run it after adding a skill or on a new machine. Restart Claude Code (or `/reload-skills`) afterwards.

Override the target with `CLAUDE_SKILLS_DIR=/some/path ./install.sh`.

## Layout

```
skills/<group>/<name>/SKILL.md
```

Claude Code loads personal skills flat as `~/.claude/skills/<skill>/SKILL.md`, so a grouped skill installs under the name `<group>-<name>` (e.g. `skills/explainer/ste` → `/explainer-ste`). A group named `_` installs ungrouped (just `<name>`).

## Skills

### explainer/ — explanation styles

Registers for explaining a topic. Invoke with a topic argument, e.g. `/explainer-eli5 how Oban unique jobs work`.

| Command | Reader / goal | Style |
|---|---|---|
| `/explainer-ste` | anyone, first pass | ASD-STE100 Simplified Technical English + pedagogy (chunking, progressive disclosure, concrete-first) |
| `/explainer-eli5` | zero background | analogy-first, plain words, honest simplification |
| `/explainer-expert` | fluent peer | signal density, tradeoffs, cite ground truth, flag uncertainty |
| `/explainer-elixir-expert` | Elixir/BEAM peer | expert + OTP idioms + current-repo domain awareness |
| `/explainer-intuition` | "make it click" | the load-bearing mental model — why it must work this way |
| `/explainer-socratic` | learning by doing | teaches interactively, one guiding question at a time |

They compose with the caveman compression plugin (if installed): explainer picks content and depth, caveman strips wording. Each SKILL.md documents how it stacks.

## Adding a skill

1. Create `skills/<group>/<name>/SKILL.md` with standard frontmatter (`name`, `description`).
2. Run `./install.sh`.
3. `/reload-skills` in Claude Code.
