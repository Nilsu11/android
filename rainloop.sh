sudo apt install repo gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev libelf-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev
mkdir -p ~/bin
mkdir -p ~/android/lineage
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
cd ~/android/lineage
git clone https://github.com/crdroidandroid/android.git
echo '<?xml version="1.0" encoding="UTF-8"?>' >> default.xml
echo '<manifest>' >> default.xml
echo '  <include name="android/default.xml" />' >> default.xml
echo '  <include name="packages.xml" />' >> default.xml
echo '  <repo-hooks in-project="platform/tools/repohooks" enabled-list="pre-upload" />' >> default.xml
echo '</manifest>' >> default.xml
echo '<?xml version="1.0" encoding="UTF-8"?>' >> packages.xml
echo '<manifest>' >> packages.xml
echo '  <remote  name="me"' >> packages.xml
echo '           fetch="https://github.com/"' >> packages.xml
echo '  <remove-project name="platform/packages/apps/DeskClock" />' >> packages.xml
echo '  <project path="packages/apps/OmniClock" name="Nilsu11/android_packages_apps_OmniClock" remote="me" revision="10" />' >> packages.xml
echo '  <project path="packages/apps/ThemeChooser" name="CyanogenMod/android_packages_apps_ThemeChooser" remote="me" revision="cm-14.1" />' >> packages.xml
echo '  <project path="packages/providers/ThemesProvider" name="CyanogenMod/android_packages_providers_ThemesProvider" remote="me" revision="cm-14.1" />' >> packages.xml
echo '  <project path="packages/services/ThemeManagerService" name="CyanogenMod/android_packages_services_ThemeManagerService" remote="me" revision="cm-14.1" />' >> packages.xml
echo '</manifest>' >> packages.xml
echo 'PRODUCT_PACKAGES += \' >> rainloop.mk
echo 'OmniClockOSS \' >> rainloop.mk
echo 'ThemeChooser \' >> rainloop.mk
echo 'ThemesProvider \' >> rainloop.mk
echo 'ThemeManagerService' >> rainloop.mk
repo init -u file://$pwd
repo sync
sed -i 's/org.cyanogenmod.platform.internal/org.lineageos.platform.internal/g' {file}
# TODO:
# echo own .mk in vendor
# include own .mk
# add more apps
