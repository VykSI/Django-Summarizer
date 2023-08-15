echo "BUILD START"
python 3.9 -m pip install -r requirements.txt
python3.9 -m spacy download en_core_web_md
python3.9 manage.py makemigrations
python3.9 manage.py migrate
python3.9 manage.py collectstatic --noinput --clear
echo "BUILD END"