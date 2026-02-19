# EmailHunter Pro

![EmailHunter Pro](https://img.shields.io/badge/EmailHunter-Pro-34d399?style=for-the-badge&logo=gmail&logoColor=white)
![Python](https://img.shields.io/badge/Python-3.9+-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Flask](https://img.shields.io/badge/Flask-2.3+-000000?style=for-the-badge&logo=flask&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)

**Upload any CSV/Excel sheet → Automatically scrape emails from business websites → Download results**

*Built for real lead generation workflows — handles 1,000+ businesses with auto-save & resume*


---

##  What It Does

Most lead generation tools give you business names, phone numbers, and websites — but **no emails**. EmailHunter Pro fills that gap.

You drop in a CSV (like a Google Maps / Apollo / Apollo.io export), and it:

1. Visits each business website automatically
2. Scrapes emails from the homepage
3. If none found — checks the Contact/About page too
4. Filters out fake/template emails (wixpress, google, etc.)
5. Saves everything to a clean Excel + CSV file

No API keys. No subscriptions. Runs locally on your machine.

---

## Interface Preview

```
┌─────────────────────────────────────────────┐
│  EmailHunter Pro          ● Server Online   │
├──────────────────┬──────────────────────────┤
│  📊 Upload Sheet │  ⚙️ Settings             │
│                  │                          │
│  Drop CSV here   │  Speed: ━━●━━━  0.3s    │
│                  │  Contact scan: ✓ ON      │
│  1200 total      │  Fake filter:  ✓ ON      │
│  955 websites    │                          │
│  245 no site     │  [🚀 Start Scraping]     │
├──────────────────┴──────────────────────────┤
│  Processing...                      67.3%  │
│  ████████████████████░░░░░░░░░░░░          │
│  808 processed  │  412 found  │  ETA: 18m  │
│                                            │
│  21:18:06 ✓ MaintAin → info@uaemaintain   │
│  21:18:18 ✓ Instacool → info@instacool.ae │
│  21:18:45 ✗ Camber Electromechanical      │
├────────────────────────────────────────────┤
│   Results Ready                          │
│  [⬇ CSV Download]  [⬇ Excel Download]     │
└────────────────────────────────────────────┘
```

---

## Quick Start

### 1. Clone the repo
```bash
git clone https://github.com/YOUR_USERNAME/emailhunter-pro.git
cd emailhunter-pro
```

### 2. Install dependencies
```bash
pip install -r requirements.txt
```

### 3. Run
```bash
python app.py
```

### 4. Open browser
```
http://localhost:5000
```

**Windows users:** Just double-click `START_WINDOWS.bat` — it does everything automatically.

---

## Requirements

- Python 3.9+
- Internet connection (to visit websites)

```
flask>=2.3.0
requests>=2.31.0
beautifulsoup4>=4.12.0
openpyxl>=3.1.0
lxml>=4.9.0
```

---

## Project Structure

```
emailhunter-pro/
│
├── app.py                  # Flask backend + scraper engine
├── requirements.txt        # Python dependencies
├── START_WINDOWS.bat       # One-click launcher (Windows)
├── START_MAC_LINUX.sh      # One-click launcher (Mac/Linux)
│
├── templates/
│   └── index.html          # Frontend UI (dark theme)
│
├── uploads/                # Uploaded CSVs stored here
└── outputs/                # Results + auto-save files
```

---

## How The Scraper Works

```
CSV Upload
    │
    ▼
For each business with a website:
    │
    ├─→ Fetch homepage
    │       │
    │       ├─→ Found emails? ──→ Save ✓
    │       │
    │       └─→ No emails?
    │               │
    │               ▼
    │           Find contact page links
    │           (contact, about, reach-us...)
    │               │
    │               ├─→ Fetch contact page
    │               └─→ Found emails? ──→ Save ✓
    │
    ▼
Filter fake emails
(wixpress, google, schema.org, etc.)
    │
    ▼
Auto-save every 20 rows
    │
    ▼
Final CSV + Excel output
```

---

## Auto-Save & Resume

One of the most important features — **your data is never lost.**

- Every **20 rows**, progress is automatically saved to `outputs/`
- If the app crashes, laptop dies, or you cancel — data is safe
- Next time you run `python app.py`, it **detects the saved job**
- A **yellow banner** appears: *"Resume from where you left off?"*
- One click — continues from exact row it stopped at

---

## Performance

| File Size | Estimated Time (0.3s delay) |
|-----------|----------------------------|
| 500 rows  | ~10–12 minutes |
| 1,200 rows | ~25–30 minutes |
| 5,000 rows | ~1.5–2 hours |
| 10,000 rows | ~3–4 hours |

**Tip:** Run overnight for large files. Auto-save keeps everything safe.

---

## Tech Stack

| Layer | Technology |
|-------|-----------|
| Backend | Python + Flask |
| Scraping | Requests + BeautifulSoup4 |
| Frontend | Vanilla HTML/CSS/JS (no framework) |
| Output | CSV + Excel (openpyxl) |
| Design | Dark theme, DM Mono + Clash Display fonts |

---

## Configuration

In `app.py`, you can tweak:

```python
SAVE_EVERY = 20      # Auto-save every N rows
DELAY = 0.3          # Seconds between requests (lower = faster, higher = safer)
```

Via the UI slider — set delay between 0.2s (fast) and 3s (very polite).

---

## Use Cases

- **Lead Generation** — Extract emails from Google Maps / Apollo exports
- **B2B Outreach** — Build contact lists for cold email campaigns  
- **Market Research** — Collect contact data for a specific industry/city
- **Data Enrichment** — Add emails to existing business databases

---

## Disclaimer

This tool is for **legitimate business research and outreach only.**  
Always comply with the terms of service of websites you visit, and relevant data protection laws (GDPR, CAN-SPAM, etc.) in your region.

---

## Contributing

Pull requests welcome! Some ideas for future features:
- [ ] Email verification (check if email actually exists)
- [ ] LinkedIn profile scraping
- [ ] Google Sheets direct export
- [ ] Proxy rotation for large-scale scraping
- [ ] Docker support

---

## License

MIT License — free to use, modify, and distribute.

---
