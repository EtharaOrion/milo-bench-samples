I've uploaded a C code repository in the directory /workspace/fastfetch. Consider the following issue description:

<issue_description>
# Rebranding HydraPWK to NetHydra

## Issue 1 (#2115): Rebranding HydraPWK to NetHydra

This commit contains changes to HydraPWK. Changes HydraPWK to NetHydra

https://github.com/hydrapwk/hydrapwk/issues/32

Thank you!

## Issue 2 (#2119): JsonSchema: correct references for keyboard, mouse items

- corrected format references from memoryFormat to keyboardFormat and mouseFormat respectively
- added outputColor to both since it appears to be supported for keyboard and mouse items too

## Issue 3 (#2123): Logo (Builtin): fix colors of deepin and UOS

The colors of both are in the blue range.

<img width="744" height="374" alt="deepin" src="https://github.com/user-attachments/assets/c8f29311-f790-4999-aab9-7000cd24dbc4" />

<img width="878" height="391" alt="UOS" src="https://github.com/user-attachments/assets/ae680111-d813-40ea-9b4d-4d6228e6309e" />

---

Small modification: when the word "deepin" appears alone or only combined with "linux", it is in lowercase.

## Issue 4 (#2105): [BUG] Terminal Font not shown for rxvt-unicode

### Read the FAQ first

- [x] I have checked the FAQ but the issue is not covered

### Description

Terminal Font not shown for rxvt-unicode - font is defined in .Xdefaults as:

URxvt.font:				-misc-fixed-medium-r-normal--15-140-75-75-c-90-iso10646-

No output is printed for "terminalfont" - all good for "terminal", "terminalsize" and "terminaltheme".

                                    Terminal: rxvt-unicode 9.31
                                    Terminal Size: 210 columns x 69 rows (1890px x 1035px)
                                    Terminal Theme: #D8D8D8 (FG) - #2D4E76 (BG) [Dark]


### Version used

fastfetch 2.56.0 (x86_64)

### Bug prevalence

Always

### Regression

Not sure

### Installation

Package manager

### Package manager

pkg

### Screenshots

_No response_

### Configuration

```jsonc

```

### System information

