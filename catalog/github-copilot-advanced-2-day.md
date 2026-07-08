# GitHub Copilot - Advanced (2 Sessions × 4 Hours, Delivered Across 2 Days)

**Duration**: 2 Sessions × 4 Hours (8 hours total — same footprint as the 1-day course, split across 2 days)

**Focus**: Intermediate/advanced GitHub Copilot workflows for developers who already use Copilot day-to-day — deeper context strategies, custom instructions, agents, tool sets/MCP, and multi-agent workflows — continuing work on the same Personal Expense Tracker / Task Manager apps

**Audience**: Working professionals (Java/Python/.NET/Data Analysis) who have used GitHub Copilot for a while and want to move past basic completion into intermediate/advanced workflows

**Tracks**: Java (Spring Boot), Python (FastAPI), .NET (ASP.NET Core), or Python Data Analysis (Pandas) — same 2-session flow

**Prerequisites**:
- Prior hands-on experience with GitHub Copilot (completion + basic Chat)
- Comfort with Git/GitHub and one track's tooling (Java/Maven, Python, .NET, or Jupyter)
- Completion of the [1-day Foundations course](github-copilot-1-day.md) or equivalent experience

---

## 🗓️ Delivery Model: 1 Course, 2 Cohorts, 2 Days

This is authored as a single 8-hour course, but delivered as **two 4-hour sessions on two separate days** so two cohorts can go through it without doubling instructor prep:

| | Day 1 | Day 2 |
|---|---|---|
| **Morning Cohort** | Session 1 (AM) | Session 2 (AM) |
| **Afternoon Cohort** | Session 1 (PM, repeated) | Session 2 (PM, repeated) |

- Each cohort only attends one slot per day (AM **or** PM) and follows Session 1 → Session 2 across the two days — functionally a 2-day course for that cohort.
- The instructor delivers the **same Session 1** content twice on Day 1, and the **same Session 2** content twice on Day 2.
- Because each session runs standalone in a single sitting, the single 60-minute breakout from the 1-day course is split into **two 30-minute breakout parts** (Part A / Part B) per session, bracketed by a context/tooling topic — shorter blocks hold attention better in a repeated, single-pass session.

---

## 🎯 Course Overview

This course assumes participants are past the "what is Copilot" stage. It skips re-teaching completion basics and the Gen AI landscape, and instead goes deep on the workflows that separate casual Copilot users from power users: custom instructions, hash-context strategy, chat modes, built-in agents (`@workspace`, `@github`, `@terminal`), tool sets/MCP, and reusable Copilot customization repositories. Each session includes a live showcase of a real, reusable Copilot tooling repo the instructor maintains.

---

## 🧭 Main Topics Covered

- Advanced Copilot Interface & Productivity Patterns
  - Custom instructions (`.github/copilot-instructions.md`), settings sync, model picker
  - Ask / Edit / Agent modes — when to use which
- Context Mastery (Intermediate → Advanced)
  - Hash context: `#file`, `#selection`, `#codebase`, `#editor`, `#sym`, `#terminalSelection`, `#terminalLastCommand`
  - Multi-context and progressive context-building strategies
  - Multi-file editing sessions and cross-file consistency
- Backend & Web Layer Deep Dives (continuing the Task Manager app)
  - Intermediate backend modeling: custom queries, validation, service-layer business logic, generated unit tests
  - Web layer/API work: REST controllers via `#codebase`, templates, AJAX, API testing workflows
- Copilot Agents, Tool Sets & MCP
  - `@workspace`, `@github`, `@terminal` participants
  - Tool sets and MCP server integrations for extending Copilot with external tools
- Reusable Copilot Customization (Showcases)
  - **Day 1**: `github-copilot-helper` — portable instructions/prompts/rules/agents/skills/hooks you can install globally or per-project
  - **Day 2**: `agent-hub` — a 7-agent factory chain and generic loop framework for multi-agent feature delivery
- Governance, Troubleshooting & Recovery
  - Org-wide instructions, content exclusions, ethical/security considerations
  - Copilot logs, restore points, rollback strategies, safe re-enable patterns

---

## 📚 Learning Outcomes

