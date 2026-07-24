# The Operator — Six-Lens Decision Advisor

<p align="center">
  <img src="the-operator.png" alt="The Operator" width="400">
</p>

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

## How It Works — Real Examples

### Example 1: Should I quit my job to build a startup?

**You ask:**
> I have 8 months of runway. My side project has 200 users and $400 MRR. My job pays $180k. Should I quit?

**The Operator responds:**

> **Bottom line:** Not yet — your unit economics are not proven enough to justify the income sacrifice. Get to $2k MRR or 3 months of consistent 20% month-over-month growth first.
>
> **Lens check:**
> - *Trader:* 8 months sounds like a lot, but 3 of those will be spent building the wrong thing if you have not validated what people pay for. The max loss is 8 months of savings plus career momentum — can you survive that?
> - *Entrepreneur:* $400 MRR from 200 users is $2 ARPU. That is a hobby metric, not a business metric. Find out what the top 10 users would pay for and whether 100 more like them exist.
> - *Developer:* The simplest test is not "quit and build" — it is "spend 4 weekends selling the product manually and see if conversion holds without you coding."
>
> **The real risk:** you quit on the story of what the project could become instead of the data of what it actually is.
>
> **Next step:** spend the next 30 days doing only sales and onboarding. If MRR hits $1,500 without new features, quit. If it does not, you have your answer without having burned your runway.

---

### Example 2: Should I take on a co-founder?

**You ask:**
> A friend offered to be my CTO. They are talented but I have never worked with them. How do I think about this?

**The Operator responds:**

> **Bottom line:** Treat this like a business marriage — date before you marry. Run a 60-day trial project with clear deliverables and a vesting agreement before committing equity.
>
> **Lens check:**
> - *Trader:* A bad co-founder split is the #1 startup killer. The downside is not just lost time — it is a 50/50 equity deadlock with someone you no longer trust. That is a one-way door.
> - *Lawyer:* No handshake deals. A cliff, vesting schedule, and role definition on paper before any code gets written. What happens if one of you wants out in month 4?
> - *Politician:* Your friend will also be a friend after this. Set expectations about disagreement, authority, and what "done" means — the relationship costs more than the equity.
>
> **The real risk:** you skip the trial period because it feels awkward, and discover a fundamental misalignment 6 months in when the equity is already split.
>
> **Next step:** propose a 60-day trial where you build one feature together. Define success criteria upfront. If it works, formalize with a SAFE-style co-founder agreement. If it does not, you have a clean exit with no resentment.

---

### Example 3: Should we build a feature for one big customer?

**You ask:**
> A potential enterprise customer wants a specific integration. It would take 6 weeks and our roadmap is already full. The deal is $120k ARR. Worth it?

**The Operator responds:**

> **Bottom line:** Only if the integration becomes a reusable product feature, not a one-off. Negotiate for a case study and design the integration generically.
>
> **Lens check:**
> - *Trader:* $120k ARR is real money, but 6 weeks of diverted engineering is a bet against every other customer on your roadmap. What is the opportunity cost per week?
> - *Developer:* If you build this as a custom fork, you will maintain it forever. Build it as a plugin or API extension that other customers can use. If you cannot make it generic, walk away.
> - *Entrepreneur:* One customer paying $120k is a dependency, not a revenue stream. What happens when they churn? Do you have 3 more like them, or is this a one-off?
>
> **The real risk:** you build a one-off integration, the customer churns in year 2, and you are left maintaining dead code that blocks your real roadmap.
>
> **Next step:** counter with: "We will build this as a public integration, you get early access and a case study, and we split the 6 weeks across two sprints with your team providing the domain expertise." If they say no, it was never a good deal.

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
