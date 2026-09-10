# GitHub Copilot: 1-Day Personal Expense Tracker

**Duration:** 1 day, 8 hours from 09:00 to 17:00, including quizzes, breaks, and lunch

**Focus:** Practical GitHub Copilot workflows applied to a Personal Expense Tracker

**Audience:** Working software professionals who understand basic programming and Git

**Primary delivery track:** .NET 10, ASP.NET Core, Entity Framework Core 10, SQLite, Razor Pages, and xUnit

**Adaptation tracks:** Java with Spring Boot, Python with FastAPI, and Python data analysis. These tracks reuse the Copilot learning objectives but require their own validated exercises and commands. They are not assumed to be equivalent to the primary .NET implementation.

**Prerequisites:**

- A supported integrated development environment with GitHub Copilot and Copilot Chat enabled
- Basic Git knowledge and experience reading application code
- .NET 10 Software Development Kit
- Entity Framework Core 10 command-line tools
- The `copilot-advanced-companion` repository cloned and both .NET learner starters restored and built

## Course Overview

This instructor-led course develops practical GitHub Copilot habits through one coherent .NET application. Learners use inline suggestions, Copilot Chat, editing, context selection, and agent-assisted workflows while extending a Personal Expense Tracker.

The course emphasizes controlled changes and observable evidence. Learners inspect the current project, bound each request, review generated changes, run focused checks, and repair failures instead of accepting large outputs without verification.

## Learning Outcomes

By the end of the course, learners will be able to:

- Select an appropriate Copilot interaction mode for a bounded development task
- Provide focused project context without exposing unrelated or sensitive information
- Review and revise generated code against explicit acceptance criteria
- Implement and verify a .NET backend vertical slice with Entity Framework Core
- Implement and verify REST and Razor Page behavior that reuses existing service contracts
- Configure project instructions and reusable Copilot customizations responsibly
- Diagnose poor suggestions using project evidence, logs, diffs, tests, and recovery tools
- Describe security, privacy, attribution, and human-review responsibilities when using generated code

## Main Topics

- Generative AI and coding-assistant fundamentals
- GitHub Copilot setup, inline suggestions, Copilot Chat, and editing workflows
- Prompt structure, context selection, and progressive context expansion
- Review-before-acceptance and focused verification
- .NET 10 and Entity Framework Core 10 development with Copilot
- REST controllers, Razor Pages, and API testing
- Repository instructions, prompt files, custom agents, skills, and tool integrations
- Security, privacy, troubleshooting, rollback, and responsible use

## Primary Project Context

The fully supported course path uses a Personal Expense Tracker with:

- ASP.NET Core on .NET 10
- Entity Framework Core 10 with SQLite
- Expense and Category domain models
- DbContext-backed services, standard .NET validation metadata, and explicit business rules
- REST controllers and Razor Pages
- Bootstrap for the web interface
- xUnit, FluentAssertions, and Entity Framework Core test providers

The checked-in completed application is reference material. Learners work in dedicated `start/` exercise states and compare with matching `solution/` states. Each exercise includes focused acceptance checks.

### Adaptation Policy

Java, Python, and data-analysis variants may reuse the same Copilot concepts, activity rhythm, and assessment approach. Each adaptation requires facilitator approval and must provide stack-specific starter files, solutions, tests, commands, and timing evidence before it is advertised or delivered as a supported track. These adaptations are not equal default tracks and are not assumed to be implementation-equivalent to the primary .NET path.

## Setup

Complete the [GitHub Copilot 1-Day Welcome and Setup](../Welcome-1Day.md) before class:

