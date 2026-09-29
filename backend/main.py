from fastapi import FastAPI
from pydantic import BaseModel
from typing import List

app = FastAPI()

class Task(BaseModel):
    id: int
    title: str
    status: str

tasks = [{"id": 1, "title": "Setup Project", "status": "Done"}, {"id": 2, "title": "Build Backend", "status": "Pending"}]

@app.get("/api/tasks/", response_model=List[Task])
def get_tasks():
    return tasks

@app.post("/api/tasks/")
def add_task(title: str):
    new_id = len(tasks) + 1
    tasks.append({"id": new_id, "title": title, "status": "Pending"})
    return {"id": new_id}
