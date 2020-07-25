# Install dependencies.
sudo add-apt-repository ppa:aguignard/ppa
sudo apt-get update
sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake libxcb-shape0-dev git libxcb-composite0-dev xcb-proto python2.7 libxcb-ewmh-dev python3-pip

# Install python dependencies
pip3 install xcbgen

# Install Visual Studio Code
sudo apt install code

# Install i3-gaps-next from source
cd ~
mkdir tmp
cd tmp
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
git checkout gaps-next && git pull
autoreconf --force --install
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc
make
sudo make install

# Install polybar from source
cd ~/tmp
git clone https://www.github.com/polybar/polybar polybar
cd polybar
./build.sh --i3

# Copy the global config to the local home directory
cp /etc/i3/config ~/.i3/config

# Restart, on login screen click gear, select i3 as window manager