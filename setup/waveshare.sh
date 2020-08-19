#https://www.waveshare.com/wiki/JetBot_AI_Kit
cd
git clone https://github.com/waveshare/jetbot
cd jetbot
sudo python3 setup.py install
cd
sudo apt-get install rsync
rsync -r jetbot/notebooks ~/Notebooks