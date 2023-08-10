# SLCSeatbeltsXP
X-Plane cockpit seatbelt sign switch compatibility script for Self-Loading Cargo.
This is a rewritten original: https://github.com/woodss/SLCSeatbeltsXP
lua script to use with xlua plugin: https://github.com/X-Plane/XLua

# INSTRUCTIONS
1. download "SLCSeatbelts.zip"

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

# SUPPORTED MODELS
- Toliss [A319, A320(NEO), A321(CEO,NEO), A346]
- FlightFactor [A350]
- Inibuilds [A306, A310]
- Laminar [ZIBO(B736 - B739), A330, B744]
- FlyJSim [B722, Q4XP]
- Colimata [Concord]
- SSG [E170, E195]
- Felis [Tu-154]
- Rotate [MD-80]
- HotStart [Challenger 650]
- to be added...
