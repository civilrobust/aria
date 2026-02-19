# ARIA Radiology Workbench
### King's College Hospital NHS Foundation Trust — Clinical AI Programme

> **ARIA** — Advanced Radiology Intelligence Assistant

---

## Quick Start

1. Edit `start.bat` — replace `YOUR_KEY_HERE` with your OpenAI API key
2. Double-click `start.bat`
3. Browser opens at `http://localhost:3000`
4. Login: `david` / `kings2024`

---

## Features

| Feature | Description |
|---|---|
| **NHS Login** | Authenticated access, session tokens |
| **Radiology Worklist** | Sortable/filterable Epic-style worklist |
| **Study Viewer** | Modality-specific DICOM-style viewer (CT/MRI/XR/US/NM) |
| **Report Editor** | Structured reporting with AI assist |
| **ARIA Avatar** | Animated female assistant with lip sync |
| **Voice** | OpenAI Whisper STT + TTS (Nova/Alloy/Shimmer) |
| **AI Assist** | GPT-4o report impression suggestions |
| **Dataset Generator** | Synthetic patients with real names, MRNs, studies |
| **Import/Export** | CSV and JSON worklist import/export |
| **Dark/Light Mode** | Toggle in top bar |

---

## Demo Credentials

| Username | Password |
|---|---|
| david | kings2024 |
| admin | admin123 |
| radiolog | radiology |

---

## Project Structure

```
aria/
├── backend/
│   ├── main.py          ← FastAPI app + SQLite + OpenAI
│   └── requirements.txt
├── frontend/
│   └── index.html       ← Complete React app (single file)
├── start.bat            ← One-click launcher
└── README.md
```

---

## Architecture

```
Browser (React SPA)
    ↕ HTTP/REST
FastAPI Backend (port 8000)
    ├── SQLite database (aria.db — auto-created)
    ├── OpenAI GPT-4o (report assist, ARIA queries)
    ├── OpenAI Whisper (voice transcription)
    └── OpenAI TTS Nova (ARIA voice output)

Frontend (Python http.server, port 3000)
    └── Single HTML file, no build step
```

---

## Phase 2 — UE5 ATLAS

Same FastAPI backend feeds into Unreal Engine 5 ATLAS digital twin.
Use `/api/worklist` endpoint from UE5 HTTP plugin.

---

*Clinical AI Programme · ICT AI Services · King's College Hospital NHS FT*
