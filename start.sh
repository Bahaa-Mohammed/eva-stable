if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/drmhdh/DENTTECHLIBRARY2022
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DENTTECHLIBRARY2022
fi
cd /DENTTECHLIBRARY2022
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
