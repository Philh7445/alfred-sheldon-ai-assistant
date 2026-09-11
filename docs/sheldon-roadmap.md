# Sheldon Roadmap

## Purpose
Sheldon is the next evolution of Alfred: a trusted personal AI assistant designed to reduce mental load, preserve useful context, notice commitments, and help Phil choose the next useful action.

Alfred remains the working local-AI foundation. Sheldon adds memory, source awareness, approval boundaries, workflow intelligence, and specialist capabilities on top of that foundation.

## Current Foundation
- Host: Tron
- Local model runtime: Ollama
- Interface: Telegram
- Control layer: Python / bot.py
- Existing start/stop automation and local operation

## Phase 1 MVP — Make Sheldon Useful Daily
The first usable version should focus on workflows already proven valuable:

1. **Morning context + rescan**
   - Review supported sources for meaningful changes
   - Surface unanswered requests, commitments, due work, and important changes
   - Suppress chatter, duplicates, newsletters, reactions, stale todos, and unchanged items already reported that day

2. **Memory Vault**
   - Store durable, inspectable, editable context
   - Keep source links where practical
   - Record corrections and relevance rules
   - Separate church and personal context

3. **Commitment tracking**
   - Detect promises, follow-ups, deadlines, and unresolved requests
   - Resurface them at the right time
   - Support states such as seen, not yet, resolved, snoozed, watched, or ignored for today

4. **Safe action suggestions**
   - Read and analyze automatically where permitted
   - Draft and recommend actions
   - Require explicit approval before sending messages, creating events/tasks, or changing external systems

5. **Source connectors**
   - Gmail
   - Google Calendar
   - Asana
   - Bee transcripts/summaries/todos where accessible
   - Apple Messages/iMessage where a signed-in Mac can safely provide access
   - Planning Center later if useful for staffing awareness

## Recommended Architecture — Hybrid
Use a hybrid design rather than forcing everything local or cloud-only.

### Local responsibilities
- Memory Vault
- Sensitive source handling where practical
- iMessage / Bee access when tied to a signed-in Mac
- Local automation and device control
- Audit log and permission enforcement

### Cloud / stronger-model responsibilities
- Complex reasoning
- Summarization across many sources
- Research
- Specialist generation tasks
- Optional fallback when local models are not capable enough

### Core layers

```text
Interfaces
  Telegram / Web / Voice
        ↓
Sheldon Orchestrator
  intent + permissions + routing
        ↓
Memory + Source Connectors + Specialist Agents
        ↓
Local Models / Cloud Models / Approved Actions
```

## Permission Model
Every capability should be classified as one of four levels:

- **Read** — inspect data
- **Draft** — prepare content or proposed changes
- **Suggest** — recommend an action
- **Act** — change an external system only after explicit approval

No connector should silently graduate from read/draft/suggest to act.

## Specialist Agent: AV Design Assistant
A major future Sheldon capability is a specialist engineering agent for systems such as Symetrix Composer and Q-SYS Designer.

### Initial scope
- Read a project brief or certification assignment
- Build a signal-flow plan
- Select required processing blocks/components
- Specify routing, naming, gains, control logic, presets, and user controls
- Validate the design against the assignment or system requirements
- Produce a step-by-step build plan
- Review screenshots or exported documentation for errors

### Safer progression
1. **Design Advisor** — Sheldon tells Phil exactly what to build
2. **Offline File Builder** — generate or modify project artifacts when file formats/APIs are understood
3. **Desktop Operator** — control Composer/Q-SYS Designer offline through a supervised computer-use layer
4. **Hardware-aware Assistant** — inspect real systems but never deploy/send-to-hardware without explicit approval

### Hard boundary
Sheldon must never connect, deploy, send a configuration, overwrite programming, or alter live DSP/network hardware without Phil explicitly approving that exact action.

## Build Priorities

### Now
- Preserve Alfred as the known-working base
- Add Sheldon architecture and requirements documentation
- Establish Memory Vault format
- Create orchestrator and permission model
- Add one useful read-only source workflow

### Next
- Morning scan / rescan
- Commitment database
- Corrections and relevance rules
- Source-linked audit trail
- Draft/suggest workflows

### After MVP is reliable
- Voice interface
- Full-screen status display
- Computer-use capability
- Symetrix / Q-SYS specialist agent
- Planning Center and other church integrations

## Definition of “Usable Sheldon”
Sheldon is ready for daily use when Phil can ask one interface:

- “What do I need to know this morning?”
- “Rescan.”
- “What am I forgetting?”
- “What commitments are still open?”
- “Draft a response to this.”
- “Help me build this Symetrix/Q-SYS design.”

…and receive concise, source-grounded answers while retaining complete control over anything that changes an external system.
