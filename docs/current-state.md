# Current State

## Project Transition

This repository contains two generations of the same assistant project:

- **Alfred V1** — the working local prototype built around Telegram, Python, and Ollama.
- **Sheldon V2** — the active redesign focused on reliable daily assistance, memory, source integration, commitments, permissions, and specialist technical workflows.

## What Is Confirmed

The repository preserves the known Alfred V1 operational model and its startup/shutdown scripts.

The Sheldon V2 architecture, roadmap, permission model, and intended capabilities are documented, but the live runtime has not yet been fully reconciled with the repository.

## Live Runtime Audit Pending

The dedicated host machine (Tron) must be inspected before the runtime scripts or deployment documentation are rewritten for Sheldon.

The audit should confirm:

- Current folder structure and source files
- Active Python environment(s)
- Ollama installation and models
- Telegram bot configuration
- FastAPI or other services currently present
- Startup/launch mechanisms
- Local ports and process names
- Logging locations
- Any credentials or environment-variable dependencies
- Any Alfred components worth preserving directly

Until that audit is complete, `scripts/start.sh` and `scripts/stop.sh` are intentionally labeled as **Alfred V1 legacy runtime scripts** rather than being presented as Sheldon V2 launchers.

## Next Engineering Milestone

After the Tron audit:

1. Reconcile the live runtime with GitHub.
2. Define the Sheldon application/package structure.
3. Build the orchestrator and permission layer.
4. Establish the Memory Vault and audit trail.
5. Add the first read-only connector workflow.
6. Implement morning scan / rescan.
7. Add commitment tracking and correction rules.
8. Begin the supervised AV/DSP specialist workflow for Symetrix and Q-SYS.

## Portfolio Note

The Alfred-to-Sheldon transition is intentionally visible. The project demonstrates iterative systems development: a working proof of concept being evaluated, documented, and evolved into a more modular and trustworthy architecture rather than being discarded and restarted without continuity.
