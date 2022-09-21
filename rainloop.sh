sudo apt install repo gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev libelf-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev
mkdir -p ~/bin
mkdir -p ~/android/lineage
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
cd ~/android
git clone https://github.com/LineageOS/android.git