```jsonc
[
  {
    "type": "Title",
    "result": {
      "userName": "fmc000",
      "fullUserName": "XXXXX",
      "hostName": "dabrafenib",
      "homeDir": "/home/fmc000/",
      "exePath": "/usr/local/bin/fastfetch",
      "userShell": "/usr/local/bin/zsh"
    },
    "stat": 0.007270000874996185
  },
  {
    "type": "Separator",
    "error": "Unsupported for JSON format",
    "stat": 0.0016860002651810646
  },
  {
    "type": "OS",
    "error": "Could not detect OS",
    "stat": 0.018006999976933002
  },
  {
    "type": "Host",
    "result": {
      "family": "",
      "name": "TU45B",
      "version": "",
      "sku": "",
      "vendor": "Intel",
      "serial": "",
      "uuid": "XXXXXXXXXX"
    },
    "stat": 0.04246099945157766
  },
  {
    "type": "BIOS",
    "result": {
      "date": "07/19/2022",
      "release": "5.19",
      "vendor": "American Megatrends International, LLC.",
      "version": "100E",
      "type": "UEFI"
    },
    "stat": 0.031130999326705933
  },
  {
    "type": "Bootmgr",
    "error": "open(/dev/efi) failed",
    "stat": 0.02005899976938963
  },
  {
    "type": "Board",
    "result": {
      "name": "TU45B",
      "vendor": "Aierben",
      "version": "",
      "serial": ""
    },
    "stat": 0.012833000160753727
  },
  {
    "type": "Chassis",
    "result": {
      "type": "Desktop",
      "vendor": "",
      "version": "",
      "serial": ""
    },
    "stat": 0.012609000317752361
  },
  {
    "type": "Kernel",
    "result": {
      "architecture": "amd64",
      "name": "FreeBSD",
      "release": "14.3-STABLE",
      "version": "FreeBSD 14.3-STABLE stable/14-n273110-525766f1ae38 GENERIC",
      "pageSize": 4096
    },
    "stat": 0.007036000490188599
  },
  {
    "type": "InitSystem",
    "result": {
      "name": "init",
      "exe": "/sbin/init",
      "version": "",
      "pid": 1
    },
    "stat": 0.03993400000035763
  },
  {
    "type": "Uptime",
    "result": {
      "uptime": 6461851,
      "bootTime": "2025-12-21T19:49:56.216+0100"
    },
    "stat": 0.13901800010353327
  },
  {
    "type": "Loadavg",
    "result": [
      0.0185546875,
      0.0517578125,
      0.103515625
    ],
    "stat": 0.003863000310957432
  },
  {
    "type": "Processes",
    "result": 101,
    "stat": 0.05847899988293648
  },
  {
    "type": "Packages",
    "result": {
      "all": 845,
      "amSystem": 0,
      "amUser": 0,
      "apk": 0,
      "brew": 0,
      "brewCask": 0,
      "choco": 0,
      "dpkg": 0,
      "emerge": 0,
      "eopkg": 0,
      "flatpakSystem": 0,
      "flatpakUser": 0,
      "guixSystem": 0,
      "guixUser": 0,
      "guixHome": 0,
      "hpkgSystem": 0,
      "hpkgUser": 0,
      "linglong": 0,
      "mport": 0,
      "nixDefault": 0,
      "nixSystem": 0,
      "nixUser": 0,
      "opkg": 0,
      "pacman": 0,
      "pacstall": 0,
      "paludis": 0,
      "pisi": 0,
      "pkg": 845,
      "pkgtool": 0,
      "pkgsrc": 0,
      "macports": 0,
      "rpm": 0,
      "scoopUser": 0,
      "scoopGlobal": 0,
      "snap": 0,
      "soar": 0,
      "kiss": 0,
      "sorcery": 0,
      "winget": 0,
      "xbps": 0,
      "pacmanBranch": ""
    },
    "stat": 0.061921000480651855
  },
  {
    "type": "Shell",
    "result": {
      "exe": "zsh",
      "exeName": "zsh",
      "exePath": "/usr/local/bin/zsh",
      "pid": 8168,
      "ppid": 8166,
      "processName": "zsh",
      "prettyName": "zsh",
      "version": "5.9",
      "tty": 1
    },
    "stat": 0.3591339997947216
  },
  {
    "type": "Editor",
    "result": {
      "type": "Editor",
      "name": "/usr/local/dt/bin/dtpad",
      "path": "/usr/local/dt/bin/dtpad",
      "exe": "dtpad",
      "version": ""
    },
    "stat": 0.010862000286579132
  },
  {
    "type": "Display",
    "result": [
      {
        "id": 0,
        "name": "HDMI-1",
        "primary": true,
        "output": {
          "width": 1920,
          "height": 1080,
          "refreshRate": 60.0,
          "drrStatus": null
        },
        "scaled": {
          "width": 1920,
          "height": 1080
        },
        "preferred": {
          "width": 1920,
          "height": 1080,
          "refreshRate": 60.02042511943502
        },
        "physical": {
          "width": 598,
          "height": 336
        },
        "rotation": 0,
        "bitDepth": 0,
        "hdrStatus": null,
        "type": "External",
        "manufactureDate": null,
        "serial": null,
        "platformApi": "xcb-randr-mode"
      },
      {
        "id": 0,
        "name": "eDP-1",
        "primary": false,
        "output": {
          "width": 1920,
          "height": 1080,
          "refreshRate": 60.02042511943502,
          "drrStatus": null
        },
        "scaled": {
          "width": 1920,
          "height": 1080
        },
        "preferred": {
          "width": 1920,
          "height": 1080,
          "refreshRate": 60.02042511943502
        },
        "physical": {
          "width": 344,
          "height": 194
        },
        "rotation": 0,
        "bitDepth": 0,
        "hdrStatus": null,
        "type": "Builtin",
        "manufactureDate": null,
        "serial": null,
        "platformApi": "xcb-randr-mode"
      }
    ],
    "stat": 1.5996390003710985
  },
  {
    "type": "Brightness",
    "result": [
      {
        "name": "intel_backlight",
        "max": 100.0,
        "min": 0.0,
        "current": 100.0,
        "builtin": true
      }
    ],
    "stat": 0.07646400015801191
  },
  {
    "type": "Monitor",
    "error": "Monitor module is an alias of Display module",
    "stat": 0.002438000403344631
  },
  {
    "type": "LM",
    "error": "Failed to get $XDG_SESSION_ID",
    "stat": 0.012230999767780304
  },
  {
    "type": "DE",
    "result": {
      "processName": "dtsession",
      "prettyName": "CDE",
      "version": ""
    },
    "stat": 0.005366000346839428
  },
  {
    "type": "WM",
    "result": {
      "processName": "dtwm",
      "prettyName": "dtwm",
      "protocolName": "XLibre",
      "pluginName": "",
      "version": ""
    },
    "stat": 0.0039809998124837875
  },
  {
    "type": "WMTheme",
    "error": "Unknown WM: dtwm",
    "stat": 0.00396299920976162
  },
  {
    "type": "Theme",
    "result": {
      "theme1": "Fusion [Qt]",
      "theme2": "cdetheme [GTK2/3/4]"
    },
    "stat": 0.13487599976360798
  },
  {
    "type": "Icons",
    "result": {
      "icons1": "hicolor [Qt]",
      "icons2": "hicolor [GTK2/3/4]"
    },
    "stat": 0.00280699972063303
  },
  {
    "type": "Font",
    "result": {
      "display": "Liberation Sans (9pt, Regular) [Qt], Liberation Sans (12pt) [GTK2/3/4]",
      "fonts": [
        "Liberation Sans (9pt, Regular)",
        "Liberation Sans (12pt)",
        "Liberation Sans (12pt)",
        "Liberation Sans (12pt)"
      ]
    },
    "stat": 0.029480000026524067
  },
  {
    "type": "Cursor",
    "result": {
      "theme": "Adwaita",
      "size": "24"
    },
    "stat": 0.005855000577867031
  },
  {
    "type": "Wallpaper",
    "error": "Failed to detect the current wallpaper path",
    "stat": 0.002004999667406082
  },
  {
    "type": "Terminal",
    "result": {
      "processName": "urxvt",
      "exe": "urxvt",
      "exeName": "urxvt",
      "exePath": "/usr/local/bin/urxvt",
      "pid": 8166,
      "ppid": 1,
      "prettyName": "rxvt-unicode",
      "version": "9.31",
      "tty": "/dev/pts/1"
    },
    "stat": 19.948522000573575
  },
  {
    "type": "TerminalFont",
    "error": "Unknown terminal: urxvt",
    "stat": 0.005282999947667122
  },
  {
    "type": "TerminalSize",
    "result": {
      "columns": 210,
      "rows": 69,
      "width": 1890,
      "height": 1035
    },
    "stat": 0.001436999998986721
  },
  {
    "type": "TerminalTheme",
    "result": {
      "fg": {
        "r": 216,
        "g": 216,
        "b": 216,
        "dark": false
      },
      "bg": {
        "r": 45,
        "g": 78,
        "b": 118,
        "dark": true
      }
    },
    "stat": 0.04447999969124794
  },
  {
    "type": "CPU",
    "result": {
      "cpu": "11th Gen Intel(R) Core(TM) i7-1185G7",
      "vendor": "",
      "packages": 1,
      "cores": {
        "physical": 4,
        "logical": 8,
        "online": 8
      },
      "frequency": {
        "base": 3000,
        "max": 4800
      },
      "coreTypes": [],
      "temperature": 38.950000000000045,
      "march": "x86_64-v4",
      "numaNodes": 1
    },
    "stat": 0.08929099980741739
  },
  {
    "type": "CPUCache",
    "error": "Failed to get SMBIOS data",
    "stat": 0.009033999405801296
  },
  {
    "type": "CPUUsage",
    "result": [
      7.4074074074074066,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0
    ],
    "stat": 213.26748900022358
  },
  {
    "type": "GPU",
    "result": [
      {
        "index": null,
        "coreCount": null,
        "coreUsage": null,
        "memory": {
          "dedicated": {
            "total": null,
            "used": null
          },
          "shared": {
            "total": null,
            "used": null
          },
          "type": null
        },
        "driver": "vgapci",
        "name": "Iris Xe Graphics",
        "temperature": null,
        "type": "Integrated",
        "vendor": "Intel",
        "platformApi": "/dev/pci",
        "frequency": null,
        "deviceId": 16
      }
    ],
    "stat": 4.662595000118017
  },
  {
    "type": "Memory",
    "result": {
      "total": 34011742208,
      "used": 7432712192
    },
    "stat": 0.026108000427484512
  },
  {
    "type": "PhysicalMemory",
    "error": "Failed to get SMBIOS data",
    "stat": 0.004693999886512756
  },
  {
    "type": "Swap",
    "result": [
      {
        "name": "/dev/nda0p3",
        "used": 0,
        "total": 2147483648
      }
    ],
    "stat": 0.04832699988037348
  },
  {
    "type": "Zpool",
    "result": [
      {
        "name": "zroot",
        "state": "ONLINE",
        "guid": 16015852183908092603,
        "used": 288740782080,
        "allocated": 288740782080,
        "total": 497142464512,
        "fragmentation": 32.0,
        "readOnly": false
      }
    ],
    "stat": 4.721222999505699
  },
  {
    "type": "Battery",
    "result": [
      {
        "capacity": 100.0,
        "manufacturer": "LENGDA",
        "manufactureDate": "",
        "modelName": " ",
        "status": "AC Connected",
        "technology": "LiIon",
        "serial": "00002",
        "temperature": null,
        "cycleCount": 0,
        "timeRemaining": null
      }
    ],
    "stat": 21.04616199992597
  },
  {
    "type": "PowerAdapter",
    "error": "Not supported on this platform",
    "stat": 0.002825000323355198
  },
  {
    "type": "Player",
    "error": "Player module is an alias of Media module",
    "stat": 0.0011570006608963013
  },
  {
    "type": "Media",
    "result": {
      "song": {
        "name": "Nanobots: Separating Hype from Reality",
        "artist": "Sabine Hossenfelder",
        "album": "",
        "status": "Paused",
        "cover": "/home/fmc000/.librewolf/firefox-mpris/2124_1.png"
      },
      "player": {
        "name": "Mozilla librewolf",
        "id": "firefox.instance_1_0",
        "url": "https://www.youtube.com/watch?v=MQ9aXoah5DA&list=WL&index=11"
      }
    },
    "stat": 6.123383999802172
  },
  {
    "type": "PublicIp",
    "result": {
      "ip": "XXXXXXX",
      "location": "XXXXX"
    },
    "stat": 0.13191800005733967
  },
  {
    "type": "LocalIp",
    "result": [
      {
        "name": "wlan0",
        "defaultRoute": {
          "ipv4": true,
          "ipv6": false
        },
        "ipv4": "192.168.1.11/24",
        "ipv6": "",
        "mac": "XXXXXXX",
        "mtu": 1500,
        "speed": -1,
        "flags": "UP,BROADCAST,RUNNING,MULTICAST,SIMPLEX"
      }
    ],
    "stat": 0.08420800045132637
  },
  {
    "type": "DNS",
    "result": [
      "8.8.8.8",
      "8.8.4.4"
    ],
    "stat": 0.04187400080263615
  },
  {
    "type": "Wifi",
    "result": [
      {
        "inf": {
          "description": "wlan0",
          "status": "Up"
        },
        "conn": {
          "status": "Associated",
          "ssid": "XXXXXXXX",
          "bssid": "XXXXXXX",
          "protocol": "802.11ac (Wi-Fi 5)",
          "security": "WPA",
          "signalQuality": 100.0,
          "rxRate": 54.0,
          "txRate": null,
          "channel": 48,
          "frequency": 5240
        }
      }
    ],
    "stat": 0.04038800019770861
  },
  {
    "type": "DateTime",
    "result": "2025-12-21T21:37:38.340+0100",
    "stat": 0.014136000536382198
  },
  {
    "type": "Locale",
    "result": "it_IT.UTF-8",
    "stat": 0.00228899996727705
  },
  {
    "type": "Vulkan",
    "result": {
      "apiVersion": "1.3.278",
      "conformanceVersion": "1.3",
      "driver": "Intel open-source Mesa driver [Mesa 24.1.7]",
      "gpus": [
        {
          "type": "Integrated",
          "vendor": "Intel",
          "name": "Intel(R) Xe Graphics (TGL GT2)",
          "driver": "Mesa 24.1.7",
          "platformApi": "Vulkan 1.3.278",
          "deviceId": 39497,
          "memory": {
            "dedicated": {
              "total": 0,
              "used": null
            },
            "shared": {
              "total": 17005871104,
              "used": null
            }
          },
          "deviceId": 39497
        }
      ]
    },
    "stat": 33.468927999958396
  },
  {
    "type": "OpenGL",
    "result": {
      "version": "4.6 (Compatibility Profile) Mesa 24.1.7",
      "renderer": "Mesa Intel(R) Xe Graphics (TGL GT2)",
      "vendor": "Intel",
      "slv": "4.60",
      "library": "EGL 1.5"
    },
    "stat": 19.969042000360787
  },
  {
    "type": "OpenCL",
    "error": "dlopen libOpenCL.so failed",
    "stat": 0.03333199955523014
  },
  {
    "type": "Users",
    "result": [
      {
        "name": "fmc000",
        "hostName": ":0.0",
        "sessionName": "pts/1",
        "clientIp": "",
        "loginTime": "2025-12-21T21:34:33.841+0100"
      }
    ],
    "stat": 0.03706299979239702
  },
  {
    "type": "Sound",
    "result": [
      {
        "active": true,
        "main": false,
        "volume": 100,
        "name": "Realtek ALC269 (Internal Analog) on hdaa0",
        "identifier": "/dev/mixer0",
        "platformApi": "FreeBSD native OSS ABI 1403507"
      },
      {
        "active": true,
        "main": false,
        "volume": 100,
        "name": "Realtek ALC269 (Right Analog) on hdaa0",
        "identifier": "/dev/mixer1",
        "platformApi": "FreeBSD native OSS ABI 1403507"
      },
      {
        "active": true,
        "main": true,
        "volume": 100,
        "name": "Intel Tiger Lake (HDMI/DP 8ch) on hdaa1",
        "identifier": "/dev/mixer2",
        "platformApi": "FreeBSD native OSS ABI 1403507"
      }
    ],
    "stat": 0.0300519997254014
  },
  {
    "type": "Camera",
    "result": [
      {
        "name": "USB2.0 FHD UVC WebCam: USB2.0 F",
        "vendor": "",
        "colorSpace": "sRGB",
        "id": "usb-/dev/usb-/dev/usb",
        "width": 1280,
        "height": 720
      }
    ],
    "stat": 10.9238519994542
  },
  {
    "type": "Gamepad",
    "result": [],
    "stat": 0.003628999926149845
  },
  {
    "type": "Mouse",
    "result": [],
    "stat": 0.0029189996421337128
  },
  {
    "type": "Keyboard",
    "error": "ioctl(KDGKBINFO) failed",
    "stat": 0.0036819996312260628
  },
  {
    "type": "PhysicalDisk",
    "result": [
      {
        "name": "Samsung SSD 980 500GB",
        "devPath": "/dev/nda0",
        "interconnect": "OTHER",
        "kind": "SSD",
        "size": 500107862016,
        "serial": "S64DNL0W334222V",
        "removable": null,
        "readOnly": null,
        "revision": "",
        "temperature": null
      }
    ],
    "stat": 0.34819400031119585
  },
  {
    "type": "TPM",
    "error": "`tpm` kernel module is not loaded",
    "stat": 0.027605999261140823
  },
  {
    "type": "Version",
    "result": {
      "projectName": "fastfetch",
      "sysName": "FreeBSD",
      "architecture": "x86_64",
      "version": "2.56.0",
      "versionGit": "",
      "cmakeBuiltType": "Release",
      "compileTime": "Dec  9 2025, 16:52:36",
      "compiler": "clang 19.1.7",
      "debugMode": false,
      "libc": "FBSD"
    },
    "stat": 0.00188400037586689
  }
]
```

### Features built-in

```text
threads
vulkan
wayland
xcb-randr
xrandr
drm
drm_amdgpu
gio
dconf
dbus
imagemagick7
chafa
zlib
sqlite3
egl
glx
opencl
libelf
libzfs
System yyjson
linux/videodev2
```

