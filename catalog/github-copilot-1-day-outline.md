# GitHub Copilot with Personal Expense Tracker

**Duration:** 1 day, 8 hours, including breaks and lunch

**Focus:** Hands-on GitHub Copilot practice through a Personal Expense Tracker application

**Audience:** Working professionals using Java, Python, .NET, or Python for data analysis

**Tracks:** Java with Spring Boot, Python with FastAPI, .NET with ASP.NET Core, or Python data analysis with Pandas. All tracks follow the same course sequence.

**Prerequisites:**

- Basic understanding of programming concepts and syntax in at least one programming language
- Experience using Git and GitHub for version control
- Familiarity with Visual Studio Code or another supported IDE
- An IDE with GitHub Copilot enabled
- Tooling for one selected track:
  - Java: JDK 21 and Maven
  - Python: Python 3.11 or later, with Python 3.12 recommended
  - .NET: .NET 10 SDK and Entity Framework Core 10 tools
  - Python data analysis: Python 3.9 or later and Jupyter Notebook

## Course Overview

This course introduces generative AI and the developer tools ecosystem before moving into GitHub Copilot setup, code completion, chat, context management, and project customization. Learners practice each workflow through self-contained labs based on a Personal Expense Tracker or a parallel data analysis pipeline. The day concludes with troubleshooting, documentation, responsible use, and a personal workflow plan.

## Main Topics Covered

- Generative AI concepts, natural language generation, and appropriate uses of AI assistance
- GitHub Copilot setup, interface navigation, shortcuts, and context-aware suggestions
- AI-assisted data modeling, repository design, business logic, and code explanation
- Copilot Chat context variables and progressive context-building strategies
- REST API, web interface, and data analysis workflow generation
- Custom instructions, integrations, responsible use, security, troubleshooting, and recovery
- Documentation generation and personal workflow planning

## Learning Outcomes

By the end of the course, learners will be able to:

- Gain hands-on experience using GitHub Copilot for AI-assisted coding
- Improve coding efficiency by leveraging Copilot's AI capabilities for code completion, documentation, and error handling
- Enhance team collaboration by integrating Copilot into GitHub-based workflows
- Customize Copilot’s behavior and settings to align with personal or team coding styles

## Project Context and Tools

Learners select one of four parallel tracks. The Java track uses Spring Boot and H2, the Python track uses FastAPI and SQLite, the .NET track uses ASP.NET Core and SQLite, and the Python data analysis track uses Pandas, Matplotlib, and Seaborn. Web tracks use server-rendered templates with Bootstrap. Learners work in a supported IDE with GitHub Copilot and use REST Client or Jupyter Notebook where appropriate. Each lab begins from a prepared checkpoint so that it can be completed without artifacts from an earlier lab.

Install the prerequisites for the selected track before class by following the [installation instructions](../install.md).

## Day 1: GitHub Copilot Foundations and Applied Workflows

### 1. Generative AI and Tools Ecosystem: Concept and Demo

- Define generative AI and natural language generation in a software development context.
- Compare GitHub Copilot and Cursor as developer tools.
- Compare Microsoft Copilot and ChatGPT as productivity tools.
- Demonstrate when AI assistance is useful and when direct development remains preferable.

### Lab 1.1: Select the Appropriate AI Tool

**Task:** Evaluate short development and productivity scenarios and choose an appropriate AI-assisted or traditional workflow.

**Starting point:** A provided scenario sheet covering code generation, documentation, research, debugging, and sensitive-data handling.

**Activity:**

- Identify the goal and available context in each scenario.
- Select a tool or a traditional development approach.
- Record one benefit, one limitation, and one validation step for each choice.

**Outcome:** A completed decision sheet that explains when and how to use AI assistance responsibly.

### 2. Copilot Setup and Interface Mastery: Concept and Demo

- Validate the GitHub Copilot extension and account status in a supported IDE.
- Configure settings that influence suggestions and language behavior.
- Demonstrate keyboard shortcuts, suggestion acceptance patterns, and partial acceptance.
- Examine how open files, nearby code, and comments affect completion quality.

### Lab 2.1: Configure and Test Context-Aware Completion

**Task:** Configure Copilot and compare suggestions produced with weak and strong context.

**Starting point:** A standalone source file containing a small incomplete function and a matching requirements note.

**Activity:**

- Confirm that Copilot is active and review the relevant IDE settings.
- Request a completion before adding contextual names and requirements.
- Improve the surrounding context and request another completion.
- Compare the suggestions for correctness, clarity, and maintainability.

**Outcome:** A configured Copilot environment and a short comparison of two context-aware suggestions.

### 3. Backend Modeling with Copilot: Concept and Demo

- Demonstrate prompting patterns for generating domain models and database structures.
- Generate repository or data-access code while preserving framework conventions.
- Use chat guidance to create business logic and explain generated code.
- Review AI-generated code for validation, error handling, and maintainability.

### Lab 3.1: Build a Data and Service Layer

**Task:** Use Copilot to implement the core data and business-logic layer for the selected track.

**Starting point:** A prepared track-specific project with dependencies, configuration, and test scaffolding already in place.

**Activity:**

- Web tracks: generate Expense and Category models, repositories, and a service layer.
- Data analysis track: define the expense dataset schema, load the provided data, and create reusable transformation functions.
- Prompt Copilot to explain one generated component and identify assumptions.
- Run the provided checks and correct any failures with targeted prompts.

**Outcome:** A tested data and service layer, or a tested data transformation layer, that follows the selected track's conventions.

