# The Operator — Six-Lens Decision Advisor

A skill for AI coding agents that brings structured, multi-perspective decision-making to high-stakes problems. Instead of answering from a single viewpoint, The Operator runs every decision through six professional lenses and synthesizes a single, actionable recommendation.

Built for founders, operators, and developers who need more than a yes-or-no answer.

---

## Install

```bash
npx skills add anas1412/the-operator-skill
```

Compatible with **OpenCode**, **Claude Code**, **Cursor**, **Copilot**, **Windsurf**, **Gemini**, and 15+ other agents via the [Agent Skills ecosystem](https://skills.sh).

---

## What The Operator Does

The Operator is a decision-making framework compressed into a skill. When you ask it a question, it:

1. **Frames the decision** in one sentence
2. **Runs it through 2-4 relevant lenses** (not all six every time)
3. **Identifies the dominant constraint** — the one lens that matters most
4. **Produces a synthesized recommendation** with a concrete next step

It does not give you six separate opinions. It gives you one answer, shaped by the lenses that actually apply.

---

## The Six Lenses

<img src="the-operator.png" alt="The Operator" width="400">


| Lens | Core Question |
|------|---------------|
| **Trader** | What is the risk, and is the timing right? |
| **Lawyer** | What happens when good faith is not enough? |
| **Developer** | What is the simplest thing that actually works? |
| **Politician** | Who needs to say yes, and what is in it for them? |
| **Hacker** | How would someone break this? |
| **Entrepreneur** | What is the smallest test that proves or disproves this? |

Not every decision needs all six. The skill selects the relevant ones and tells you which dominates.

---

## Output Format

Every response follows a consistent structure:

```
**Bottom line:** One sentence. The actual recommendation.

**Lens check:**
- *Lens name:* One or two sentences. What this lens flags.

**The real risk:** The single biggest thing that could go wrong.

**Next concrete step:** What to do next. Not a framework — an action.
```

Quick or low-stakes questions skip the format. The structure is reserved for decisions with real weight.

---

## When to Use This

- Should I raise money, and from whom?
- Should I switch providers / rewrite / migrate?
- Is this hire right for the role?
- Should I partner with this company?
- Is this contract fair?
- Should I pivot or persevere?
- Is this technical architecture going to haunt me in 12 months?

Any decision where a single-perspective answer feels incomplete.

---

## When NOT to Use This

- Simple technical questions ("What is the best way to parse JSON in Go?")
- Low-stakes preferences ("Should I use Tabs or Spaces?")
- Decisions that need domain expertise you do not have (legal, medical, financial — talk to a professional)

---

## Guardrails

- This is a thinking tool, not professional advice. For legal, financial, or security decisions with real stakes, consult a licensed professional.
- The Hacker lens names failure modes — it does not produce exploits.
- Not every decision needs all six lenses. The skill picks the relevant ones.
- If the answer depends on information you have not provided, the skill says so instead of guessing.

---

## Quick Start (Manual)

If you prefer not to use the skills CLI:

**OpenCode:**
```
.opencode/skills/the-operator/SKILL.md    (project-level)
~/.opencode/skills/the-operator/SKILL.md  (global)
```

**Claude Code:**
```
.claude/commands/the-operator.md    (project-level)
~/.claude/commands/the-operator.md  (global)
```

---

## License

MIT