## Issue 5 (#2121): [FEAT] Report version for niri WM

### Description

When skimming the changelog, I noticed that support for version reporting at the WM level was handled as code changes within this project. For example in v2.46.0's changelog it mentions adding Hyprland's version.

I'm wondering if we can add the version for niri too.

Currently niri gets reported as `WM: niri (Wayland)` with v2.56.1.

Here's an example command showing how to obtain the version and its output:

```
$ niri --version
niri 25.11 (b35bcae)
```

### Motivation

I use niri and sometimes when reporting bugs or feature requests reporting system details is helpful and having the version be included in the output would save time from running `niri --version` manually.

### Additional context

_No response_

## Issue 6 (#2127): [BUG] LocalIP not shown due to unexpected inclusion of `lo` when detecting default routes

### Read the FAQ first

- [x] I have checked the FAQ but the issue is not covered

### Description

On systems where a local default dev `lo` route exists (maybe caused by network sharing of Networkmanager in my cause), fastfetch incorrectly identifies the loopback interface (lo) as the default route, which results in finding no interfaces. Not sure if this is intended.

### Version used

fastfetch 2.56.1-16-debug (x86_64)

### Bug prevalence

Always

### Regression

Not sure

### Installation

Built from source

### Package manager

_No response_

### Screenshots

`ip addr`:
```
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host noprefixroute 
       valid_lft forever preferred_lft forever
3: eno1: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN group default qlen 1000
    link/ether 60:cf:84:ea:25:19 brd ff:ff:ff:ff:ff:ff
    altname enp10s0
    altname enx60cf84ea2519
4: wlp11s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether a8:e2:91:0b:6c:f8 brd ff:ff:ff:ff:ff:ff
    altname wlxa8e2910b6cf8
    inet 10.116.2.138/24 brd 10.116.2.255 scope global dynamic noprefixroute wlp11s0
       valid_lft 2788sec preferred_lft 2788sec
    inet6 fe80::5aad:8063:9974:c887/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
```

`ip route show default`:
```
default via 10.116.2.61 dev wlp11s0 proto dhcp src 10.116.2.138 metric 600 
```

`ip route show table all`:
```
local default dev lo table 100 scope host 
default via 10.116.2.61 dev wlp11s0 proto dhcp src 10.116.2.138 metric 600 
10.116.2.0/24 dev wlp11s0 proto kernel scope link src 10.116.2.138 metric 600 
local 10.116.2.138 dev wlp11s0 table local proto kernel scope host src 10.116.2.138 
broadcast 10.116.2.255 dev wlp11s0 table local proto kernel scope link src 10.116.2.138 
local 127.0.0.0/8 dev lo table local proto kernel scope host src 127.0.0.1 
local 127.0.0.1 dev lo table local proto kernel scope host src 127.0.0.1 
broadcast 127.255.255.255 dev lo table local proto kernel scope link src 127.0.0.1 
fe80::/64 dev wlp11s0 proto kernel metric 1024 pref medium
local ::1 dev lo table local proto kernel metric 0 pref medium
local fe80::5aad:8063:9974:c887 dev wlp11s0 table local proto kernel metric 0 pref medium
multicast ff00::/8 dev wlp11s0 table local proto kernel metric 256 pref medium
```

And with the debug build, I found the following info in log:
```
[localip_linux.c 280, 21:11:51.683] Starting local IP detection with showType=0x812, namePrefix=''
[localip_linux.c 290, 21:11:51.683] Successfully retrieved interface addresses
[localip_linux.c 312, 21:11:51.683] Skipping loopback interface lo
[localip_linux.c 305, 21:11:51.683] Skipping interface eno1 (not running)
[localip_linux.c 326, 21:11:51.683] Skipping interface wlp11s0 (unsupported address family 17)
[localip_linux.c 312, 21:11:51.683] Skipping loopback interface lo
[netif_linux.c  12, 21:11:51.683] Starting IPv4 default route detection
[netif_linux.c  20, 21:11:51.683] Created netlink socket: fd=3
[netif_linux.c  23, 21:11:51.683] Process PID: 33697
[netif_linux.c  36, 21:11:51.683] Successfully bound socket
[netif_linux.c  85, 21:11:51.683] Sent netlink request: 36 bytes
[netif_linux.c 108, 21:11:51.683] Received netlink response: 480 bytes
[netif_linux.c 154, 21:11:51.683] Processing IPv4 default route candidate #1
[netif_linux.c 173, 21:11:51.683] Found interface index: 1
[netif_linux.c 199, 21:11:51.683] Updated best route: ifindex=1, metric=0, prefsrc=0
[netif_linux.c 203, 21:11:51.683] Found zero metric route, stopping further processing
[netif_linux.c 108, 21:11:51.683] Received netlink response: 20 bytes
[netif_linux.c 128, 21:11:51.683] Received NLMSG_DONE, processed 1 routes
[netif_linux.c 213, 21:11:51.683] Found default IPv4 route: interface=lo, index=1, metric=0
[localip_linux.c 337, 21:11:51.683] Skipping interface wlp11s0 (not default route interface)
[localip_linux.c 312, 21:11:51.683] Skipping loopback interface lo
[localip_linux.c 337, 21:11:51.683] Skipping interface wlp11s0 (not default route interface)
[localip_linux.c 395, 21:11:51.683] Found 0 network adapters
[localip_linux.c 593, 21:11:51.683] Cleaned up interface address structures
[localip_linux.c1062, 21:11:51.683] Local IP detection completed, found 0 interfaces
```

### Configuration

```jsonc
{
	"$schema": "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json",
	"logo": {
		"source": "~/.config/fastfetch/logo.png",
		"width": 40,
		"preserveAspectRatio": true,
		"position": "left",
		"padding": {
			"top": 1,
			"left": 3
		}
	},
	"display": {
		"separator": "    "
	},
	"modules": [
		"break",
		{
			"type": "custom",
			"format": "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
		},
		{
			"type": "os",
			"key": "  ",
			"keyColor": "blue"
		},
		{
			"type": "kernel",
			"key": "  ",
			"keyColor": "white"
		},
		{
			"type": "users",
			"key": "  ",
			"keyColor": "cyan",
			"format": "{1}",
			"myselfOnly": true
		},
		{
			"type": "uptime",
			"key": "  󰥔",
			"keyColor": "blue"
		},
		{
			"type": "packages",
			"key": "  󰮯",
			"keyColor": "yellow"
		},
		{
			"type": "wm",
			"key": "  󰨇",
			"keyColor": "blue"
		},
		{
			"type": "terminal",
			"key": "  ",
			"keyColor": "cyan"
		},
		{
			"type": "shell",
			"key": "  ",
			"keyColor": "white"
		},
		{
			"type": "custom",
			"format": "┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫"
		},
		{
			"type": "board",
			"key": "  󰟀",
			"keyColor": "blue"
		},
		{
			"type": "bios",
			"key": "  󰘚",
			"keyColor": "white",
			"format": "{5} - {4} ({2})"
		},
		{
			"type": "cpu",
			"key": "  ",
			"keyColor": "red"
		},
		{
			"type": "gpu",
			"key": "  ",
			"keyColor": "green"
		},
		{
			"type": "memory",
			"key": "  ",
			"keyColor": "yellow"
		},
		{
			"type": "localip",
			"key": "  󰩟",
			"keyColor": "blue",
			"format": "{1} [{4}]"
		},
		{
			"type": "colors",
			"symbol": "circle",
			"key": "  󰌁"
		},
		{
			"type": "custom",
			"format": "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
		}
	]
}
```

### System information

