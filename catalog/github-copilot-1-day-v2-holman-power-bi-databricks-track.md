# GitHub Copilot for Reporting Analysts

**Duration:** 1 day, 8 hours, including quizzes, breaks, and lunch

**Primary focus:** In-depth GitHub Copilot workflows practiced through familiar Power BI, DAX, SQL, and Databricks artifacts

**Audience:** Reporting analysts who are new to GitHub Copilot and have varied Git and GitHub experience

**Delivery environment:** Windows, Visual Studio Code, GitHub Copilot, GitHub, Power BI Desktop, SQL, DAX, and approved Databricks access or prepared offline fixtures

**Instructor profile:** Advanced GitHub Copilot, Git, GitHub, and SQL experience; working familiarity with Power BI; high-level familiarity with Databricks

**Prerequisites:**

- A Windows device with Visual Studio Code, Git, GitHub Copilot, and GitHub Copilot Chat enabled
- GitHub access and the prepared learner repository cloned before class
- Power BI Desktop and approved Visual Studio Code extensions installed
- Access to an approved Databricks workspace, or the instructor-provided offline SQL and output fixtures
- Completion of the pre-class Copilot, Git, Power BI, and network or proxy readiness check
- No client-sensitive data in prompts, repositories, screenshots, or lab artifacts

## Course Overview

This course teaches GitHub Copilot in depth. Power BI, DAX, SQL, and Databricks provide realistic files, requirements, errors, and Git changes through which learners practice Copilot features. The course does not attempt to teach these analytics technologies from first principles. Short explanations establish enough context for each exercise, but the instructional emphasis remains on choosing a Copilot mode, constructing prompts, controlling context, reviewing proposed changes, validating results, and recovering safely.

The sequence moves from completion and chat to context management, multi-file editing, agent-assisted work, debugging, customization, and GitHub collaboration. Reporting-analysis artifacts keep each feature demonstration grounded in work the learners recognize.

The cohort is new to GitHub Copilot, and only a few learners meet all Git prerequisites. Every lab therefore begins from an independent prepared checkpoint, includes guided Git steps, and provides fixed evidence for validation. Features that are unavailable because of organizational policy, licensing, model restrictions, or network controls are taught through instructor demonstrations and supplied captures rather than treated as learner setup failures.

## Instructional Balance

- GitHub Copilot concepts, demonstrations, and feature practice receive the majority of instructional time.
- Power BI, DAX, SQL, and Databricks are practice contexts rather than separate technology modules.
- SQL receives the most complex technical examples because it aligns with instructor depth and offers fast, observable verification.
- DAX and text-based Power BI Project artifacts provide context, explanation, completion, and debugging exercises.
- Databricks-compatible SQL and notebook source files demonstrate repository, terminal, and agent workflows without requiring deep platform administration.
- Git and GitHub steps remain guided so that limited prerequisite knowledge does not prevent Copilot practice.

## Learning Outcomes

By the end of the course, learners will be able to:

- Distinguish inline completion, inline chat, chat, editing, and agent-assisted workflows and select an appropriate mode for a reporting task.
- Control inline suggestions through comments, naming, nearby examples, partial acceptance, and next-edit workflows available in the approved environment.
- Write effective prompts with a goal, context, constraints, expected result, and verification request.
- Select and expand file, selection, repository, terminal, error, and related context without exposing unrelated or sensitive information.
- Use GitHub Copilot to explain unfamiliar SQL, DAX, Power BI Project, and Databricks-compatible artifacts before changing them.
- Plan and review bounded single-file and multi-file changes produced through editing or agent-assisted workflows.
- Diagnose defects with exact error messages, failing checks, query output, expected values, and Git diffs.
- Generate and review tests, validation queries, documentation, commit messages, and pull-request summaries.
- Configure repository instructions, reusable prompt files, custom agents, skills, and approved tool integrations at an appropriate level.
- Review, stage, commit, merge, and resolve a controlled text conflict in Visual Studio Code.
- Apply privacy, security, governance, attribution, and human-review responsibilities throughout a Copilot workflow.

## GitHub Copilot Feature Coverage

