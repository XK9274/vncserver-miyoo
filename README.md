# vncserver-miyoo
VNC Server for the Miyoo Mini Plus 

## Will now correctly rotate without external tools

## Source
https://github.com/ponty/framebuffer-vncserver/

Added a method for rotation by default, there's now 2 bins. It will default to the new one but in launch.sh you can comment in/out whatever you want.

##
## Requirements
- Onion OS (https://github.com/OnionUI/Onion) (Tested on Onion V4.2.0.2-beta and Onion V4.2.0.2-networking branch)
- Recent firmware (Tested on 202305052130)

## Usage 
Copy the folder into your App folder (OnionOS required or the ability to install manually)
It will display upside down due to how MainUI is drawn.. you'll need to use a VNC client that can rotate.

```
- ./vncserver [-f device] [-p port] [-t touchscreen] [-k keyboard] [-r rotation] [-R touchscreen rotation] [-F FPS] [-v] [-h]
- -p port: VNC port, default is 5900
- -f device: framebuffer device node, default is /dev/fb0
- -k device: keyboard device node (example: /dev/input/event0)
- -t device: touchscreen device node (example:/dev/input/event2)
- -r degrees: framebuffer rotation, default is 0
- -R degrees: touchscreen rotation, default is same as framebuffer rotation
- -F FPS: Maximum target FPS, default is 10
- -v: verbose
- -h: print this help
```

- Keyboard support works but only for SDLK inputs programmed into whatever you're using (so arrow keys work, space is enter) 
- I suspect if SDL keys were programmed for the keyboard inputs for each key (such as in simple terminal) you'd be able to use these inputs too. 

## Images
![image](https://github.com/XK9274/vncserver-miyoo/assets/47260768/dc15322d-c596-4681-9932-c4fd45300df1)
