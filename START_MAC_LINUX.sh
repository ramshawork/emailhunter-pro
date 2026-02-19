#!/bin/bash
echo "=========================================="
echo "  EMAIL HUNTER PRO - Starting..."
echo "=========================================="
echo ""

# Install dependencies
echo "Installing dependencies..."
pip install -r requirements.txt -q

echo ""
echo "=========================================="
echo "  Starting app..."
echo "  Browser mein open hoga: http://localhost:5000"
echo "  For stopping app: Ctrl+C"
echo "=========================================="
echo ""

# Open browser (Mac)
sleep 2 && open "http://localhost:5000" 2>/dev/null || \
sleep 2 && xdg-open "http://localhost:5000" 2>/dev/null &

python3 app.py
