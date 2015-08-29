Adapted version to make this (great) project build on Windows using standard python, pyelftools and MIPS toolchain installations work.

Code to accompany the CI20 baremetal project.

Info: http://code.lardcave.net/2015/03/31/1/

### Getting set up

The original tutorials had minimal explanation for how to get this project set up, so here's my attempt to provide a few more details.

0. Clone this repo to a local folder
1. Install the MIPS Toolchain (see the link on this page http://www.elinux.org/CI20_Dev_Zone#Toolchain) to "C:\MIPS"
2. Install Python 3.4
3. Install pyelftools using "pip install pyelftools"
4. Download libusb-win32 from http://www.libusb.org/wiki/libusb-win32 - use the SourceForge link on the page.
5. Download pyusb from http://walac.github.io/pyusb/ - use the ".zip" link in the top-right corner of the page.
6. Unzip both libusb-win32 and pyusb (to seperate folders)
7. Open a command window, cd to the pyusb folder and run "python setup.py install"
8. On the CI20 board, unplug the jumper from the pins next to the USB-Mini port (to make the port a USB OTG device-mode port)
9. Plug in your serial connection (whatever that may be - I use http://www.amazon.co.uk/gp/product/B00AFRXKFU for Windows 8.1+ compatiblity. Other devices only work with Mac/Linux) to UART4 - the dedicated UART header. This is the white plug in the board. Do not plug in the +3.3V/+5V pin, just plug in the RX, TX and GND pins. Note that RX on the board goes to TX on the USB2Serial device (at least, it does for the one I mentioned).
10. Plug in a USB-Mini cable between your PC and the board
11. Press and hold the button on the board (to select USB OTG boot mode) and simultaneously power on the board.
12. Release the button on the board once the LED has come on RED then blikned off and come back on again.
13. Open the libusb-win32 folder and go to the bin folder. Run the "inf-wizard.exe" to generate the installation for the CI20 driver by following the steps in the wizard. YouPress the Install button at the end. If you receive an "Unsigned drivers" error, you will need to restart Windows via the Settings app and navigate through the boot menus (follow the Advanced/Recovery options until you get to "Change boot options") and turn on "Disable signed driver checking" (or whatever it's called - it's option 7 in Win 8.1)
14. Open your serial terminal and connect to the USB to serial device (I recommend TeraTerm, with 115200 baud rate, Newline: Auto/CR modes)
15. Open a command prompt and cd to your local copy this Git repo
16. Run build.bat
17. When the script pauses: Each time wait a second then press enter to continue.
18. If all goes well, you should see the Hello, world / startup messages.