| Feature area | Features practiced | Reporting context |
|---|---|---|
| Completion | Inline suggestions, alternatives, partial acceptance, comments as intent, and next-edit workflows where available | SQL, DAX, and notebook source |
| Chat | Inline chat, chat modes, model selection where approved, explanation, generation, and iterative refinement | Requirements, queries, measures, and error output |
| Context | Selection, file, repository, terminal, error, and progressive context expansion | Schema, semantic-model excerpts, SQL, DAX, and validation fixtures |
| Editing | Bounded edits, multi-file edits, diff review, keep or undo decisions, and scope control | SQL transformation, DAX measure, validation query, and documentation |
| Agent-assisted work | Planning, tool approval, terminal use, changed-file review, and verification | Prepared reporting repository with fixed acceptance checks |
| Terminal and CLI | Command explanation, GitHub Copilot CLI where approved, execution review, and safe command boundaries | Git status, validation commands, and Databricks-compatible project checks |
| Quality | Debugging, test generation, validation queries, explanation, code review, and documentation | Seeded reporting defects and expected-value checks |
| Customization | Repository instructions, path-specific guidance, prompt files, custom agents, skills, and approved Model Context Protocol integrations | Team SQL, DAX, data-protection, and verification conventions |
| GitHub collaboration | Diff explanation, commit messages, pull-request summaries, review support, merges, and conflict resolution | Text-based reporting artifacts |
| Responsible operation | Content exclusions, sensitive-data boundaries, feature restrictions, logs, rollback, and recovery | Synthetic fleet-reporting scenario |

## Practice Repository

Learners use a fictional fleet-reporting repository containing synthetic data and no Holman or client information. It includes:

- Short reporting requirements and a compact star-schema reference
- Databricks-compatible SQL and notebook source files
- DAX work files and text-based Power BI Project or semantic-model excerpts where supported
- Expected results, validation queries, and fixed acceptance checks
- Repository conventions for SQL, DAX, verification, and protected information
- Independent `start/` and `solution/` states for every lab
- Prepared branches for reviewing changes, creating commits, and resolving one controlled conflict

Power BI Desktop and Databricks are used to inspect or validate selected results. GitHub Copilot instruction occurs primarily in Visual Studio Code, where learners can control context and review text-based changes. Binary Power BI files are reference outputs and are not used for diff or merge exercises.

## Day 1: GitHub Copilot Features Through Reporting Workflows

### 1. Copilot Foundations, Setup, and Feature Map: Concept and Demo

- Explain how generative coding assistants use instructions, conversational context, repository context, and model inference.
- Distinguish GitHub Copilot from Microsoft Copilot, Power BI Copilot, ChatGPT, and traditional development tools.
- Map common reporting tasks to completion, chat, editing, agent-assisted, or manual workflows.
- Review the Visual Studio Code Copilot interface, approved models, feature availability, and organizational restrictions.
- Introduce the intent, context, generate, review, verify, and revise workflow used throughout the day.

### Lab 1.1: Choose the Appropriate Copilot Workflow

**Task:** Select a safe and efficient workflow for short reporting-analysis scenarios.

**Starting point:** A self-contained scenario sheet covering SQL completion, DAX explanation, multi-file changes, debugging, Git conflicts, documentation, and sensitive-data handling.

**Activity:**

- Identify the task, available evidence, risk, and data sensitivity in each scenario.
- Choose completion, chat, editing, agent-assisted work, another approved tool, or a manual approach.
- State the minimum context and human-review step required.
- Identify one scenario in which GitHub Copilot should not receive the available information.

**Outcome:** A feature-selection guide that connects reporting tasks to appropriate Copilot workflows and safeguards.

### 2. Code Completion, Next Edits, and Inline Chat: Concept and Demo

- Demonstrate how file type, names, comments, nearby examples, and open files affect inline suggestions.
- Compare full acceptance, partial acceptance, alternatives, rejection, and manual correction.
- Use next-edit suggestions where enabled and explain when prediction should remain bounded.
- Use inline chat for a localized explanation or transformation without starting a broad repository task.
- Review every accepted suggestion against the requirement and supplied verification evidence.

### Lab 2.1: Control Suggestions in SQL and DAX

**Task:** Improve, partially accept, and verify GitHub Copilot suggestions in familiar reporting files.

**Starting point:** Independent SQL and DAX files, a compact schema, business definitions, nearby examples, expected values, and fixed checks.

**Activity:**

- Request an initial completion from weak context and record its unsupported assumptions.
- Improve names, comments, examples, and nearby context before requesting another suggestion.
- Partially accept only the correct portion and reject unrelated output.
- Use inline chat to explain or refine one selected expression.
- Compare the completed artifacts with the fixed expected-result checks.

**Outcome:** Verified SQL and DAX changes plus an evidence-based comparison of weak and strong completion context.

### 3. Copilot Chat Modes, Prompt Design, and Iteration: Concept and Demo

- Structure prompts with a role or perspective only when useful, followed by the goal, evidence, constraints, expected result, and verification request.
- Compare explanation, generation, editing, and agent-oriented requests using the same reporting task.
- Demonstrate prompt iteration through clarify, generate, critique, constrain, and verify steps.
- Compare approved models for a bounded task without treating model choice as a substitute for context quality.
- Identify vague prompts, conflicting instructions, hidden assumptions, and outputs that appear plausible but lack evidence.

### Lab 3.1: Run a Controlled Prompt Experiment

