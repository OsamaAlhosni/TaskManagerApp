---
name: TaskManagerApp
version: 1.0.0
author: OsamaAlhosni
license: MIT
metadata:
  hermes:
    tags: [project, task-manager, agile]
    related_skills: [architect-dashboard-flow]
---
# TaskManagerApp Plan

## Project Goal
Create a simple Task Management application.

## API Contract (schema.json)
- `GET /api/tasks/`: Return list of tasks `{id, title, status}`.
- `POST /api/tasks/`: Create a new task `{title}`.
- `DELETE /api/tasks/{id}`: Delete a task.

## Implementation Steps
- [ ] Initialize repo (Done)
- [ ] Implement Backend (FastAPI)
- [ ] Implement Frontend (Tailwind UI)
- [ ] Verify Discord notification
