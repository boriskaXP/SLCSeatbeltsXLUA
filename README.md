# SLCSeatbeltsXP
X-Plane cockpit seatbelt sign switch compatibility script for Self-Loading Cargo
Rewritten original: https://github.com/woodss/SLCSeatbeltsXP
Lua script to use with xlua plugin: https://github.com/X-Plane/XLua

# INSTRUCTIONS
1. Copy "SLCSeatbelts" folder into: ~\YourXplaneFolder\Resources\plugins\xlua\scripts

1. Copy and paste the following four lines of code to the BOTTOM of your XPUIPCOffsets.cfg file which can be found in your xplane/resources/plugins/xpuipc folder.

```
# SELF-LOADING CARGO DECLARATIONS
# Declarations of all Seatbelt Datarefs
Dataref SLCSeatbeltDetection sim/cockpit2/switches/fasten_seat_belts int
Offset    0x341d    UINT8    1    rw    $SLCSeatbeltDetection 0 > 
```
That's it!!
Enjoy your working seatbelt signs with SLC in your X-Plane aircraft :)
