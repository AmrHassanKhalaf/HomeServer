from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def home():
    return {
        "service": "AI Service",
        "status": "Running",
        "server": "HomeServer"
    }
