sudo apt install repo gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev libelf-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev
mkdir -p ~/bin
mkdir -p ~/android/lineage
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
cd ~/android/lineage
git clone https://github.com/LineageOS/android.git
echo '<?xml version="1.0" encoding="UTF-8"?>' >> default.xml
echo '<manifest>' >> default.xml
echo '  <include name="android/default.xml" />' >> default.xml
echo '  <include name="packages.xml" />' >> default.xml
echo '  <repo-hooks in-project="platform/tools/repohooks" enabled-list="pre-upload" />' >> default.xml
echo '</manifest>' >> default.xml
echo '<?xml version="1.0" encoding="UTF-8"?>' >> packages.xml
echo '<manifest>' >> packages.xml
echo '  <remote  name="omnirom"' >> packages.xml
echo '           fetch="https://github.com/"' >> packages.xml
echo '           review="gerrit.omnirom.org" />' >> packages.xml
echo '  <remove-project name="platform/packages/apps/DeskClock" />' >> packages.xml
echo '  <project path="packages/apps/OmniClock" name="Nilsu11/android_packages_apps_OmniClock" remote="omnirom" revision="10" />' >> packages.xml
echo '</manifest>' >> packages.xml
repo init -u file://$pwd
repo sync