**Task:** Compare prompt and chat approaches while holding the reporting requirement constant.

**Starting point:** A standalone SQL transformation, DAX business definition, schema excerpt, expected output, and prompt-comparison worksheet.

**Activity:**

- Ask for an explanation before requesting a change.
- Run a vague prompt and record assumptions or missing constraints.
- Rewrite the prompt with explicit scope, relevant context, prohibited changes, and acceptance criteria.
- Request a self-review against the supplied requirement, then independently verify the result.
- Record which prompt elements changed the quality of the response.

**Outcome:** A reusable reporting prompt pattern and a comparison showing why verification remains necessary after prompt improvement.

### 4. Context Mastery and Repository Understanding: Concept and Demo

- Distinguish selection, file, related-file, repository, terminal, error, and conversation context in the approved Visual Studio Code environment.
- Start with the smallest useful context and expand only when evidence shows it is insufficient.
- Use repository context to locate definitions, conventions, dependencies, and validation paths.
- Ask GitHub Copilot to separate observed repository facts from assumptions.
- Manage chat history by starting a focused conversation when earlier context begins to distort the task.

### Lab 4.1: Explain and Repair with Progressive Context

**Task:** Diagnose a reporting mismatch while controlling exactly what GitHub Copilot can inspect.

**Starting point:** An independent requirement, schema, semantic-model excerpt, SQL or DAX defect, failing check, error output, and unrelated distractor files.

**Activity:**

- Begin with the failing check and the smallest relevant selection.
- Ask for a fact-and-assumption analysis before requesting a correction.
- Add a file or repository reference only when the response identifies a specific information gap.
- Apply a bounded correction and inspect the changed lines.
- Rerun the fixed check and explain how the evidence confirms the result.

**Outcome:** A passing check and a recorded context sequence that demonstrates progressive expansion without unrelated data exposure.

### 5. Editing, Agent-Assisted Work, and Tool Use: Concept and Demo

- Compare localized editing, multi-file editing, and agent-assisted work by task scope and risk.
- Ask for a plan before a multi-file change and review the proposed files, assumptions, and verification steps.
- Demonstrate tool approval, terminal commands, changed-file review, and interruption of an incorrect direction.
- Use GitHub Copilot CLI where approved to explain or propose a command, then review its scope before execution.
- Keep generated changes bounded across SQL, DAX, validation, and documentation artifacts.
- Review optional GitHub-hosted coding and pull-request assistance as demonstrations when licensing and policy permit.

### Lab 5.1: Direct a Bounded Multi-File Reporting Change

**Task:** Use an editing or agent-assisted workflow to implement a small reporting requirement across prepared files.

**Starting point:** An independent repository checkpoint containing one SQL transformation, one DAX measure file, one validation query, one documentation file, and fixed acceptance checks.

**Activity:**

- Ask GitHub Copilot to inspect the requirement and propose a file-level plan without editing.
- Correct any scope, dialect, model, or verification assumptions in the plan.
- Approve a bounded implementation across only the required files.
- Review each proposed diff and reject unrelated changes.
- Run or approve the supplied verification commands and summarize the evidence.

**Outcome:** A verified multi-file change and an audit record of the plan, approvals, rejected suggestions, diffs, and checks.

### 6. Debugging, Testing, Review, and Documentation: Concept and Demo

- Use exact errors, failing checks, unexpected values, and reproducible steps instead of asking GitHub Copilot to guess.
- Ask for root-cause candidates ranked by repository evidence before requesting a fix.
- Generate validation queries and tests that distinguish correct behavior from plausible but incorrect output.
- Use GitHub Copilot to review a diff for requirement coverage, edge cases, and unintended changes.
- Generate documentation, comments, and summaries from verified code rather than from the prompt alone.

### Lab 6.1: Diagnose, Test, Fix, and Review a Reporting Defect

**Task:** Complete an evidence-driven debugging loop for a seeded SQL or DAX defect.

**Starting point:** A self-contained reporting artifact, failing expected-value check, exact error or mismatch output, relevant requirements, and a fixed regression-check harness.

**Activity:**

- Reproduce the problem and provide the exact evidence to GitHub Copilot.
- Request root-cause analysis and a minimal test or validation query before requesting a fix.
- Review whether the proposed check would fail for the seeded defect and pass for the intended behavior.
- Apply the smallest supported correction and rerun all focused checks.
- Ask for a diff review and generate a concise explanation grounded in the final verified files.

**Outcome:** A passing regression check, a minimal correction, and reviewed documentation of the cause, evidence, and verification.

### 7. Custom Instructions, Reusable Prompts, Agents, Skills, and Integrations: Concept and Demo

