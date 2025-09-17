# Autonomous Vehicle

## 1. Install Developing Tools for ZYBO Z7

> ### References
> - https://qiita.com/is0392hr/items/919bedb5b639de8b37c1

### 1.3. Install Required Packages
```
wget http://security.ubuntu.com/ubuntu/pool/universe/n/ncurses/libtinfo5_6.3-2ubuntu0.1_amd64.deb
```
```
sudo dpkg -i libtinfo5_6.3-2ubuntu0.1_amd64.deb
```

### 1.2. Install Xilinx Vivado SDK - 2019.1
- https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/archive.html

```
tar -xvf Xilinx_Vivado_SDK_2019.1_0524_1430.tar.gz
```

- Install to `/opt/Xilinx/`

### 1.3. Import Zybo Z7 Board File
```
mkdir -p /home/ubuntu/xilinx/vivado-boards
```
```
cd /home/ubuntu/xilinx/vivado-boards
```
```
wget https://github.com/Digilent/vivado-boards/archive/master.zip
```
```
unzip master.zip
```
```
sudo mv /home/ubuntu/xilinx/vivado-boards/vivado-boards-master/new/board_files/* /opt/Xilinx/Vivado/2019.1/data/boards/board_files/
```

- When create a project, select `ZyboZ7-20`

### 1.4. Install Cable Driver
```
sudo /opt/Xilinx/Vivado/2019.1/data/xicom/cable_drivers/lin64/install_script/install_drivers/install_drivers 
```

## 2. Prepare for OpenCR Development

> ### References
> - https://emanual.robotis.com/docs/en/parts/controller/opencr10_jp/
> - https://qiita.com/basalte/items/e28d60ce0681c69ccee7

### 2.1. Import UDEV Rule
```
wget https://raw.githubusercontent.com/ROBOTIS-GIT/OpenCR/master/99-opencr-cdc.rules
```
```
sudo cp ./99-opencr-cdc.rules /etc/udev/rules.d/
```
```
sudo udevadm control --reload-rules
```
```
sudo udevadm trigger
```

### 2.2. Install Arduino IDE
```
sudo chmod 777 /opt
```
```
mkdir /opt/arduino-ide
```
```
cd /opt/arduino-ide
```
```
wget https://downloads.arduino.cc/arduino-ide/arduino-ide_2.3.6_Linux_64bit.zip
```
```
unzip arduino-ide_2.3.6_Linux_64bit.zip
```
```
sudo dpkg --add-architecture i386
```
```
sudo apt update && sudo apt install libasound2t64 libncurses5-dev libncurses5-dev:i386 libnss3-dev
```
```
/opt/arduino-ide/arduino-ide_2.3.6_Linux_64bit/arduino-ide
```

- Open `File` > `Preferences`
  - Edit `Additional boards manager URLs`
    - `https://raw.githubusercontent.com/ROBOTIS-GIT/OpenCR/master/arduino/opencr_release/package_opencr_index.json`

- Open `Tools` > `Board` > `Board Manager...`
  - Type `OpenCR` in `Filter your search` box
  - Inatall `OpenCR by ROBOTIS`

## 3. Zybo Z7 FPGA Image Recognition Development

> ### References
> - https://fumimaker.net/entry/2020/02/06/002934
> - https://phys-higashi.com/73/#toc8
> - https://marsee101.blog.fc2.com/blog-entry-4027.html

### 3.1. 
