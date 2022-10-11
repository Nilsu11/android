sudo apt install repo gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev libelf-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev
mkdir -p ~/bin
mkdir -p ~/android/lineage
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
cd ~/android/lineage
git clone https://github.com/LineageOS/android.git
echo '<?xml version="1.0" encoding="UTF-8"?>' >> r.xml
echo '<manifest>' >> r.xml
echo '  <include name="android/default.xml" />' >> r.xml
echo '  <include name="packages.xml" />' >> r.xml
echo '  <repo-hooks in-project="platform/tools/repohooks" enabled-list="pre-upload" />' >> r.xml
echo '</manifest>' >> r.xml
echo '<?xml version="1.0" encoding="UTF-8"?>' >> packages.xml
echo '<manifest>' >> packages.xml
echo '  <remote  name="omnirom"' >> packages.xml
echo '           fetch="https://github.com/omnirom"' >> packages.xml
echo '           review="gerrit.omnirom.org" />' >> packages.xml
echo '  <remove-project name="platform/packages/apps/DeskClock" />' >> packages.xml
echo '  <project path="packages/apps/OmniClock" name="android_packages_apps_OmniClock" remote="omnirom" revision="android-10" />' >> packages.xml
echo '</manifest>' >> packages.xml