- Explain the precedence and scope of personal, repository, path-specific, and task-specific instructions supported by the approved environment.
- Write concise repository guidance for SQL dialect, DAX naming, validation, protected data, and prohibited changes.
- Compare reusable prompt files, custom agents, skills, and direct chat prompts by purpose and maintenance cost.
- Demonstrate an approved tool or Model Context Protocol integration without making external access a lab dependency.
- Test customization with an observable task instead of assuming GitHub Copilot followed the guidance.

### Lab 7.1: Customize Copilot for a Reporting Repository

**Task:** Create and test a small set of reusable Copilot guidance for reporting work.

**Starting point:** An independent repository, a conventions sheet, a deliberately noncompliant SQL or DAX task, an instruction template, a prompt template, and fixed style and behavior checks.

**Activity:**

- Create concise repository instructions covering SQL, DAX, validation, and protected information.
- Create one reusable prompt for explaining and reviewing a reporting change.
- Choose whether the task needs a custom agent, skill, approved integration, or no additional customization.
- Run the same bounded task before and after applying the guidance.
- Compare the results against the fixed conventions and revise the guidance once.

**Outcome:** Tested repository instructions, a reusable prompt, and a justified customization decision based on observable results.

### 8. GitHub Collaboration, Responsible Use, Recovery, and Personal Workflow: Concept and Demo

- Review working-tree and staged diffs in Visual Studio Code before creating a commit.
- Use GitHub Copilot to explain changes, draft commit messages, summarize pull requests, and support review without surrendering human judgment.
- Resolve text conflicts from requirements and verification evidence rather than accepting one side automatically.
- Apply privacy, security, governance, attribution, and content-exclusion requirements.
- Diagnose feature, extension, authentication, model, context, and network failures through status, logs, rollback, and safe re-enablement.

### Lab 8.1: Review, Commit, Merge, and Record a Safe Workflow

**Task:** Complete a guided Git and GitHub workflow for a verified reporting change.

**Starting point:** An independent local repository with prepared branches, a small verified change, one controlled text conflict, a review checklist, and a personal-workflow template.

**Activity:**

- Review the diff, stage only intended files, and use GitHub Copilot to draft a commit message that is checked against the actual changes.
- Ask GitHub Copilot to explain the conflict markers and competing intent without automatically choosing a side.
- Resolve the conflict against the supplied requirement and rerun the fixed checks.
- Draft and verify a concise pull-request summary and reviewer checklist.
- Record a personal workflow covering mode selection, prompting, context, review, verification, responsible use, and recovery.

**Outcome:** A verified commit and merge, a correctly resolved text conflict, a reviewed pull-request summary, and a reusable Copilot workflow blueprint.

## Session Breakdown

| Topic | Duration |
|---|---:|
| 1. Copilot Foundations, Setup, and Feature Map: Concept and Demo | 20 mins |
| Lab 1.1: Choose the Appropriate Copilot Workflow | 10 mins |
| 2. Code Completion, Next Edits, and Inline Chat: Concept and Demo | 25 mins |
| Lab 2.1: Control Suggestions in SQL and DAX | 25 mins |
| Kahoot 1 | 10 mins |
| Morning Break | 15 mins |
| 3. Copilot Chat Modes, Prompt Design, and Iteration: Concept and Demo | 25 mins |
| Lab 3.1: Run a Controlled Prompt Experiment | 30 mins |
| 4. Context Mastery and Repository Understanding: Concept and Demo | 20 mins |
| Lab 4.1: Explain and Repair with Progressive Context | 25 mins |
| Lunch | 60 mins |
| 5. Editing, Agent-Assisted Work, and Tool Use: Concept and Demo | 25 mins |
| Lab 5.1: Direct a Bounded Multi-File Reporting Change | 30 mins |
| 6. Debugging, Testing, Review, and Documentation: Concept and Demo | 25 mins |
| Lab 6.1: Diagnose, Test, Fix, and Review a Reporting Defect | 30 mins |
| Afternoon Break | 15 mins |
| Kahoot 2 | 10 mins |
| 7. Custom Instructions, Reusable Prompts, Agents, Skills, and Integrations: Concept and Demo | 25 mins |
| Lab 7.1: Customize Copilot for a Reporting Repository | 20 mins |
| 8. GitHub Collaboration, Responsible Use, Recovery, and Personal Workflow: Concept and Demo | 15 mins |
| Lab 8.1: Review, Commit, Merge, and Record a Safe Workflow | 20 mins |
| **Total** | **8 hours** |

## Teaching Philosophy

GitHub Copilot is the curriculum; reporting analytics is the practice environment. Learners encounter Power BI, DAX, SQL, and Databricks only when those artifacts create a useful opportunity to practice a Copilot feature. Every exercise requires learners to inspect context, constrain the request, review the output, verify the result, and retain responsibility for the final change.
