apt-get update

if [ ! -d "venv" ]; then
    apt install python3.8-venv
    python3 -m venv venv
fi

source venv/bin/activate
python -m pip install --upgrade pip
pip install -r requirements.txt

python app.py
