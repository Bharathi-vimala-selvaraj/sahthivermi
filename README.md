🌱 Sakthi Vermi – Integrated Management System
Sakthi Vermi is a full‑stack agricultural management system designed for vermi compost industries.
It integrates a FastAPI backend, React frontend, and a Telegram bot to manage products, stock, buying requests, and customer interaction in real time.

🚀 Project Overview
This system provides:

📦 Product & stock management

🛒 Buying request handling

📊 Admin dashboard (frontend)

🤖 Telegram bot for customer queries

🔗 Seamless frontend ↔ backend ↔ bot integration

The project is designed to run locally and is structured for production deployment later.

🧩 System Architecture
Frontend (React + Vite)
        │
        │ Axios (REST API)
        ▼
Backend (FastAPI + Uvicorn)
        │
        ├── SQLite Database
        └── Telegram Bot (Polling)
🛠️ Tech Stack
Backend
Python 3.10+

FastAPI

Uvicorn

SQLite

Pydantic

Frontend
React 18

Vite

Axios

Tailwind CSS

Telegram Bot
python-telegram-bot

Long Polling

Backend API integration

📁 Project Structure
sakthi-vermi/
│
├── backend/
│   └── app/
│       ├── main.py
│       ├── database.py
│       ├── models.py
│       ├── routes/
│       └── vermi_dev.db
│
├── frontend/
│   ├── src/
│   ├── package.json
│   └── vite.config.js
│
├── telegram-bot/
│   ├── bot.py
│   └── .env
│
└── README.md
📦 Database Products (Seeded)
Product Name	Price	Unit	Stock
Vermi Compost	₹40	kg	5000
Panchakavya	₹150	litre	1500
Herbal Pesticide	₹120	litre	800
Bio Inputs	₹200	kg	2000
Soil Conditioners	₹35	kg	3500
Micronutrient Fertilizers	₹180	kg	600
⚙️ Setup Instructions
1️⃣ Backend Setup
cd backend/app
python -m venv venv
venv\Scripts\activate
pip install -r requirements.txt
python main.py
Backend runs at:

http://localhost:8000
Health check:

http://localhost:8000/health
2️⃣ Frontend Setup
cd frontend
npm install
npx vite --host localhost --port 3000
Frontend runs at:

http://localhost:3000
3️⃣ Telegram Bot Setup
Create .env file inside telegram-bot/

TELEGRAM_TOKEN=your_bot_token_here
Run the bot:

cd telegram-bot
python bot.py
Bot uses long polling and connects to the backend API.

🤖 Telegram Bot Features
/start – Start interaction

/help – Available commands

/contact – Business contact info

Product & stock queries

Backend‑driven responses

Graceful error handling

🔐 Environment Configuration
OpenAI: ❌ Removed completely

Gemini: Optional (system works without it)

CORS: Enabled for frontend

Error Handling: Graceful fallback everywhere

✅ Current System Status
✅ Backend API running

✅ Frontend connected to backend

✅ Telegram bot connected to Telegram API

✅ Database seeded and verified

✅ End‑to‑end integration working

📌 Known Limitations
Frontend visibility depends on Vite dev server running

Telegram bot intelligence is rule‑based (AI optional)

SQLite is used (can be upgraded to PostgreSQL/MySQL)

🔮 Future Enhancements
Role‑based authentication (Admin / Staff)

Online payment integration

Cloud deployment (Docker + AWS)

Advanced AI intent detection

Mobile app integration

👨‍💻 Author
Bharathi Selvaraj
Project: Sakthi Vermi Compost Industry

