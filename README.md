FMFIP Spoofer
=====================

## 功能
+ 设定虚假 查找我的iPhone、查找我的朋友 的位置
+ 修正大陆地区 查找我的iPhone、查找我的朋友 位置偏移
+ 进入设置 - FMFIP Spoofer输入经纬度即可
+ 纯补丁，后台不驻留进程

## Feature
+ Location spoofing for Find My Friends, Find My iPhone.
+ Fix location shift for mainland China.
+ Configure options from Settings - FMFIP Spoofer.
+ No background process required.

## 使用
需要重启查找我的朋友和后台aosnotifyd进程才能生效。建议直接重启手机。


## Instruction
You need to restart BOTH findMyFrineds.app and aosnotifyd for it to take effect.
Restarting your phone is probably easier if you don't know how to do it from terminal.

## 开源
原理见[博客][post]
源码见[Github][source]

## Source
I have written a [blog post][post] about how it works.
It's completely open source. You can find the source on [Github][source]. 

## Installation

### Install from source

Install theos and setup environment

    export THEOS=/opt/theos/
    export SDKVERSION=4.3
    export THEOS_DEVICE_IP=192.168.1.X


Compile and install package

    make
    make package
    make install

### Install from Cydia

Search for 'FMFIP Spoofer' and install.


[post]: http://weishi.github.io/blog/2013/07/19/fixing-find-my-friends-location-shift-in-china/
[source]: https://github.com/weishi/FMFChinaLocationPatch
