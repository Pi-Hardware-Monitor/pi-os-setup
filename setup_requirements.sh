sudo apt-get update

sudo apt-get install chromium-browser unclutter build-essential docker docker-compose -y

rm -Rf server

git clone https://github.com/Pi-Hardware-Monitor/server.git

cd server

git checkout mvp

cd ..

rm -Rf display

git clone https://github.com/Pi-Hardware-Monitor/display.git

cd display

git checkout mvp

cd ..
