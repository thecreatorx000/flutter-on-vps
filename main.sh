sudo apt-get update
clear
sudo apt install default-jdk
clear
cd ~
wget https://github.com/LinuxArchives/Flutter_Essentials/archive/master.zip
clear
echo "Unziping..."
unzip -qq master.zip
clear
mkdir Android
cd ~
clear
mv ~/Flutter_Essentials-master/Sdk ~/Android/
rm ~/Flutter_Essentials-master -r
cd ~
rm master.zip
rm README.md
clear
cd ~



wget https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_1.20.2-stable.tar.xz
clear
echo "Unziping..."
tar -xf flutter_linux_1.20.2-stable.tar.xz
clear
cd ~
sudo apt install git
clear
cd ~
export ANDROID_HOME="`pwd`/Android/Sdk"
export PATH="$PATH:`pwd`/flutter/bin:$ANDROID_HOME:$ANDROID_HOME/platform-tools"
rm flutter_linux_1.20.2-stable.tar.xz
clear

flutter channel beta
clear
flutter upgrade
clear
flutter config --enable-web
clear
flutter channel dev
clear
flutter upgrade
clear



cd ~
python3 main.py
flutter devices

