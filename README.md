# Linux编译烧录51单片机

## 选用sdcc进行编译,stcgal进行烧录

## ubuntu

```bash
    sudo apt-get install sdcc
    pip3 install stcgal
```

## 编译器选择vscode

为了让编译器适应keil 需要添加keil头文件

```bash
    git clone https://github.com/hanzhang2/stc89c52
    cd stc89c52
    sudo cp keil.h /usr/share/sdcc/include/mcs51
```

## 目录结构

├── build
│   ├── build.sh
│   ├── insert.sh
│   ├── main.hex
│   └── sources
│       -----
├── car
│   ├── car.c
│   └── car.h
├── config
│   ├── config.c
│   └── config.h
├── interrupt
│   ├── interrupt.c
│   └── interrupt.h
└── time
    ├── time.c
    └── time.h
├── main.c
├── main.lk
├── README.md

## 编译方法

```bash
    cd bulid
    sudo chmod +x build.sh
    ./build.sh
```

## 烧录方法

```bash
    cd bulid
    sudo chmod +x insert.sh
    ./insert.sh
```
