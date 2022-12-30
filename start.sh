if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Gourav1255/filesharing /filesharing
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /filesharing
fi
cd /filesharing
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