```jsonc
[
  {
    "type": "Title",
    "result": {
      "userName": "mirika",
      "fullUserName": "",
      "hostName": "mirika-arch",
      "homeDir": "/home/mirika/",
      "exePath": "/home/mirika/fastfetch/build/fastfetch",
      "userShell": "/usr/bin/bash"
    },
    "stat": 0.009967999532818794
  },
  {
    "type": "Separator",
    "error": "Unsupported for JSON format",
    "stat": 0.0029460005462169647
  },
  {
    "type": "OS",
    "result": {
      "buildID": "rolling",
      "codename": "",
      "id": "arch",
      "idLike": "",
      "name": "Arch Linux",
      "prettyName": "Arch Linux",
      "variant": "",
      "variantID": "",
      "version": "",
      "versionID": ""
    },
    "stat": 0.023903999477624893
  },
  {
    "type": "Host",
    "error": "neither product_family nor product_name is set by O.E.M.",
    "stat": 0.046556999906897545
  },
  {
    "type": "BIOS",
    "result": {
      "date": "11/12/2025",
      "release": "14.2",
      "vendor": "American Megatrends Inc.",
      "version": "1402",
      "type": "UEFI"
    },
    "stat": 0.018725000321865082
  },
  {
    "type": "Bootmgr",
    "result": {
      "name": "Grub",
      "firmware": "EFI\\grub\\grubx64.efi",
      "order": 0,
      "secureBoot": false
    },
    "stat": 0.11925200000405312
  },
  {
    "type": "Board",
    "result": {
      "name": "ROG STRIX B850-I GAMING WIFI",
      "vendor": "ASUSTeK COMPUTER INC.",
      "version": "Rev 1.xx",
      "serial": ""
    },
    "stat": 0.014417000114917755
  },
  {
    "type": "Chassis",
    "result": {
      "type": "Desktop",
      "vendor": "",
      "version": "",
      "serial": ""
    },
    "stat": 0.022672001272439957
  },
  {
    "type": "Kernel",
    "result": {
      "architecture": "x86_64",
      "name": "Linux",
      "release": "6.18.2-zen2-1-zen",
      "version": "#1 ZEN SMP PREEMPT_DYNAMIC Thu, 18 Dec 2025 18:00:58 +0000",
      "pageSize": 4096
    },
    "stat": 0.003046000376343727
  },
  {
    "type": "InitSystem",
    "result": {
      "name": "systemd",
      "exe": "/usr/lib/systemd/systemd",
      "version": "259-1-arch",
      "pid": 1
    },
    "stat": 0.21746399998664856
  },
  {
    "type": "Uptime",
    "result": {
      "uptime": 20632430,
      "bootTime": "2026-01-01T15:14:05.164+0800"
    },
    "stat": 0.026448998600244522
  },
  {
    "type": "Loadavg",
    "result": [
      1.2,
      0.76,
      0.67
    ],
    "stat": 0.009468000382184982
  },
  {
    "type": "Processes",
    "result": 572,
    "stat": 0.560852998867631
  },
  {
    "type": "Packages",
    "result": {
      "all": 1038,
      "amSystem": 0,
      "amUser": 0,
      "apk": 0,
      "brew": 0,
      "brewCask": 0,
      "choco": 0,
      "dpkg": 0,
      "emerge": 0,
      "eopkg": 0,
      "flatpakSystem": 0,
      "flatpakUser": 0,
      "guixSystem": 0,
      "guixUser": 0,
      "guixHome": 0,
      "hpkgSystem": 0,
      "hpkgUser": 0,
      "linglong": 0,
      "mport": 0,
      "nixDefault": 0,
      "nixSystem": 0,
      "nixUser": 0,
      "opkg": 0,
      "pacman": 1038,
      "pacstall": 0,
      "paludis": 0,
      "pisi": 0,
      "pkg": 0,
      "pkgtool": 0,
      "pkgsrc": 0,
      "macports": 0,
      "rpm": 0,
      "scoopUser": 0,
      "scoopGlobal": 0,
      "snap": 0,
      "soar": 0,
      "kiss": 0,
      "sorcery": 0,
      "winget": 0,
      "xbps": 0,
      "pacmanBranch": ""
    },
    "stat": 0.1709169987589121
  },
  {
    "type": "Shell",
    "result": {
      "exe": "/usr/bin/bash",
      "exeName": "bash",
      "exePath": "/usr/bin/bash",
      "pid": 12769,
      "ppid": 6064,
      "processName": "bash",
      "prettyName": "bash",
      "version": "5.3.9",
      "tty": 4
    },
    "stat": 0.10097699984908104
  },
  {
    "type": "Editor",
    "result": {
      "type": "Visual",
      "name": "vi",
      "path": "/usr/bin/vim",
      "exe": "vim",
      "version": "9.1"
    },
    "stat": 0.11129700019955635
  },
  {
    "type": "Display",
    "result": [
      {
        "id": 858607684,
        "name": "Mi Monitor",
        "primary": false,
        "output": {
          "width": 2560,
          "height": 1440,
          "refreshRate": 164.999,
          "drrStatus": null
        },
        "scaled": {
          "width": 1598,
          "height": 899
        },
        "preferred": {
          "width": 2560,
          "height": 1440,
          "refreshRate": 164.999
        },
        "physical": {
          "width": 600,
          "height": 330
        },
        "rotation": 0,
        "bitDepth": 0,
        "hdrStatus": "Unsupported",
        "type": "External",
        "manufactureDate": {
          "year": 2020,
          "week": 20
        },
        "serial": 1,
        "platformApi": "wayland-zwlr"
      }
    ],
    "stat": 1.8489369992166758
  },
  {
    "type": "Brightness",
    "result": [
      {
        "name": "Mi Monitor",
        "max": 100.0,
        "min": 0.0,
        "current": 80.0,
        "builtin": false
      }
    ],
    "stat": 641.4593819994479
  },
  {
    "type": "Monitor",
    "error": "Monitor module is an alias of Display module",
    "stat": 0.003376999869942665
  },
  {
    "type": "LM",
    "result": {
      "service": "login",
      "type": "Wayland",
      "version": ""
    },
    "stat": 0.029474999755620956
  },
  {
    "type": "DE",
    "error": "No DE found",
    "stat": 0.005529999732971191
  },
  {
    "type": "WM",
    "result": {
      "processName": "Hyprland",
      "prettyName": "Hyprland",
      "protocolName": "Wayland",
      "pluginName": "",
      "version": "0.53.0"
    },
    "stat": 0.013174999505281448
  },
  {
    "type": "WMTheme",
    "error": "Unknown WM: Hyprland",
    "stat": 0.003065001219511032
  },
  {
    "type": "Theme",
    "result": {
      "theme1": "KvLibadwaitaDark [Qt]",
      "theme2": ""
    },
    "stat": 0.05581299960613251
  },
  {
    "type": "Icons",
    "result": {
      "icons1": "Papirus-Dark [Qt]",
      "icons2": ""
    },
    "stat": 0.0036970004439353943
  },
  {
    "type": "Font",
    "result": {
      "display": "Noto Sans (12pt) [Qt]",
      "fonts": [
        "Noto Sans (12pt)",
        "",
        "",
        ""
      ]
    },
    "stat": 0.007575001567602158
  },
  {
    "type": "Cursor",
    "result": {
      "theme": "Adwaita",
      "size": ""
    },
    "stat": 0.026419000700116158
  },
  {
    "type": "Wallpaper",
    "error": "Failed to detect the current wallpaper path",
    "stat": 0.0014019999653100967
  },
  {
    "type": "Terminal",
    "result": {
      "processName": "kitty",
      "exe": "/usr/bin/kitty",
      "exeName": "kitty",
      "exePath": "/usr/bin/kitty",
      "pid": 6064,
      "ppid": 1619,
      "prettyName": "kitty",
      "version": "0.44.0",
      "tty": ""
    },
    "stat": 0.04260899871587753
  },
  {
    "type": "TerminalFont",
    "result": {
      "font": {
        "name": "Sarasa-Fixed-SC-Regular",
        "size": "16",
        "styles": [],
        "pretty": "Sarasa-Fixed-SC-Regular (16pt)"
      },
      "fallback": {
        "name": "",
        "size": "",
        "styles": [],
        "pretty": ""
      }
    },
    "stat": 1.287373000755906
  },
  {
    "type": "TerminalSize",
    "result": {
      "columns": 149,
      "rows": 30,
      "width": 2533,
      "height": 1290
    },
    "stat": 0.007113000378012657
  },
  {
    "type": "TerminalTheme",
    "result": {
      "fg": {
        "r": 221,
        "g": 221,
        "b": 221,
        "dark": false
      },
      "bg": {
        "r": 0,
        "g": 0,
        "b": 0,
        "dark": true
      }
    },
    "stat": 1.1215360015630722
  },
  {
    "type": "CPU",
    "result": {
      "cpu": "AMD Ryzen 9 9900X",
      "vendor": "AuthenticAMD",
      "packages": 1,
      "cores": {
        "physical": 12,
        "logical": 24,
        "online": 24
      },
      "frequency": {
        "base": 3695,
        "max": 5662
      },
      "coreTypes": [
        {
          "count": 24,
          "freq": 5662
        }
      ],
      "temperature": 48.875,
      "march": "x86_64-v4",
      "numaNodes": 1
    },
    "stat": 0.39980299957096577
  },
  {
    "type": "CPUCache",
    "result": {
      "l1": [
        {
          "size": 49152,
          "num": 12,
          "lineSize": 64,
          "type": "data"
        },
        {
          "size": 32768,
          "num": 12,
          "lineSize": 64,
          "type": "instruction"
        }
      ],
      "l2": [
        {
          "size": 1048576,
          "num": 12,
          "lineSize": 64,
          "type": "unified"
        }
      ],
      "l3": [
        {
          "size": 33554432,
          "num": 2,
          "lineSize": 64,
          "type": "unified"
        }
      ]
    },
    "stat": 1.3046460002660751
  },
  {
    "type": "CPUUsage",
    "result": [
      4.761904761904762,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      4.761904761904762,
      0.0,
      0.0
    ],
    "stat": 200.37190300039947
  },
  {
    "type": "GPU",
    "result": [
      {
        "index": null,
        "coreCount": 84,
        "coreUsage": 5.0,
        "memory": {
          "dedicated": {
            "total": 21405847552,
            "used": 1287393280
          },
          "shared": {
            "total": 16220737536,
            "used": 176746496
          },
          "type": "GDDR6"
        },
        "driver": "amdgpu",
        "name": "AMD Radeon RX 7900 XT",
        "temperature": 48.0,
        "type": "Discrete",
        "vendor": "AMD",
        "platformApi": "DRM (card1)",
        "frequency": 2025,
        "deviceId": 768
      },
      {
        "index": null,
        "coreCount": 2,
        "coreUsage": 25.0,
        "memory": {
          "dedicated": {
            "total": 780320768,
            "used": 23019520
          },
          "shared": {
            "total": 16222527488,
            "used": 16265216
          },
          "type": "DDR5"
        },
        "driver": "amdgpu",
        "name": "AMD Ryzen 9 9900X 12-Core Processor",
        "temperature": 47.0,
        "type": "Integrated",
        "vendor": "AMD",
        "platformApi": "DRM (card0)",
        "frequency": 2200,
        "deviceId": 3840
      }
    ],
    "stat": 4.361058998852968
  },
  {
    "type": "Memory",
    "result": {
      "total": 32473333760,
      "used": 6626590720
    },
    "stat": 0.015008000656962395
  },
  {
    "type": "PhysicalMemory",
    "error": "Failed to get SMBIOS data",
    "stat": 0.00748400017619133
  },
  {
    "type": "Swap",
    "result": [
      {
        "name": "/dev/dm-8",
        "used": 0,
        "total": 34359734272
      }
    ],
    "stat": 0.012453999370336533
  },
  {
    "type": "Disk",
    "result": [
      {
        "bytes": {
          "available": 44712501248,
          "free": 45743251456,
          "total": 85899345920,
          "used": 40156094464
        },
        "files": {
          "total": null,
          "used": null
        },
        "filesystem": "btrfs",
        "mountpoint": "/",
        "mountFrom": "/dev/mapper/Root-archlinux",
        "name": "",
        "volumeType": [
          "Regular"
        ],
        "createTime": "2025-01-21T15:56:13.000+0800"
      },
      {
        "bytes": {
          "available": 105111781376,
          "free": 108288458752,
          "total": 223338299392,
          "used": 115049840640
        },
        "files": {
          "total": null,
          "used": null
        },
        "filesystem": "btrfs",
        "mountpoint": "/home",
        "mountFrom": "/dev/mapper/Home-archlinux",
        "name": "",
        "volumeType": [
          "Regular"
        ],
        "createTime": "2025-01-21T16:13:44.000+0800"
      }
    ],
    "stat": 0.13375800102949142
  },
  {
    "type": "Btrfs",
    "result": [
      {
        "name": "",
        "uuid": "ad2684f0-ca55-4ed6-a3e8-9c5396e918ae",
        "devices": "dm-5",
        "features": "free_space_tree,no_holes,compress_zstd,skinny_metadata,extended_iref",
        "generation": 249089,
        "nodeSize": 16384,
        "sectorSize": 4096,
        "totalSize": 223338299392,
        "allocation": [
          {
            "type": "data",
            "profile": "single",
            "copies": 1,
            "used": 113913724928,
            "total": 143863578624
          },
          {
            "type": "metadata",
            "profile": "dup",
            "copies": 2,
            "used": 473841664,
            "total": 2147483648
          },
          {
            "type": "system",
            "profile": "dup",
            "copies": 2,
            "used": 49152,
            "total": 8388608
          }
        ]
      },
      {
        "name": "",
        "uuid": "e09b7931-b208-46b1-969f-49281a730d02",
        "devices": "dm-9",
        "features": "free_space_tree,no_holes,skinny_metadata,verity,extended_iref",
        "generation": 250929,
        "nodeSize": 16384,
        "sectorSize": 4096,
        "totalSize": 85899345920,
        "allocation": [
          {
            "type": "data",
            "profile": "single",
            "copies": 1,
            "used": 39021535232,
            "total": 53695479808
          },
          {
            "type": "metadata",
            "profile": "dup",
            "copies": 2,
            "used": 519471104,
            "total": 1073741824
          },
          {
            "type": "system",
            "profile": "dup",
            "copies": 2,
            "used": 16384,
            "total": 8388608
          }
        ]
      }
    ],
    "stat": 0.10471400059759617
  },
  {
    "type": "Zpool",
    "error": "dlopen libzfs.so failed",
    "stat": 0.079347999766469
  },
  {
    "type": "Battery",
    "result": [],
    "stat": 0.015298999845981598
  },
  {
    "type": "PowerAdapter",
    "result": [],
    "stat": 0.007904000580310822
  },
  {
    "type": "Player",
    "error": "Player module is an alias of Media module",
    "stat": 0.0011630002409219742
  },
  {
    "type": "Media",
    "error": "No media found",
    "stat": 0.8826909996569157
  },
  {
    "type": "PublicIp",
    "error": "Invalid response",
    "stat": 900.9352609999478
  },
  {
    "type": "LocalIp",
    "result": [
      {
        "name": "lo",
        "defaultRoute": {
          "ipv4": true,
          "ipv6": false
        },
        "ipv4": "127.0.0.1/8",
        "ipv6": "",
        "mac": "00:00:00:00:00:00",
        "mtu": 65536,
        "speed": -1,
        "flags": "UP,LOOPBACK,RUNNING,LOWER_UP"
      }
    ],
    "stat": 0.16242200136184692
  },
  {
    "type": "DNS",
    "result": [
      "10.116.2.61"
    ],
    "stat": 0.0441220011562109
  },
  {
    "type": "Wifi",
    "result": [
      {
        "inf": {
          "description": "wlp11s0",
          "status": "up"
        },
        "conn": {
          "status": "connected",
          "ssid": "SSID",
          "bssid": "9E:DD:AE:AC:3C:5A",
          "protocol": "802.11ac (Wi-Fi 5)",
          "security": "WPA2",
          "signalQuality": 100.0,
          "rxRate": 866.7,
          "txRate": 866.7,
          "channel": 40,
          "frequency": 5200
        }
      }
    ],
    "stat": 1.968028999865055
  },
  {
    "type": "DateTime",
    "result": "2026-01-01T20:57:59.352+0800",
    "stat": 0.016231000423431396
  },
  {
    "type": "Locale",
    "result": "zh_CN.UTF-8",
    "stat": 0.0024340003728866577
  },
  {
    "type": "Vulkan",
    "result": {
      "apiVersion": "1.4.328",
      "conformanceVersion": "1.4",
      "driver": "radv [Mesa 25.3.2-arch1.1]",
      "gpus": [
        {
          "type": "Discrete",
          "vendor": "AMD",
          "name": "AMD Radeon RX 7900 XT (RADV NAVI31)",
          "driver": "Mesa 25.3.2-arch1.1",
          "platformApi": "Vulkan 1.4.328",
          "deviceId": 29772,
          "memory": {
            "dedicated": {
              "total": 21458059264,
              "used": null
            },
            "shared": {
              "total": 16236666880,
              "used": null
            }
          },
          "deviceId": 29772
        },
        {
          "type": "Integrated",
          "vendor": "AMD",
          "name": "AMD Ryzen 9 9900X 12-Core Processor (RADV RAPHAEL_MENDOCINO)",
          "driver": "Mesa 25.3.2-arch1.1",
          "platformApi": "Vulkan 1.4.328",
          "deviceId": 5056,
          "memory": {
            "dedicated": {
              "total": 0,
              "used": null
            },
            "shared": {
              "total": 17041973248,
              "used": null
            }
          },
          "deviceId": 5056
        }
      ]
    },
    "stat": 11.125265998765826
  },
  {
    "type": "OpenGL",
    "result": {
      "version": "4.6 (Compatibility Profile) Mesa 25.3.2-arch1.1",
      "renderer": "AMD Ryzen 9 9900X 12-Core Processor (radeonsi, raphael_mendocino, LLVM 21.1.6, DRM 3.64, 6.18.2-zen2-1-zen)",
      "vendor": "AMD",
      "slv": "4.60",
      "library": "EGL 1.5"
    },
    "stat": 11.494622999802232
  },
  {
    "type": "OpenCL",
    "error": "fastfetch was compiled without OpenCL support",
    "stat": 0.0017740000039339066
  },
  {
    "type": "Users",
    "result": [
      {
        "name": "mirika",
        "hostName": "",
        "sessionName": "tty1",
        "clientIp": "",
        "loginTime": "2026-01-01T15:14:20.183+0800"
      }
    ],
    "stat": 0.03816100023686886
  },
  {
    "type": "Bluetooth",
    "result": [],
    "stat": 0.008305000141263008
  },
  {
    "type": "BluetoothRadio",
    "result": [
      {
        "name": "mirika-arch",
        "address": "A8:E2:91:0B:6C:F9",
        "lmpVersion": 13,
        "lmpSubversion": null,
        "vendor": "Unknown",
        "enabled": true,
        "discoverable": false,
        "connectable": true
      }
    ],
    "stat": 0.21481999941170216
  },
  {
    "type": "Sound",
    "result": [
      {
        "active": true,
        "main": false,
        "volume": 0,
        "name": "Navi 31 HDMI/DP Audio Digital Stereo (HDMI 2)",
        "identifier": "alsa_output.pci-0000_03_00.1.hdmi-stereo-extra1",
        "platformApi": "PipeWire 1.4.9"
      },
      {
        "active": true,
        "main": false,
        "volume": 0,
        "name": "USB Audio S/PDIF Output",
        "identifier": "alsa_output.usb-Generic_USB_Audio-00.HiFi__SPDIF__sink",
        "platformApi": "PipeWire 1.4.9"
      },
      {
        "active": true,
        "main": true,
        "volume": 0,
        "name": "USB Audio Speakers",
        "identifier": "alsa_output.usb-Generic_USB_Audio-00.HiFi__Speaker__sink",
        "platformApi": "PipeWire 1.4.9"
      },
      {
        "active": false,
        "main": false,
        "volume": 100,
        "name": "USB Audio Front Headphones",
        "identifier": "alsa_output.usb-Generic_USB_Audio-00.HiFi__Headphones__sink",
        "platformApi": "PipeWire 1.4.9"
      }
    ],
    "stat": 2.43610000051558
  },
  {
    "type": "Camera",
    "result": [
      {
        "name": "HIK 2K Camera: HIK 2K Camera",
        "vendor": "",
        "colorSpace": "sRGB",
        "id": "usb-0000:0f:00.4-2.4",
        "width": 640,
        "height": 480
      }
    ],
    "stat": 0.024705998599529266
  },
  {
    "type": "Gamepad",
    "result": [],
    "stat": 0.023524001240730286
  },
  {
    "type": "Mouse",
    "result": [
      {
        "serial": "",
        "name": "ASUSTeK ROG STRIX SCOPE NX TKL MOONLIGHT WHITE Mouse",
        "ignored": false
      },
      {
        "serial": "",
        "name": "VXE VXE Mouse 1K Dongle Mouse",
        "ignored": false
      }
    ],
    "stat": 0.044742999598383904
  },
  {
    "type": "Keyboard",
    "result": [
      {
        "serial": "",
        "name": "ASUSTeK ROG STRIX SCOPE NX TKL MOONLIGHT WHITE",
        "ignored": false
      },
      {
        "serial": "",
        "name": "VXE VXE Mouse 1K Dongle",
        "ignored": false
      }
    ],
    "stat": 0.04891100153326988
  },
  {
    "type": "Weather",
    "error": "Empty server response received",
    "stat": 0.03801099956035614
  },
  {
    "type": "NetIO",
    "result": [
      {
        "name": "lo",
        "defaultRoute": true,
        "txBytes": 7157,
        "rxBytes": 7157,
        "txPackets": 42,
        "rxPackets": 42,
        "rxErrors": 0,
        "txErrors": 0,
        "rxDrops": 0,
        "txDrops": 0
      }
    ],
    "stat": 0.04029499925673008
  },
  {
    "type": "DiskIO",
    "result": [
      {
        "name": "Samsung SSD 980 PRO 250GB",
        "devPath": "/dev/nvme0n1",
        "bytesRead": 0,
        "bytesWritten": 0,
        "readCount": 0,
        "writeCount": 0
      },
      {
        "name": "511BS0512HB",
        "devPath": "/dev/nvme1n1",
        "bytesRead": 0,
        "bytesWritten": 0,
        "readCount": 0,
        "writeCount": 0
      },
      {
        "name": "ATA Samsung SSD 870",
        "devPath": "/dev/sda",
        "bytesRead": 0,
        "bytesWritten": 0,
        "readCount": 0,
        "writeCount": 0
      }
    ],
    "stat": 0.09267199970781803
  },
  {
    "type": "PhysicalDisk",
    "result": [
      {
        "name": "Samsung SSD 980 PRO 250GB",
        "devPath": "/dev/nvme0n1",
        "interconnect": "NVMe",
        "kind": "SSD",
        "size": 250059350016,
        "serial": "S5GZNF0R206921T",
        "removable": false,
        "readOnly": false,
        "revision": "5B2QGXA7",
        "temperature": 43.85
      },
      {
        "name": "511BS0512HB",
        "devPath": "/dev/nvme1n1",
        "interconnect": "NVMe",
        "kind": "SSD",
        "size": 512110190592,
        "serial": "521221014052BC01233",
        "removable": false,
        "readOnly": false,
        "revision": "ECFO15.5",
        "temperature": 30.85
      },
      {
        "name": "ATA Samsung SSD 870",
        "devPath": "/dev/sda",
        "interconnect": "ATA",
        "kind": "SSD",
        "size": 1000204886016,
        "serial": "",
        "removable": false,
        "readOnly": false,
        "revision": "2B6Q",
        "temperature": null
      }
    ],
    "stat": 12.775243999436498
  },
  {
    "type": "TPM",
    "result": {
      "version": "2.0",
      "description": "TPM 2.0 Device"
    },
    "stat": 0.08129099942743778
  },
  {
    "type": "Version",
    "result": {
      "projectName": "fastfetch",
      "sysName": "Linux",
      "architecture": "x86_64",
      "version": "2.56.1",
      "versionGit": "2.56.1-16-g0b1e2fab",
      "cmakeBuiltType": "Debug",
      "compileTime": "Jan  1 2026, 18:51:26",
      "compiler": "gcc 15.2.1",
      "debugMode": true,
      "libc": "glibc 2.42"
    },
    "stat": 0.004808999598026276
  },
  {
    "type": "Break",
    "error": "Unsupported for JSON format",
    "stat": 0.0007210001349449158
  },
  {
    "type": "Colors",
    "error": "Unsupported for JSON format",
    "stat": 0.0012630000710487366
  }
]
```

