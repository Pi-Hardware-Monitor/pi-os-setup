sudo apt-get update

sudo apt-get install chromium-browser unclutter build-essential docker docker-compose -y

git clone https://github.com/Pi-Hardware-Monitor/server.git

cd server

git checkout mvp

cd ..

git clone https://github.com/Pi-Hardware-Monitor/display.git

cd display

git checkout mvp

cd ..