### 4. Copilot Chat and Context Mastery: Concept and Demo

- Demonstrate `#file`, `#selection`, `#codebase`, `#editor`, and `#sym` context variables.
- Build context progressively instead of sending unrelated files in one prompt.
- Use workspace-level context to ask architecture and consistency questions.
- Evaluate responses for unsupported assumptions and missing evidence.

### Lab 4.1: Repair Code with Targeted Context

**Task:** Diagnose and correct a defect by supplying only the context Copilot needs.

**Starting point:** A standalone code sample containing a defect, a failing test, and unrelated files that should not be included.

**Activity:**

- Begin with the failing test and the smallest relevant selection.
- Add file, symbol, or codebase context only when the response requires it.
- Ask Copilot to explain the root cause before proposing a correction.
- Apply the correction and rerun the test.

**Outcome:** A passing test and a prompt sequence that demonstrates progressive context building.

### 5. Web Layer, APIs, and Analysis Workflows: Concept and Demo

- Generate REST endpoints or analysis functions that match existing project conventions.
- Demonstrate server-rendered templates with Bootstrap for web tracks.
- Demonstrate summaries and visualizations for the data analysis track.
- Use REST Client or notebook checks to validate generated behavior.

### Lab 5.1: Create and Validate a User-Facing Workflow

**Task:** Implement one complete user-facing workflow for the selected track.

**Starting point:** A prepared checkpoint that includes the required data and service interfaces, allowing this lab to run independently.

**Activity:**

- Web tracks: generate an expense endpoint, input validation, and a minimal template for displaying or creating expenses.
- Data analysis track: generate an expense summary and one labeled visualization from the provided dataset.
- Use project context to keep names, types, and conventions consistent.
- Validate the result with the provided API request, test, or notebook check.

**Outcome:** A validated endpoint and minimal interface, or a validated analysis and visualization, for one expense workflow.

### 6. Efficient, Responsible, and Recoverable Copilot Use: Concept and Demo

- Create custom instructions that align Copilot with project conventions.
- Review language preferences, extensions, plugins, and workflow integrations.
- Discuss limitations, ethical use, privacy, security, and review responsibilities.
- Read Copilot logs and identify common causes of suggestion or chat failures.
- Demonstrate restore points, rollback strategies, temporary disablement, and safe re-enablement.
- Review optional agent, participant, tool-set, refactoring, optimization, and auto-commit workflows.

### Lab 6.1: Customize and Troubleshoot a Copilot Workflow

**Task:** Define project guidance and diagnose a simulated Copilot workflow problem.

**Starting point:** A small independent project, a project-conventions sheet, and a supplied troubleshooting scenario.

**Activity:**

- Write concise custom instructions for naming, testing, and secure coding.
- Generate a small change and assess whether the result follows the instructions.
- Inspect the supplied symptoms and log excerpt to identify the likely cause.
- Select a recovery action and document how to verify a safe return to normal use.

**Outcome:** A reusable custom-instructions draft and a verified troubleshooting decision record.

### 7. Documentation and Personal Workflow: Concept and Demo

- Generate inline documentation, function explanations, summaries, and usage guidance from code context.
- Review generated documentation for accuracy and unsupported claims.
- Demonstrate a repeatable workflow that moves from intent to context, generation, validation, and revision.
- Connect Copilot use to GitHub collaboration and code review practices.

### Lab 7.1: Document Code and Design a Workflow Blueprint

**Task:** Produce accurate documentation and define a personal Copilot workflow.

**Starting point:** A standalone completed code sample and a workflow template.

**Activity:**

- Generate documentation using the code sample as explicit context.
- Verify every generated claim against the implementation.
- Define checkpoints for prompting, context selection, testing, review, and GitHub collaboration.
- Record one security safeguard and one recovery step in the workflow.

**Outcome:** Reviewed code documentation and a personal Copilot workflow blueprint ready for use after the course.

## Session Breakdown

| Topic | Duration |
|---|---:|
| 1. Generative AI and Tools Ecosystem: Concept and Demo | 15 mins |
| Lab 1.1: Select the Appropriate AI Tool | 10 mins |
| 2. Copilot Setup and Interface Mastery: Concept and Demo | 20 mins |
| Lab 2.1: Configure and Test Context-Aware Completion | 20 mins |
| Kahoot 1 | 10 mins |
| Morning Break | 15 mins |
| 3. Backend Modeling with Copilot: Concept and Demo | 25 mins |
| Lab 3.1: Build a Data and Service Layer | 55 mins |
| Lunch | 60 mins |
| 4. Copilot Chat and Context Mastery: Concept and Demo | 20 mins |
| Lab 4.1: Repair Code with Targeted Context | 20 mins |
| 5. Web Layer, APIs, and Analysis Workflows: Concept and Demo | 25 mins |
| Lab 5.1: Create and Validate a User-Facing Workflow | 55 mins |
| Afternoon Break | 15 mins |
| Kahoot 2 | 10 mins |
| 6. Efficient, Responsible, and Recoverable Copilot Use: Concept and Demo | 35 mins |
| Lab 6.1: Customize and Troubleshoot a Copilot Workflow | 20 mins |
| 7. Documentation and Personal Workflow: Concept and Demo | 25 mins |
| Lab 7.1: Document Code and Design a Workflow Blueprint | 25 mins |
| **Total** | **8 hours** |

## Teaching Philosophy

The course uses AI-first, context-aware practice. Framework details remain secondary. Learners evaluate generated work before accepting it, and each lab produces a reusable result for professional development workflows.
