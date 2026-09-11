# Sheldon AI Assistant

> A local-first, human-in-the-loop AI assistant evolving from the original Alfred prototype.

Sheldon is a personal AI systems project focused on building a practical assistant that can preserve useful context, track commitments, connect information across tools, recommend next actions, and eventually assist with technical engineering workflows such as Symetrix Composer and Q-SYS Designer.

This repository began as **Alfred (V1)** — a locally hosted Ollama + Telegram AI experiment running on a dedicated iMac. That working prototype proved the core concept. **Sheldon (V2)** is the next stage: more capable, more structured, more useful, and designed around trust, permissions, memory, and modular integrations.

## Project Goals

Sheldon is being built to reduce mental load rather than simply provide another chatbot interface.

Key goals include:

- Durable, inspectable memory
- Context-aware morning scans and rescans
- Commitment and follow-up tracking
- Cross-source information gathering and deduplication
- Human approval before external actions
- Local handling of sensitive data where practical
- Modular connectors for email, calendar, tasks, messaging, and other systems
- Specialist technical agents for AVL and DSP workflows
- Clear auditability and permission boundaries

## Evolution: Alfred → Sheldon

### V1 — Alfred

The original Alfred prototype established a working local AI stack:

```text
Telegram
   ↓
Python bot.py
   ↓
Ollama
   ↓
Local host (Tron)
```

It demonstrated:

- Local LLM inference
- Remote interaction through Telegram
- Python-based message handling
- Startup / shutdown automation
- Model warm-up and latency testing
- Practical experimentation with always-available local AI

### V2 — Sheldon

Sheldon expands that prototype into a modular assistant architecture:

```text
Interfaces
Telegram / Web / Voice
        ↓
Sheldon Orchestrator
Intent • Routing • Permissions
        ↓
┌──────────────┬──────────────┬─────────────────┐
│ Memory Vault │ Connectors   │ Specialist AI   │
│              │ Gmail        │ AV / DSP Design │
│              │ Calendar     │ Research        │
│              │ Asana        │ Troubleshooting │
│              │ Messaging    │ Automation      │
└──────────────┴──────────────┴─────────────────┘
        ↓
Local Models / Cloud Models / Approved Actions
```

The architecture is intentionally **hybrid**. Sensitive state, memory, device-specific integrations, and permission enforcement can remain local, while stronger cloud models can be used selectively for complex reasoning when appropriate.

## Core Design Principles

### Human in the Loop

Sheldon separates permissions into four levels:

1. **Read** — inspect available information
2. **Draft** — prepare a proposed response or change
3. **Suggest** — recommend an action
4. **Act** — change an external system only after explicit approval

The system is being designed so that access to information never automatically implies permission to act on it.

### Local First, Not Local Only

Local processing is preferred when it meaningfully improves privacy, reliability, or device access. Cloud intelligence can be used intentionally when it provides a meaningful capability advantage.

### Inspectable Memory

Long-term context should be:

- Editable
- Source-linked where possible
- Correctable
- Reversible
- Separated by context
- Able to learn relevance rules without becoming opaque

### Quiet by Design

The goal is not to surface everything. Sheldon should identify meaningful changes, unanswered requests, commitments, and important work while suppressing noise, duplicates, stale items, and information already handled.

## Phase 1 MVP

The first genuinely useful Sheldon build focuses on a small set of high-value workflows:

- Morning context summary
- On-demand `rescan`
- Commitment tracking
- Memory corrections and relevance rules
- Source-linked results
- Draft and suggestion workflows
- Strict approval before external changes

Initial integrations are expected to include Gmail, Google Calendar, Asana, and local sources where practical.

## Technical Specialist: AV / DSP Design

One planned Sheldon capability is a specialist assistant for professional AV engineering workflows.

Initial targets include:

- **Symetrix Composer**
- **Q-SYS Designer**

The progression is intentionally staged:

1. Analyze requirements and create complete signal-flow designs
2. Generate exact build instructions
3. Validate screenshots and exported project documentation
4. Build or modify offline project files where supported
5. Operate design software under supervision
6. Interact with live hardware only with explicit approval

Potential tasks include DSP block selection, signal routing, automixers, AGC, ducking, presets, control logic, naming conventions, gain structure, Dante routing, and certification exercises.

## Current Repository Structure

```text
.
├── README.md
├── docs/
│   ├── architecture.md
│   ├── automator-scripts.md
│   ├── commands.md
│   ├── restart-guide.md
│   ├── sheldon-roadmap.md
│   └── troubleshooting.md
└── scripts/
    ├── start.sh
    └── stop.sh
```

The older Alfred documentation is intentionally retained because it records the functioning V1 architecture and the project's evolution.

## Technologies

Current and planned technologies include:

- Python
- Ollama
- Local language models
- FastAPI
- Telegram Bot API
- REST APIs
- macOS automation
- Git / GitHub
- Structured local storage / memory
- Cloud AI APIs where appropriate
- Gmail / Calendar / task-system integrations
- Future computer-use and voice interfaces

## Engineering Themes Demonstrated

This project is also intended as a practical portfolio of systems work, including:

- AI system architecture
- Local model deployment
- API integration
- Python automation
- Permission and safety design
- Human-in-the-loop workflows
- Troubleshooting and observability
- Documentation
- Incremental prototyping
- Privacy-conscious architecture
- Cross-platform integration

## Status

**Active development — Sheldon V2**

The Alfred V1 prototype is complete enough to serve as a proven foundation. Current work is focused on evolving that foundation into a reliable daily-use assistant before adding greater autonomy.

## Documentation

See [`docs/sheldon-roadmap.md`](docs/sheldon-roadmap.md) for the current product direction, architecture priorities, permission model, and staged AV/DSP specialist plan.

---

### Project Philosophy

The goal is not to build the most autonomous assistant possible. The goal is to build one that is **useful enough to depend on and controlled enough to trust**.
