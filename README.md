# Autonomous Vehicle

## 1. Install Xilinx Vivado SDK - 2025.1
- https://www.xilinx.com/support/download.html

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
> - https://xilinx.github.io/Vitis-Tutorials/master/docs-jp/docs-jp/Vitis_Platform_Creation/Design_Tutorials/02-Edge-AI-ZCU104/step1.html
> - https://cellspe.matrix.jp/zerofpga/vivado_xsa.html
> - https://phys-higashi.com/114/#toc12
> - https://zenn.dev/gnico/articles/2aef82b7adef44

### 3.1. Create New Project
- Project name: `AutonomousVehicle`
- Disable `Create project subdirectory`
- Select RTL Project
  - Enable `Do not specify sources at this time`
  - Disable `Project is an entensible Vitis platform`
- Download Board Data
  - `Boards` > `Zybo Z7-20`

### 3.2. Download Zybo Z7 XDC File
```
wget https://raw.githubusercontent.com/Digilent/digilent-xdc/refs/heads/master/Zybo-Z7-Master.xdc -O Zybo-Z7.xdc
```

### 3.3. Add Source
- Add XDC File
  - `Flow Navigator` > `PROJECT MANAGER` > `Add Sources` > `Add or create constraints`
- Add HDL Files
  - `Flow Navigator` > `PROJECT MANAGER` > `Add Sources` > `Add or create design sources`

### 3.4. Create Block Design
- `Flow Navigator` > `IP GENERATOR` > `Create Block Design`

<div align="center"><img src="imgs/create-block-design.jpg" width="500"></div>

- Add Processing System
  - `BLOCK DESIGN` > `Diagram` > `+ button to add IP` > `ZYNQ7 Processing System`
  - `BLOCK DESIGN` > `Diagram` > `Run Block Automation`
 
<div align="center"><img src="imgs/run-block-automation.jpg" width="500"></div>

  - Connect `M_AXI_GP0_ACLK` and `FCLK_CLK0`

<div align="center"><img src="imgs/connect-processing-system-clock.jpg" width="500"></div>

- Create HDL Wrapper of the Processing System
  - `BLOCK DESIGN` > `Sources` > `Design Sources` > `system (system.bd)` > `Create HDL Wrapper` > `Let Vivado manage wrapper and auto-update`

### 3.5. Generate Bitstream
- `Flow Navigator` > `PROGRAM AND DEBUG` > `Generate Bitstream`

### 3.6. Export Hardware
- `File` > `Export` > `Export Hardware`
  - Select `include bitstream`
