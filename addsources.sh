echo "Backing up sources.list";
cp /etc/apt/sources.list /etc/apt/sources.list.bak -r;
echo "Adding Kali Sources";
echo deb http://kali.download/kali kali-rolling main contrib non-free >>/etc/apt/sources.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys ED444FF07D8D0BF6;
echo "Updating...";
apt update;
