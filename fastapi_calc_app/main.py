from fastapi import FastAPI
import sys
import os

sys.path.append(os.path.dirname(os.path.abspath(__file__)))


app = FastAPI()

@app.get("/add")
def add(a: int, b: int):
    return {"operation": "addition", "result": a + b}

@app.get("/multiply")
def multiply(a: int, b: int):
    return {"operation": "multiplication", "result": a * b}

@app.get("/minus")
def multiply(a: int, b: int):
    return {"operation": "multiplication", "result": a - b}