### Features built-in

```text
threads
vulkan
wayland
xcb-randr
xrandr
drm
drm_amdgpu
gio
dconf
dbus
imagemagick7
zlib
sqlite3
egl
glx
libpulse
libddcutil
libelf
libzfs
linux/videodev2
linux/wireless
```

## Issue 7 (#2129): [BUG] CPU speed missing on IBM Machine 8561 (IBM/s390x architecture)

### Read the FAQ first

- [x] I have checked the FAQ but the issue is not covered

### Description

Fastfetch doesn't show CPU speed of IBM Machine 8561 mainframe. Here is output of fastfetch:

<img width="722" height="306" alt="Image" src="https://github.com/user-attachments/assets/1a2eecba-1524-48a8-a452-ec9e07da2a01" />

And JSON output:
```
  {
    "type": "CPU",
    "result": {
      "cpu": "Machine 8561",
      "vendor": "IBM/S390",
      "packages": 2,
      "cores": {
        "physical": 2,
        "logical": 2,
        "online": 2
      },
      "frequency": {
        "base": 0,
        "max": 0
      },
      "coreTypes": [],
      "temperature": null
    }
  },
```

At same time, Neofetch show CPU speed correctly (5.2Ghz):

<img width="709" height="307" alt="Image" src="https://github.com/user-attachments/assets/6cc22807-2b22-48cb-a0d0-21f62d7cf7f0" />