- Apply advanced context strategies (`#codebase`, `#sym`, terminal context) to keep multi-file changes consistent
- Author and scope custom instructions for a repo, a team, or personal use
- Use Copilot's built-in agents and tool sets/MCP integrations to extend Copilot beyond the editor
- Install and adapt a reusable Copilot customization repo (`github-copilot-helper`) for your own team
- Understand and evaluate a multi-agent delivery workflow (`agent-hub`'s factory chain and loop framework) as a pattern for scaling AI-assisted development
- Continue building the Task Manager app with intermediate-level backend and web-layer work

---

## 🛠️ Project Context (Technology-Agnostic)

- Same four parallel tracks as the 1-day course, continuing the same codebase:
  - **Java Track**: Spring Boot Task Manager (H2 for dev)
  - **Python Track**: FastAPI Task Manager (SQLite for dev)
  - **.NET Track**: ASP.NET Core Task Manager (SQLite for dev)
  - **Python Data Analysis Track**: Data Analysis Pipeline (Pandas, Matplotlib, Seaborn)
- Frontend: Thymeleaf/Jinja2/Razor templates; Bootstrap for styling (web tracks)
- Tools: GitHub Copilot (VS Code/IntelliJ/Visual Studio), REST Client (optional), Jupyter Notebook (data analysis)
- Showcase repos (instructor-provided, sibling repos — not part of the track codebases):
  - [`github-copilot-helper`](https://github.com/kpassoubady/github-copilot-helper) — reusable Copilot instructions/prompts/rules/agents/skills/hooks
  - [`agent-hub`](https://github.com/kpassoubady/agent-hub) — multi-agent factory chain + loop framework for Claude Code / GitHub Copilot workflows

Note: As in the 1-day course, the emphasis is on Copilot workflows, not framework details — participants are expected to already be comfortable with their track's basics.

---

## ⏰ Session 1 (Day 1, 4 Hours) — Context Mastery, Backend Deep Dive & `github-copilot-helper`

*Delivered once for the morning cohort and once (repeated) for the afternoon cohort.*

### 1. Welcome & Intermediate Baseline Check (10 min)
- Quick pulse-check: current Copilot habits across the room
- Course arc preview: what's different from basic completion, and what's coming on Day 2

### 2. Advanced Copilot Interface & Productivity Recap (20 min)
- Custom instructions (`.github/copilot-instructions.md`), personal vs. repo-level scoping
- Ask / Edit / Agent modes — choosing the right mode for the task
- Settings sync and model picker for different task types

### Kahoot 1 (10 min)

### Bio Break (10 min)

### 3. Breakout 1 – Part A: Backend Modeling with Copilot (30 min)
- Generate entities (Expense, Category) with intermediate constraints/validation via completion
- Repository layer with custom queries via chat guidance
- **Student Showcase**: 2–3 minutes for a selected student demo

### Bio Break (10 min)

### 4. Copilot Chat & Context Mastery (Intermediate) (30 min)
- Hash context deep dive: `#file`, `#selection`, `#codebase`, `#editor`, `#sym`
- Multi-context combination strategies and progressive context-building
- Scoping custom instructions per repo vs. personal preference

### 5. Breakout 1 – Part B: Backend Modeling with Copilot (30 min)
- Service layer business logic using `/generate`
- Unit test generation with `/tests`
- **Student Showcase**: selected student demonstrates a chat-command workflow

### 6. Showcase: [`github-copilot-helper`](https://github.com/kpassoubady/github-copilot-helper) — Reusable Instructions, Prompts, Agents & Skills (40 min)
- Repo walkthrough: `instructions/`, `prompts/`, `rules/`, `agents/`, `skills/`, `hooks/`, `templates/`
- Live demo: global install (`install.sh -g`) vs. project install, module selection (`-m`)
- Applying a rule and a custom agent live against the Task Manager project
- Discussion: adapting the repo's conventions to your own team's standards

### Kahoot 2 (10 min)

### Bio Break (10 min)

### 7. Efficiency & Governance for Teams (20 min)
- Org-wide custom instructions and content exclusions
- Ethical use, limitations, and security best practices refresher

### 8. Day 1 Wrap-up & Day 2 Preview (10 min)
- Recap of context strategies and the `github-copilot-helper` install pattern
- What's coming: agents, tool sets/MCP, and the `agent-hub` multi-agent workflow

**Session 1 Deliverable**: Backend layer (entities, repositories, services, unit tests) extended with intermediate-level validation and custom queries; `github-copilot-helper` installed and applied to a personal or project repo.

---

## ⏰ Session 2 (Day 2, 4 Hours) — Web Layer, Agents/MCP & `agent-hub`

*Delivered once for the morning cohort and once (repeated) for the afternoon cohort — continuation of Session 1 for the same cohort.*

### 1. Day 2 Kickoff & Day 1 Recap (10 min)
- Quick recap of hash context and the `github-copilot-helper` showcase
- Session 2 objectives: agents, tool sets/MCP, and multi-agent workflows

### 2. Advanced Chat Features: Terminal Context & Multi-File Editing (20 min)
- `#terminalSelection` and `#terminalLastCommand` for build-error analysis and debugging
- Multi-file editing sessions and cross-file consistency patterns
- Custom chat modes for project-specific patterns

### Kahoot 1 (10 min)

### Bio Break (10 min)

### 3. Breakout 2 – Part A: Web Layer & APIs (30 min)
- Generate REST controllers using `#codebase` for consistency
- Error handling with `#file` references to existing patterns
- **Student Showcase**: advanced context usage demonstration

### Bio Break (10 min)

### 4. Copilot Agents, Tool Sets & MCP Integrations (30 min)
- Built-in participants: `@workspace`, `@github`, `@terminal`
- Tool sets and MCP server integrations — extending Copilot with external tools
- When agent mode earns its cost vs. edit mode

### 5. Breakout 2 – Part B: Web Layer & APIs (30 min)
- Thymeleaf/Jinja2/Razor templates with Bootstrap styling consistency; optional AJAX
- API testing workflow with context-aware assistance
- **Student Showcase**: complete web layer demo with context mastery

### 6. Showcase: [`agent-hub`](https://github.com/kpassoubady/agent-hub) — Multi-Agent Factory Chain & Loop Framework (40 min)
- The 7-agent factory chain: researcher → story-writer → spec-writer → backend-builder → frontend-builder → test-verifier → validator
- The 3 human checkpoints (story approval, brief approval, PR review) and why they exist
- Loop-engine skill (DISCOVER → PLAN → EXECUTE → VERIFY → ITERATE) and its 3 operating modes (autonomous / checkpointed / hybrid)
- Live demo: running the `feature-factory` skill end-to-end on a small feature

### Kahoot 2 (10 min)

### Bio Break (10 min)

### 7. Troubleshooting, Rollback & Enterprise Governance (20 min)
- Reading Copilot logs for diagnosing issues
- Restore points and rollback strategies; safe disable/re-enable patterns
- Security/ethics considerations specific to agentic and multi-agent workflows

### 8. Course Wrap-up: Your Personal/Team Copilot Workflow Blueprint (10 min)
- Consolidating Session 1 + 2 into a personal workflow blueprint
- Where `github-copilot-helper` and `agent-hub` patterns fit into day-to-day work

**Session 2 Deliverable**: Complete web layer (REST endpoints, templates) built with intermediate context strategies; working understanding of `agent-hub`'s multi-agent factory chain as a pattern for scaling AI-assisted delivery.

---

## 🕒 Session Breakdown Table

### Session 1 — Day 1 (4 hours / 240 min)

| Topic | Duration |
|---|---|
| Welcome & Intermediate Baseline Check | 10 min |
| Advanced Copilot Interface & Productivity Recap | 20 min |
| Kahoot 1 | 10 min |
| Bio Break | 10 min |
| Breakout 1 – Part A: Backend Modeling | 30 min |
| Bio Break | 10 min |
| Copilot Chat & Context Mastery (Intermediate) | 30 min |
| Breakout 1 – Part B: Backend Modeling | 30 min |
| Showcase: [`github-copilot-helper`](https://github.com/kpassoubady/github-copilot-helper) | 40 min |
| Kahoot 2 | 10 min |
| Bio Break | 10 min |
| Efficiency & Governance for Teams | 20 min |
| Day 1 Wrap-up & Day 2 Preview | 10 min |
| **Total** | **240 min** |

### Session 2 — Day 2 (4 hours / 240 min)

| Topic | Duration |
|---|---|
| Day 2 Kickoff & Day 1 Recap | 10 min |
| Advanced Chat Features: Terminal Context & Multi-File Editing | 20 min |
| Kahoot 1 | 10 min |
| Bio Break | 10 min |
| Breakout 2 – Part A: Web Layer & APIs | 30 min |
| Bio Break | 10 min |
| Copilot Agents, Tool Sets & MCP Integrations | 30 min |
| Breakout 2 – Part B: Web Layer & APIs | 30 min |
| Showcase: [`agent-hub`](https://github.com/kpassoubady/agent-hub) | 40 min |
| Kahoot 2 | 10 min |
| Bio Break | 10 min |
| Troubleshooting, Rollback & Enterprise Governance | 20 min |
| Course Wrap-up: Workflow Blueprint | 10 min |
| **Total** | **240 min** |

**Combined Total Duration:** 8 hours (480 minutes) across 2 sessions / 2 days, run twice per day for 2 cohorts.

---

## ✅ Deliverables (End of Course)

- Backend layer extended with intermediate validation, custom queries, and generated unit tests
- Complete web layer: REST endpoints, templates, and AJAX where applicable
- `github-copilot-helper` installed and adapted to a personal or team repo
- Working familiarity with `agent-hub`'s factory chain and loop framework as a multi-agent delivery pattern
- A personal/team Copilot workflow blueprint combining context strategy, custom instructions, and reusable tooling

---

## 🔧 Copilot Workflow Highlights (Practiced Throughout)

- Hash context strategy: `#file`, `#selection`, `#codebase`, `#editor`, `#sym`, `#terminalSelection`, `#terminalLastCommand`
- Slash commands: `/explain`, `/generate`, `/fix`, `/optimize`, `/tests`
- `@workspace`, `@github`, `@terminal` participants; tool sets and MCP integrations
- Custom instructions scoping (personal, repo, org) and reusable instruction/prompt/agent repos
- Multi-agent orchestration patterns (factory chain + checkpoints, loop framework)

---

## Teaching Philosophy

- Assume Copilot fluency; spend time on judgment (when to use which mode/context/agent), not basics
- Two identical single-pass sessions per day (AM/PM cohorts) keep instructor prep low while covering two full cohorts
- Live showcases of real, reusable tooling repos ([`github-copilot-helper`](https://github.com/kpassoubady/github-copilot-helper), [`agent-hub`](https://github.com/kpassoubady/agent-hub)) over slideware
- Continue the same Task Manager codebase from the 1-day course so context-building compounds
