# pi-os-setup

## Manual install

sudo apt-get update
sudo apt-get install chromium-browser -y
sudo apt-get install unclutter -y

git clone https://github.com/Pi-Hardware-Monitor/server.git

git checkout mvp

sudo apt install build-essential
sudo apt install nodejs npm -y

git clone https://github.com/Pi-Hardware-Monitor/display.git

sudo nano /etc/xdg/lxsession/LXDE-pi/autostart
```
@unclutter

@xscreensaver -no-splash

@xset s off
@xset -dpms
@xset s noblank

@chromium-browser https://localhost:4200 --start-fullscreen --kiosk --incognito --noerrdialogs --no-first-run --disk-cache-dir=/dev/null
```

tmux new -s server

cd server 
npm start

ctrl+b, d

tmux new -s display

cd display 
npm start

ctrl+b, d

## Automatic Install

### System Setup

run ./setup_requirements.sh

add this lines to the end of `/etc/xdg/lxsession/LXDE-pi/autostart`

```
@unclutter

@xscreensaver -no-splash

@xset s off
@xset -dpms
@xset s noblank

@chromium-browser https://localhost:4200 --start-fullscreen --kiosk --incognito --noerrdialogs --no-first-run --disk-cache-dir=/dev/null
```
### Start Docker Compose Network

run ./run_application.sh

Reboot the pi, it should directly start into the application.