Here is output of /proc/cpuinfo:
```
vendor_id       : IBM/S390
# processors    : 2
bogomips per cpu: 3241.00
max thread id   : 0
features        : esan3 zarch stfle msa ldisp eimm dfp edat etf3eh highgprs te vx vxd vxe gs vxe2 vxp sort dflt sie 
facilities      : 0 1 2 3 4 6 7 8 9 10 12 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 30 31 32 33 34 35 36 37 38 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 57 58 59 60 61 69 70 71 72 73 74 75 76 77 80 81 82 128 129 130 131 133 134 135 146 147 148 150 151 152 155 156 168
cache0          : level=1 type=Data scope=Private size=128K line_size=256 associativity=8
cache1          : level=1 type=Instruction scope=Private size=128K line_size=256 associativity=8
cache2          : level=2 type=Data scope=Private size=4096K line_size=256 associativity=8
cache3          : level=2 type=Instruction scope=Private size=4096K line_size=256 associativity=8
cache4          : level=3 type=Unified scope=Shared size=262144K line_size=256 associativity=32
cache5          : level=4 type=Unified scope=Shared size=983040K line_size=256 associativity=60
processor 0: version = FF,  identification = 0918E8,  machine = 8561
processor 1: version = FF,  identification = 0918E8,  machine = 8561

cpu number      : 0
physical id     : 0
core id         : 0
book id         : 0
drawer id       : 0
dedicated       : 0
address         : 0
siblings        : 1
cpu cores       : 1
version         : FF
identification  : 0918E8
machine         : 8561
cpu MHz dynamic : 5200
cpu MHz static  : 5200

cpu number      : 1
physical id     : 1
core id         : 1
book id         : 1
drawer id       : 1
dedicated       : 0
address         : 1
siblings        : 1
cpu cores       : 1
version         : FF
identification  : 0918E8
machine         : 8561
cpu MHz dynamic : 5200
cpu MHz static  : 5200
```

Tested on both versions 2.48 from EPEL and latest nightly build of 2.56.1

### Version used

fastfetch 2.56.1 (s390x)

### Bug prevalence

Always

### Regression

No

### Installation

GitHub Actions (nightly)

### Package manager

RPM for nightly build of s390x variant

### Screenshots

_No response_

### Configuration

```jsonc

```

### System information

