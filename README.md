How to build ROMs for a10s:
Prepare for builds (Recommend Ubuntu 20.04 and higher):
```sh
sudo apt install bc bison build-essential ccache curl flex g++-multilib gcc-multilib git git-lfs gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-gtk3-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev openjdk-11-jdk make zip python-is-python3 libelf-dev dwarves
```
Setup repo:
```sh
mkdir ~/bin
PATH=~/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
```
Download sources:
```sh
repo init -u https://github.com/LineageOS/android.git -b lineage-20.0 --git-lfs
repo sync --force-sync
```
Build:
```sh
. build/envsetup.sh
lunch lineage_a10s-userdebug
mka bacon
```
Device configuration for Samsung Galaxy A10s (a10s)
================================================================
 
Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Octa-core 2.0 GHz Cortex-A53
Chipset | Mediatek MT6762 Helio P22
GPU     | 650MHz PowerVR GE8320
Memory  | 2/3 GB
Shipped Android Version | 9 Pie with OneUI Core 1.0
Storage | 32 GB
MicroSD | Up to 256 GB
Battery | 3900 mAh (non-removable)
Dimensions | 156.9 x 75.8 x 7.8 mm (6.18 x 2.98 x 0.31 in)
Display | 720 x 1520 pixels, 6.2" PLS LCD, 19:9 ratio (~271 PPI density)
Rear Camera  | 13.0 MP + 2 MP, LED flash
Front Camera | 8.0 MP
Release Month | August 2019
 
![Samsung Galaxy A10s](https://fdn2.gsmarena.com/vv/pics/samsung/samsung-galaxy-a10s-1.jpg "Samsung Galaxy A10s")

Based on A107FXXU8BUC2 Firmware
