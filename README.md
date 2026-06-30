# poep4-preprov
M5Stack PoE P4 unit preprovisioning files

## Installation instructions

Download the Factory Bin firmware from the [Releases page](https://github.com/Chill-Division/poep4-preprov/releases).

Insert the USB Type-C connector into the PoE-P4 Unit above the ethernet port, then push and hold the button on the side of the unit (Opposite the other grove port) for 5 seconds. This puts it into a flash-mode so the firmware can be updated over the USB-C port.

Visit [ESPHome Web](https://web.esphome.io) to flash the firmware and click "Connect":
<img width="493" height="187" alt="image" src="https://github.com/user-attachments/assets/e8cfa9a6-8811-46fd-9991-eb0ac5839c62" />

Choose the applicable USB JTAG/serial debug unit port and hit connect:
<img width="436" height="141" alt="image" src="https://github.com/user-attachments/assets/8b13ee08-1aa2-4012-81a6-7cc49ada7cf7" />

Select Install:
<img width="471" height="133" alt="image" src="https://github.com/user-attachments/assets/e4c41a29-b8e2-4df1-a51a-f85cebb78b70" />

Choose your downloaded firmware file from before, and then click Install:
<img width="427" height="358" alt="image" src="https://github.com/user-attachments/assets/3f006ce6-9f83-413f-b261-ed942a475eca" />

The firmware will then flash to the device. This usually takes approx 10 seconds total:
<img width="318" height="185" alt="image" src="https://github.com/user-attachments/assets/c1714890-cb52-4b46-b200-a290c4037473" />
<img width="386" height="246" alt="image" src="https://github.com/user-attachments/assets/68b75bf0-e58a-4b00-8952-8694a36808ca" />

When you see this success message you can unplug the unit from the USB Type-C cable and plug it into your PoE:
<img width="292" height="209" alt="image" src="https://github.com/user-attachments/assets/723e8929-61a3-4c65-aab7-5e8563f2e156" />