```jsonc
[
  {
    "type": "Title",
    "result": {
      "userName": "linux1",
      "fullUserName": "linux1",
      "homeDir": "/home/linux1/",
      "exePath": "/usr/bin/fastfetch",
      "userShell": "/bin/bash"
    },
    "stat": 0.005284999962896109
  },
  {
    "type": "Separator",
    "error": "Unsupported for JSON format",
    "stat": 0.0005740001797676086
  },
  {
    "type": "OS",
    "result": {
      "buildID": "",
      "codename": "",
      "id": "rhel",
      "idLike": "fedora",
      "name": "Red Hat Enterprise Linux",
      "prettyName": "Red Hat Enterprise Linux 9.7 (Plow)",
      "variant": "",
      "variantID": "",
      "version": "9.7 (Plow)",
      "versionID": "9.7"
    },
    "stat": 0.05507799983024597
  },
  {
    "type": "Host",
    "error": "neither product_family nor product_name is set by O.E.M.",
    "stat": 0.08417499996721745
  },
  {
    "type": "BIOS",
    "result": {
      "date": "",
      "release": "",
      "vendor": "",
      "version": "",
      "type": "BIOS"
    },
    "stat": 0.011315000243484974
  },
  {
    "type": "Bootmgr",
    "error": "Failed to read efivar: BootCurrent",
    "stat": 0.0030259997583925724
  },
  {
    "type": "Board",
    "error": "board_name is not set.",
    "stat": 0.0074339997954666615
  },
  {
    "type": "Chassis",
    "error": "chassis_type is not set by O.E.M.",
    "stat": 0.00801499979570508
  },
  {
    "type": "Kernel",
    "result": {
      "architecture": "s390x",
      "name": "Linux",
      "release": "5.14.0-570.42.2.el9_6.s390x",
      "version": "#1 SMP Mon Sep 8 12:10:08 EDT 2025",
      "pageSize": 4096
    },
    "stat": 0.001802000217139721
  },
  {
    "type": "InitSystem",
    "result": {
      "name": "systemd",
      "exe": "/usr/lib/systemd/systemd",
      "version": "252-55.el9_7.2",
      "pid": 1
    },
    "stat": 0.5398500002920628
  },
  {
    "type": "Uptime",
    "result": {
      "uptime": 2913150,
      "bootTime": "2026-01-03T10:08:39.148-0600"
    },
    "stat": 0.04427800001576543
  },
  {
    "type": "Loadavg",
    "result": [
      0.01,
      0.0,
      0.0
    ],
    "stat": 0.008167000021785498
  },
  {
    "type": "Processes",
    "result": 101,
    "stat": 0.15577000007033348
  },
  {
    "type": "Packages",
    "result": {
      "all": 525,
      "amSystem": 0,
      "amUser": 0,
      "apk": 0,
      "brew": 0,
      "brewCask": 0,
      "choco": 0,
      "dpkg": 0,
      "emerge": 0,
      "eopkg": 0,
      "flatpakSystem": 0,
      "flatpakUser": 0,
      "guixSystem": 0,
      "guixUser": 0,
      "guixHome": 0,
      "hpkgSystem": 0,
      "hpkgUser": 0,
      "linglong": 0,
      "mport": 0,
      "nixDefault": 0,
      "nixSystem": 0,
      "nixUser": 0,
      "opkg": 0,
      "pacman": 0,
      "pacstall": 0,
      "paludis": 0,
      "pisi": 0,
      "pkg": 0,
      "pkgtool": 0,
      "pkgsrc": 0,
      "macports": 0,
      "rpm": 525,
      "scoopUser": 0,
      "scoopGlobal": 0,
      "snap": 0,
      "soar": 0,
      "kiss": 0,
      "sorcery": 0,
      "winget": 0,
      "xbps": 0,
      "pacmanBranch": ""
    },
    "stat": 0.0973160001449287
  },
  {
    "type": "Shell",
    "result": {
      "exe": "bash",
      "exeName": "bash",
      "exePath": "/usr/bin/bash",
      "pid": 1725,
      "ppid": 1724,
      "processName": "bash",
      "prettyName": "bash",
      "version": "5.1.8",
      "tty": 0
    },
    "stat": 0.20789900003001094
  },
  {
    "type": "Editor",
    "error": "$VISUAL or $EDITOR not set",
    "stat": 0.001902999822050333
  },
  {
    "type": "Display",
    "error": "Couldn't detect display",
    "stat": 0.3836969998665154
  },
  {
    "type": "Brightness",
    "result": [],
    "stat": 0.002394000068306923
  },
  {
    "type": "Monitor",
    "error": "Monitor module is an alias of Display module",
    "stat": 0.0005020000971853733
  },
  {
    "type": "LM",
    "result": {
      "service": "sshd",
      "type": "TTY",
      "version": "8.7p1"
    },
    "stat": 4.576855999883264
  },
  {
    "type": "DE",
    "error": "No DE found",
    "stat": 0.0012240000069141388
  },
  {
    "type": "WM",
    "error": "No WM found",
    "stat": 0.001228999812155962
  },
  {
    "type": "WMTheme",
    "error": "WM Theme needs successful WM detection",
    "stat": 0.0009639998897910118
  },
  {
    "type": "Theme",
    "error": "Theme isn't supported in TTY",
    "stat": 0.001246000174432993
  },
  {
    "type": "Icons",
    "error": "Icons aren't supported in TTY",
    "stat": 0.001462000422179699
  },
  {
    "type": "Font",
    "error": "Font isn't supported in TTY",
    "stat": 0.0009499997831881046
  },
  {
    "type": "Cursor",
    "error": "Cursor isn't supported in TTY",
    "stat": 0.0016710003837943077
  },
  {
    "type": "Wallpaper",
    "error": "Failed to detect the current wallpaper path",
    "stat": 0.024633999913930893
  },
  {
    "type": "Terminal",
    "result": {
      "processName": "sshd",
      "exe": "sshd: linux1@pts/0",
      "exeName": "0",
      "exePath": "/proc/1724/exe",
      "pid": 1724,
      "ppid": 1711,
      "prettyName": "sshd",
      "version": "",
      "tty": ""
    },
    "stat": 0.15615100041031837
  },
  {
    "type": "TerminalFont",
    "error": "Unknown terminal: sshd",
    "stat": 0.003979000262916088
  },
  {
    "type": "TerminalSize",
    "result": {
      "columns": 212,
      "rows": 37,
      "width": 1699,
      "height": 677
    },
    "stat": 0.0060350000858306885
  },
  {
    "type": "TerminalTheme",
    "error": "Failed to detect terminal theme",
    "stat": 100.19560200022534
  },
  {
    "type": "CPU",
    "result": {
      "cpu": "Machine 8561",
      "vendor": "IBM/S390",
      "packages": 2,
      "cores": {
        "physical": 2,
        "logical": 2,
        "online": 2
      },
      "frequency": {
        "base": 0,
        "max": 0
      },
      "coreTypes": [],
      "temperature": null,
      "march": null,
      "numaNodes": 1
    },
    "stat": 0.1536730001680553
  },
  {
    "type": "CPUCache",
    "result": {
      "l1": [
        {
          "size": 131072,
          "num": 2,
          "lineSize": 256,
          "type": "data"
        },
        {
          "size": 131072,
          "num": 2,
          "lineSize": 256,
          "type": "instruction"
        }
      ],
      "l2": [
        {
          "size": 4194304,
          "num": 1,
          "lineSize": 256,
          "type": "data"
        },
        {
          "size": 4194304,
          "num": 1,
          "lineSize": 256,
          "type": "instruction"
        }
      ]
    },
    "stat": 0.18405400030314922
  },
  {
    "type": "CPUUsage",
    "result": [
      0.0,
      0.0
    ],
    "stat": 200.24635799974203
  },
  {
    "type": "GPU",
    "error": "GPU detection failed",
    "stat": 0.25764100020751357
  },
  {
    "type": "Memory",
    "result": {
      "total": 3647541248,
      "used": 1253367808
    },
    "stat": 0.020452999975532293
  },
  {
    "type": "PhysicalMemory",
    "error": "Failed to get SMBIOS data",
    "stat": 0.006804000120609999
  },
  {
    "type": "Swap",
    "result": [],
    "stat": 0.008262000046670437
  },
  {
    "type": "Disk",
    "result": [
      {
        "bytes": {
          "available": 47605501952,
          "free": 49869664256,
          "total": 52729708544,
          "used": 2860044288
        },
        "files": {
          "total": 3251200,
          "used": 42547
        },
        "filesystem": "ext4",
        "mountpoint": "/",
        "mountFrom": "/dev/dasda1",
        "name": "",
        "volumeType": [
          "Regular"
        ],
        "createTime": "2022-11-07T23:58:48.000-0600"
      }
    ],
    "stat": 0.19547599973157048
  },
  {
    "type": "Btrfs",
    "error": "opendir(\"/sys/fs/btrfs\") == NULL",
    "stat": 0.005213000345975161
  },
  {
    "type": "Zpool",
    "error": "dlopen libzfs.so failed",
    "stat": 0.11011900007724762
  },
  {
    "type": "Battery",
    "result": [],
    "stat": 0.0063320002518594265
  },
  {
    "type": "PowerAdapter",
    "result": [],
    "stat": 0.003684000112116337
  },
  {
    "type": "Player",
    "error": "Player module is an alias of Media module",
    "stat": 0.0004719998687505722
  },
  {
    "type": "Media",
    "error": "No media found",
    "stat": 1.7788869999349117
  },
  {
    "type": "DNS",
    "result": [
      "8.8.8.8",
      "9.9.9.9"
    ],
    "stat": 0.007898999843746424
  },
  {
    "type": "Wifi",
    "result": [],
    "stat": 0.035029999911785126
  },
  {
    "type": "DateTime",
    "result": "2026-01-03T10:57:12.607-0600",
    "stat": 0.004749999847263098
  },
  {
    "type": "Locale",
    "result": "en_US.UTF-8",
    "stat": 0.0009610000997781754
  },
  {
    "type": "Vulkan",
    "error": "dlopen libvulkan.so failed",
    "stat": 0.00138000026345253
  },
  {
    "type": "OpenGL",
    "error": "dlopen glx failed",
    "stat": 0.06307899998500943
  },
  {
    "type": "OpenCL",
    "error": "dlopen libOpenCL.so failed",
    "stat": 0.0009449999779462814
  },
  {
    "type": "Bluetooth",
    "result": [],
    "stat": 0.003647000063210726
  },
  {
    "type": "BluetoothRadio",
    "error": "Failed to open /sys/class/bluetooth",
    "stat": 0.0017810002900660038
  },
  {
    "type": "Sound",
    "error": "Failed to load libpulse.so",
    "stat": 0.024127000011503696
  },
  {
    "type": "Camera",
    "result": [],
    "stat": 0.0035959999077022076
  },
  {
    "type": "Gamepad",
    "result": [],
    "stat": 0.0058200000785291195
  },
  {
    "type": "Mouse",
    "result": [],
    "stat": 0.003432000055909157
  },
  {
    "type": "Keyboard",
    "error": "opendir(\"/dev/input/by-path/\") == NULL",
    "stat": 0.0031059999018907547
  },
  {
    "type": "Weather",
    "error": "Empty server response received",
    "stat": 1016.455330000259
  },
  {
    "type": "NetIO",
    "result": [
      {
        "name": "enc1000",
        "defaultRoute": true,
        "txBytes": 1005,
        "rxBytes": 9282,
        "txPackets": 10,
        "rxPackets": 199,
        "rxErrors": 0,
        "txErrors": 0,
        "rxDrops": 0,
        "txDrops": 0
      }
    ],
    "stat": 0.13616600027307868
  },
  {
    "type": "DiskIO",
    "result": [
      {
        "name": "dasda",
        "devPath": "/dev/dasda",
        "bytesRead": 0,
        "bytesWritten": 0,
        "readCount": 0,
        "writeCount": 0
      }
    ],
    "stat": 0.08783800015226007
  },
  {
    "type": "PhysicalDisk",
    "result": [
      {
        "name": "dasda",
        "devPath": "/dev/dasda",
        "interconnect": "",
        "kind": "SSD",
        "size": 53687091200,
        "serial": "",
        "removable": false,
        "readOnly": false,
        "revision": "",
        "temperature": null
      }
    ],
    "stat": 0.07354399980977178
  },
  {
    "type": "TPM",
    "error": "TPM device is not found",
    "stat": 0.006790999788790941
  },
  {
    "type": "Version",
    "result": {
      "projectName": "fastfetch",
      "sysName": "Linux",
      "architecture": "s390x",
      "version": "2.56.1",
      "versionGit": "",
      "cmakeBuiltType": "RelWithDebInfo",
      "compileTime": "Jan  1 2026, 15:43:27",
      "compiler": "gcc 13.1.0",
      "debugMode": false,
      "libc": "glibc 2.35"
    },
    "stat": 0.004125999752432108
  },
  {
    "type": "Break",
    "error": "Unsupported for JSON format",
    "stat": 0.0009110001847147942
  },
  {
    "type": "Colors",
    "error": "Unsupported for JSON format",
    "stat": 0.0007520001381635666
  }
]
```

### Features built-in

```text
threads
vulkan
wayland
xcb-randr
xrandr
drm
drm_amdgpu
gio
dconf
dbus
imagemagick6
zlib
sqlite3
rpm
egl
glx
opencl
libpulse
libelf
libzfs
linux/videodev2
linux/wireless
```

## Issue 8 (#2124): [FEAT] Get current logo ansi with json format

### Description

I love to get the system logo ascii/ansi when running `fastfetch --format json`, with all ansi escape sequences:

```jsonc
[
  // ...
  {
    "type": "Logo",
    "result": "\e[34m        ,'''''. \e[0m\n\e[34m       |   ,.  |\e[0m\n\e[34m       |  |  '_'\e[0m\n\e[34m  ,....|  |..   \e[0m\n\e[34m.'  ,_;|   ..'  \e[0m\n\e[34m|  |   |  |     \e[0m\n\e[34m|  ',_,'  |     \e[0m\n\e[34m '.     ,'      \e[0m\n\e[34m   '''''        \e[0m"
  },
  // ...
]
```


### Motivation

So that user can have more freedom to display system information with other tool. Thanks!

### Additional context

https://github.com/fastfetch-cli/fastfetch/tree/dev/src/logo/ascii

## Issue 9 (#2136): [BUG] shell version info lost after upgrade

### Read the FAQ first

- [x] I have checked the FAQ but the issue is not covered

### Description

Termux on Android.  I happened to capture `fastfetch` output before and after `apt-get dist-upgrade` in which both `bash` and `fastfetch` were updated.  Before, output displayed 'Shell: bash 5.3.8'; after, only 'Shell: bash'.

I force-reinstalled the previous versions (5.3.8 and 2.56.0, regressing from 5.3.9 and 2.56.1) -- and it was not fixed! 