- Complete the general Visual Studio Code and GitHub Copilot setup for your operating system
- Verify `dotnet --version` reports .NET 10
- Verify `dotnet ef --version` reports Entity Framework Core tools 10
- Clone the [`copilot-advanced-companion`](https://github.com/kpassoubady/copilot-advanced-companion) repository
- Restore and build both provided 1-day learner starters without running their intentionally incomplete acceptance tests
- Confirm that GitHub Copilot inline suggestions and Copilot Chat work in Visual Studio Code

The companion [1-day exercise index](https://github.com/kpassoubady/copilot-advanced-companion/blob/main/1-day/Exercises-1-day.md) maps the schedule to the verified .NET 10 exercises.

## Detailed 8-Hour Schedule

### 1. Welcome, Generative AI, and Copilot Foundations, 09:00-09:45 (45 min)

- Prerequisites and learner introductions
- Generative AI and coding-assistant mental models
- Appropriate uses, limitations, and review responsibility
- GitHub Copilot compared with adjacent developer tools

### 2. Copilot Setup, Interface, and Completion Workflow, 09:45-10:15 (30 min)

- Validate GitHub Copilot access and project setup
- Use inline suggestions, partial acceptance, Copilot Chat, and editing modes
- Apply the intent, pause, review, verify feedback loop
- Protect excluded and sensitive files

### Kahoot 1, 10:15-10:30 (15 min)

Covers Sections 1 and 2 only.

### Morning Break, 10:30-10:45 (15 min)

### 3. Breakout 1: Backend Modeling and Business Rules, 10:45-12:15 (90 min)

- Instructor demo: generate or extend one .NET model or validator, then compile and test it
- Implement bounded TODOs in Expense and Category model behavior
- Add one category query and one date-range query through the established DbContext-backed service architecture
- Enforce positive-amount and valid-category rules
- Interpret fixed xUnit tests, review generated implementation, and repair from exact failures
- Compare evidence with a partner and share one accepted or rejected Copilot suggestion

**Basic completion:** Model constraints, valid and rejected creation paths, ordered categories, and their focused tests pass.

**Stretch:** Monthly totals grouped by category or soft-delete filtering.

### Lunch Break, 12:15-13:00 (45 min)

### 4. Copilot Chat and Context Mastery, 13:00-13:45 (45 min)

- Distinguish active-file, selection, file, codebase, terminal, and workspace context
- Start with the smallest useful context and expand when evidence shows it is insufficient
- Instructor demo: hold one C# task constant and compare outputs from controlled context sets
- Review assumptions, changed files, and verification evidence

### 5. Breakout 2: REST API and Razor Vertical Slice, 13:45-15:15 (90 min)

- Generate a thin Expense controller that reuses the existing service contract
- Implement and verify GET, POST, and not-found behavior
- Use ASP.NET Core validation behavior consistently, including 400 responses for invalid requests
- Implement Expense list and create Razor Page flows
- Run focused API and Razor checks and inspect persisted state
- Conduct a short peer review and evidence-based share-out

**Basic completion:** GET, POST, not-found, Expense list, and Expense create flows pass focused checks.

**Stretch:** Update/delete flows, Category management, dashboard charts, or global exception middleware.

### Afternoon Break, 15:15-15:30 (15 min)

### Kahoot 2, 15:30-15:45 (15 min)

Covers Sections 3 through 5 only.

### 6. Efficient and Advanced Copilot Workflows, 15:45-16:30 (45 min)

- Create and scope repository instructions
- Compare reusable prompt files, custom agents, skills, and tool integrations
- Review multi-file changes and generated tests
- Apply security, privacy, attribution, and governance boundaries

### 7. Troubleshooting and Recovery, 16:30-16:45 (15 min)

- Diagnose poor suggestions using diffs, tests, logs, and focused context
- Recover from an incorrect multi-file change
- Use Git and IDE recovery features without discarding unrelated work

### 8. Wrap-up and Personal Workflow, 16:45-17:00 (15 min)

- Record a repeatable prompt, context, review, test, and repair workflow
- Identify one workplace task for safe application after class
- Confirm course deliverables and follow-up resources

## End-of-Day Deliverables

- A passing backend exercise with bounded model, query, and business-rule changes
- Passing focused tests that distinguish the learner starter from the solution
- A working Expense API and Razor vertical slice
- At least one recorded example of a Copilot suggestion that the learner revised or rejected
- A personal workflow for prompting, context selection, review, verification, and recovery

## Copilot Workflow Practiced Throughout

1. Inspect the existing project and identify the smallest relevant context.
2. State the target files, constraints, acceptance criteria, and prohibited changes.
3. Ask Copilot for a bounded change or explanation.
4. Review the proposed diff before accepting it.
5. Run a focused build, test, request, or browser check.
6. Feed exact failure evidence back into the repair request.
7. Explain why the final behavior satisfies the acceptance criteria.

## Teaching Philosophy

- Learn by changing and verifying real technical artifacts
- Treat generated code as a proposal that requires review
- Prefer one coherent vertical slice over broad scaffolding
- Preserve learner judgment through bounded prompts and evidence-based correction
- Provide minimum, standard, and stretch paths for mixed-experience cohorts

## Session Breakdown

| Time | Session | Duration |
| :--- | :--- | ---: |
| 09:00-09:45 | Welcome, Generative AI, and Copilot Foundations | 45 min |
| 09:45-10:15 | Copilot Setup, Interface, and Completion Workflow | 30 min |
| 10:15-10:30 | Kahoot 1 | 15 min |
| 10:30-10:45 | Morning Break | 15 min |
| 10:45-12:15 | Breakout 1: Backend Modeling and Business Rules | 90 min |
| 12:15-13:00 | Lunch Break | 45 min |
| 13:00-13:45 | Copilot Chat and Context Mastery | 45 min |
| 13:45-15:15 | Breakout 2: REST API and Razor Vertical Slice | 90 min |
| 15:15-15:30 | Afternoon Break | 15 min |
| 15:30-15:45 | Kahoot 2 | 15 min |
| 15:45-16:30 | Efficient and Advanced Copilot Workflows | 45 min |
| 16:30-16:45 | Troubleshooting and Recovery | 15 min |
| 16:45-17:00 | Wrap-up and Personal Workflow | 15 min |

**Total duration:** 480 minutes
