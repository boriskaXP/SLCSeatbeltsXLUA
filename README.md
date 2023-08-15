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
- FlightFactor [A320*, A350, B752*, B753*, B762*, B763*, b764*]
- Inibuilds [A306, A310]
- Laminar [ZIBO*(B736 - B739), A333**, B744*]
- FlyJSim [B722, Q4XP]
- Colimata [Concord]
- SSG [E170, E195]
- X-Crafts [E170, E175, E190, E195]
- Felis [Tu-154]
- Rotate [MD-80*, MD-11*]
- HotStart [Challenger 650*]
- to be added...

```
*Added AUTO support. Will switch seatbelt automatically at 10.000 ft
**There is a problem with Laminar A330 because it also uses xlua plugin. X-plane can't handle 2 same plugins at the same time...
```