Then ran the following, which seems to show the problem: 
```
$ fastfetch -s shell --format json
[
  {
    "type": "Shell",
    "result": {
      "exe": "/data/data/com.termux/files/usr/bin/bash",
      "exeName": "bash",
      "exePath": "/data/data/com.termux/files/usr/bin/bash.dpkg-tmp (deleted)",
      "pid": 19552,
      "ppid": 29706,
      "processName": "bash",
      "prettyName": "bash",
      "version": "",
      "tty": 1
    }
  }
]
```
The shell I'm invoking from is still running an old `bash` binary, now in fact replaced *twice* (and will be a 3rd time when I re-update to current).

I haven't checked the `fastfetch` source, but from this JSON output I suspect it is trying to run `"/data/data/com.termux/files/usr/bin/bash.dpkg-tmp (deleted)" --version`, with the predictable result 'ENOENT'.  Even if it successfully edits the pseudo-symlink down to `/data/data/com.termux/files/usr/bin/bash.dpkg-tmp` and tries to run that, it will still fail, as no file exists at that path.  It is merely a temporary artifact of the `dpkg` installation procedure; apparently `dpkg` renames a to-be-overwritten file out of the way before writing the new and deleting the old.  The kernel, as exposed in /proc, remembers the last name the old file had before being removed.  (and, of course, a fully intact version of that old file continues to exist, as witnessed by being able to run the `/proc/%d/exe` -- it necessarily _must_ continue to exist until all open references to it, including processes which have it open as their running image, are closed.)

If I instead run `/proc/19552/exe --version`, I get output indicating `bash` '5.3.8(1)-release'.

So: either run the old binary using the direct /proc/%d/exe path; or use what the JSON is showing here as `result.exe` rather than `result.exePath`.  (This will have a different effect in the corner case where the user has actually *deleted* the shell they're currently running, but I'm not sure that's a use case which requires perfect handling; anyway, current behavior suggests that would just cause it to output the old-now-deleted shell name with no version number -- a perfectly safe and sane degradation...)

=====

NOTE: I have not in fact checked the FAQ, primarily because even though this form uses the word 'FAQ' 3x in asking me to do so, none of those is a *link* in either live-clickable or just simply copy-pastable form! Secondarily because this report contains actionable information on the cause, whereas if the FAQ does mention this issue it will necessarily be presented as some sort of unsolvable mystery or 'that's the way it is', which wouldn't be helpful.

### Version used

2.56.1

### Bug prevalence

Other

### Regression

Not sure

### Installation

Package manager

### Package manager

Termux apt-get -> apt -> pkg

### Screenshots

_No response_

### Configuration

```jsonc

```

### System information

```jsonc
Not relevant
```

### Features built-in

```text
Not relevant
```

## Issue 10 (#2135): Request to add Xinux logo

## Description
This PR adds the ASCII logo and color configuration for **Xinux**, a Linux distribution based in Uzbekistan.

## Reference
- **Website**: https://xinux.uz
- **Distribution Name**: Xinux

## Screenshot
<img width="1854" height="1119" alt="2026-01-08_18-44" src="https://github.com/user-attachments/assets/28fa715f-d261-4f1f-829e-7a6fbf663fac" />

## Issue 11 (#2138): macOS large Apple logo: add missing warm band using ANSI LIGHT_RED

Hi! This PR improves the color accuracy of the large macOS Apple rainbow logo by adding the missing transition band between yellow and red.

The current logo renders consecutive ANSI_RED bands in the warm section, which compresses the  rainbow effect. This change inserts a LIGHT_RED (ANSI 91) band to (more closely) match the classic Apple rainbow mark. Sure everyone's seen it, but pasted for reference:
<img width="214" height="235" alt="apple-small" src="https://github.com/user-attachments/assets/7264a33f-3c1c-4c27-9685-07c2c25fa1de" />



Not sure if there's a technical/consistency rationale for not including the light/bright ANSI color here already, but the current color scheme immediately looked off when I ran fastfetch on a Macbook. Couldn't find any issues/discussions/previous PR's related to this, but could have missed something.

On terminals that distinguish normal vs. bright ANSI colors by default (notably Apple Terminal, where macOS is most likely), this produces a visibly improved and more accurate gradient.


### Notes

Affects only the large, default rainbow Apple logo rendered for macOS / OSX.

Just wanted to update the default logo, so no changes to logo variants/small versions. However, I did notice that the `macos3` variant may be misconfigured. It's using 6 positional color tokens, while only 5 values are defined in its color array, which results in an uncolored 6th band:

**Current macos3 appearance:**
<img width="673" height="444" alt="Screenshot macos3" src="https://github.com/user-attachments/assets/039811c0-cf62-433d-b236-6d1a8f43ff0c" />

Change verified visually in:

Apple Terminal (distinct transition visible with default settings):
<img width="1183" height="503" alt="Screenshot Apple Terminal" src="https://github.com/user-attachments/assets/65e9b4af-669c-47d3-80d5-d74f4454d7fa" />


VS Code integrated terminal (may collapse depending on theme/options. Disabled bold-as-bright for illustration):
**Original appearance:**
<img width="684" height="405" alt="Screenshot 2026-01-09 at 4 49 46 PM" src="https://github.com/user-attachments/assets/e353fa0d-1ebe-42ed-aed3-98e50a819ca8" />

**New, bold-as-bright disabled:**
<img width="733" height="371" alt="Screenshot 2026-01-09 at 4 49 31 PM" src="https://github.com/user-attachments/assets/b3976f10-8d57-444d-8b21-202e0154b66d" />

Also checked in iTerm, which renders bold-as-bright by default. In bold-as-bright/ANSI-only terminals, `BRIGHT_RED` will either collapse into `RED`, or `RED` will be rendered as `BRIGHT_RED` by default, resulting in 4 bands of the same color like today. So should be no regressions anywhere.

If this change is desired, happy to expand the PR or make a new one to add `LIGHT_RED` to other Apple logos, and correct the `macos3` variant rendering.

Thanks!

## Repository Information
- **Repository**: fastfetch-cli/fastfetch
- **Pull Request**: #2115
- **Base Commit**: `a9f43ff466ad9ba47222c795d2725f721a86eac0`

## Related Issues
- https://github.com/fastfetch-cli/fastfetch/issues/2115
- https://github.com/fastfetch-cli/fastfetch/issues/2119
- https://github.com/fastfetch-cli/fastfetch/issues/2123
- https://github.com/fastfetch-cli/fastfetch/issues/2105
- https://github.com/fastfetch-cli/fastfetch/issues/2121
- https://github.com/fastfetch-cli/fastfetch/issues/2127
- https://github.com/fastfetch-cli/fastfetch/issues/2129
- https://github.com/fastfetch-cli/fastfetch/issues/2124
- https://github.com/fastfetch-cli/fastfetch/issues/2136
- https://github.com/fastfetch-cli/fastfetch/issues/2135
- https://github.com/fastfetch-cli/fastfetch/issues/2138
</issue_description>

Can you help me implement the necessary changes to the repository so that the requirements specified in the <issue_description> are met?
I've already taken care of all changes to any of the test files described in the <issue_description>. This means you MUST NOT modify the testing logic or any of the tests in any way!
Also the development C environment is already set up for you (i.e., all dependencies already installed), so you don't need to install other packages.
Your task is to make the minimal changes to non-test files in the /workspace/fastfetch directory to ensure the <issue_description> is satisfied.

Follow these phases to resolve the issue:

Phase 1. READING: read the problem and reword it in clearer terms
   1.1 If there are code or config snippets. Express in words any best practices or conventions in them.
   1.2 Highlight message errors, method names, variables, file names, stack traces, and technical details.
   1.3 Explain the problem in clear terms.
   1.4 Enumerate the steps to reproduce the problem.
   1.5 Highlight any best practices to take into account when testing and fixing the issue.

Phase 2. RUNNING: install and run the tests on the repository
   2.1 Follow the readme.
   2.2 Install the environment and anything needed.
   2.3 Iterate and figure out how to run the tests.

Phase 3. EXPLORATION: find the files that are related to the problem and possible solutions
   3.1 Use `grep` to search for relevant methods, classes, keywords and error messages.
   3.2 Identify all files related to the problem statement.
   3.3 Propose the methods and files to fix the issue and explain why.
   3.4 From the possible file locations, select the most likely location to fix the issue.

Phase 4. TEST CREATION: before implementing any fix, create a script to reproduce and verify the issue
   4.1 Look at existing test files in the repository to understand the test format/structure.
   4.2 Create a minimal reproduction script that reproduces the located issue.
   4.3 Run the reproduction script with `gcc <filename.c> -o <executable> && ./<executable>` to confirm you are reproducing the issue.
   4.4 Adjust the reproduction script as necessary.

Phase 5. FIX ANALYSIS: state clearly the problem and how to fix it
   5.1 State clearly what the problem is.
   5.2 State clearly where the problem is located.
   5.3 State clearly how the test reproduces the issue.
   5.4 State clearly the best practices to take into account in the fix.
   5.5 State clearly how to fix the problem.

Phase 6. FIX IMPLEMENTATION: Edit the source code to implement your chosen solution.
   6.1 Make minimal, focused changes to fix the issue.

Phase 7. VERIFICATION: Test your implementation thoroughly.
   7.1 Run your reproduction script to verify the fix works.
   7.2 Add edge cases to your test script to ensure comprehensive coverage.
   7.3 Run existing tests related to the modified code with `make test` to ensure you haven't broken anything.

Phase 8. FINAL REVIEW: Carefully re-read the problem description and compare your changes with the base commit a9f43ff466ad9ba47222c795d2725f721a86eac0.
   8.1 Ensure you've fully addressed all requirements.
   8.2 Run any tests in the repository related to:
      8.2.1 The issue you are fixing
      8.2.2 The files you modified
      8.2.3 The functions you changed
   8.3 If any tests fail, revise your implementation until all tests pass.

Be thorough in your exploration, testing, and reasoning. It's fine if your thinking process is lengthy - quality and completeness are more important than brevity.

IMPORTANT CONSTRAINTS:
- ONLY modify files within the /workspace/fastfetch directory
- DO NOT navigate outside this directory (no `cd ..` or absolute paths to other locations)
- DO NOT create, modify, or delete any files outside the repository
- All your changes must be trackable by `git diff` within the repository
- If you need to create test files, create them inside the repository directory