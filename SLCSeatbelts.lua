-- ****************************************************************************
-- X-PLANE AIRCRAFT SEATBELT SIGN COMPATIBILITY FOR SELF-LOADING CARGO!
-- ****************************************************************************
-- 
-- Written by Steve Woods (FPVSteve). 
-- Rewritten by boriskaXP to support XLUA
-- Questions? Email: steve@lanilogic.com
-- Visit www.selfloadingcargo.com to find out more.
-- 
-- Copyright (C)2022 Lanilogic Technology Solutions Ltd, All Rights Reserved.
-- 
-- SUPPLIED WITHOUT WARRANTY OR GUARANTEE OF OPERATION.
-- ****************************************************************************
-- IMPORTANT - THERE IS A PREREQUISITE BIT OF PREP FOR THIS TO WORK!
-- ****************************************************************************
-- 1:
-- Please copy the "SLCSeatbelts" folder into:
-- ~\YourXplaneFolder\Resources\Plugins\xlua\scripts
-- 2:
-- Please copy and paste the following four lines of code to the BOTTOM of your 
-- XPUIPCOffsets.cfg file in your xplane/resources/plugins/xpuipc folder, then 
-- remove the "-- " characters from the start of each line).
--
-- vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
-- 
-- # SELF-LOADING CARGO DECLARATIONS
-- # Declarations of all Seatbelt Datarefs
-- Dataref SLCSeatbeltDetection sim/cockpit2/switches/fasten_seat_belts int
-- Offset    0x341d    UINT8    1    rw    $SLCSeatbeltDetection 0 > 
--
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
--
-- That's it!!
-- Enjoy your working seatbelt signs with SLC in your X-Plane aircraft :)
-- ****************************************************************************
-- DO NOT MODIFY BELOW THIS LINE UNLESS YOU KNOW WHAT YOU ARE DOING!
-- HERE BE DRAGONS! MIND YOUR HEAD! HIDDEN VERGE! ABANDON HOPE! IT'S A TRAP!
-- ****************************************************************************

baseSeatbeltDataRef1 = find_dataref("sim/cockpit/switches/fasten_seat_belts")
baseSeatbeltDataRef2 = find_dataref("sim/cockpit2/switches/fasten_seat_belts")

-- Maybe change to xlua instead of FlyWithLua?

SeatbeltMonitor = create_dataref("FlyWithLua/SLCSeatbelts", "number")

elevation = find_dataref("sim/graphics/view/view_elevation_msl_mtrs")
aircraftICAO = find_dataref("sim/aircraft/view/acf_ICAO")

--inibuilds
inibuilds = find_dataref("sim/cockpit2/switches/fasten_seat_belts")

--toliss
toliss = find_dataref("AirbusFBW/SeatBeltSignsOn")

--FlightFactor
ff_A350 = find_dataref("1-sim/12/switch")

--FlyJSim
FJS722 = find_dataref("FJS/727/lights/FastenBeltsSwitch")
Q4XP = find_dataref("sim/cockpit/switches/fasten_seat_belts")

--laminar
laminarA333 = find_dataref("laminar/A333/switches/fasten_seatbelts")
zibo = find_dataref("laminar/B738/toggle_switch/seatbelt_sign_pos")
laminarB744 = find_dataref("laminar/B747/safety/seat_belts/sel_dial_pos")

--HotStart
CL650 = find_dataref("CL650/overhead/signs/seatbelt_value")
	
--colimata
colimata = find_dataref("Colimata/CON_RP_LIGHT_sw_fasten_seatblts_i")
	
--ssg
ssg = find_dataref("SSG/EJET/SIGNS/fasten_belts_sw")

--rotate
rotate_md80 = find_dataref("Rotate/md80/systems/seatbelts_switch")

--felis
felis_T154 = find_dataref("sim/custom/switchers/ovhd/sign_belts")

--default
default = find_dataref("sim/cockpit2/switches/fasten_seat_belts")

function after_physics()
	
	aircraftList = 
	{
	--airbus
	["A306"] = function ()				--IniBuilds
		if inibuilds == 1 then
			SeatbeltMonitor = 1
		else	
			SeatbeltMonitor = 0
		end
	end,
	["A310"] = function ()				--IniBuilds
		if inibuilds == 1 then
			SeatbeltMonitor = 1
		else	
			SeatbeltMonitor = 0
		end
	end,
	["A319"] = function ()				--Toliss
		if toliss == 1 then
			SeatbeltMonitor = 1
		else	
			SeatbeltMonitor = 0
		end
	end,
	["A320"] = function ()				--Toliss
		if toliss == 1 then
			SeatbeltMonitor = 1
		else	
			SeatbeltMonitor = 0
		end
	end,
	["A321"] = function ()				--Toliss
		if toliss == 1 then
			SeatbeltMonitor = 1
		else	
			SeatbeltMonitor = 0
		end
	end,
	["A20N"] = function ()				--Toliss
		if toliss == 1 then
			SeatbeltMonitor = 1
		else	
			SeatbeltMonitor = 0
		end
	end,
	["A21N"] = function ()				--Toliss
		if toliss == 1 then
			SeatbeltMonitor = 1
		else	
			SeatbeltMonitor = 0
		end
	end,
	["A333"] = function ( )
		if laminarA333 == 2 then		--Laminar
			SeatbeltMonitor = 1
		else
			if laminarA333 == 1 then
				if elevation >= 3048 then
					SeatbeltMonitor = 0
				else
					SeatbeltMonitor = 1
				end
			else
				SeatbeltMonitor = 0
			end		
		end
	end,
	["A346"] = function ( )				--Toliss
		if toliss == 1 then
			SeatbeltMonitor = 1
		else	
			SeatbeltMonitor = 0
		end
	end,
	["A359"] = function ()
		if ff_A350 == 1 then			--FlightFactor
			SeatbeltMonitor = 1
		else
			SeatbeltMonitor = 0
		end
	end,
	--boeing
	["B722"] = function ( )
		if FJS722 == 1 then				--FlyJSim
			SeatbeltMonitor = 1
		else
			SeatbeltMonitor = 0
		end
	end,
	["B736"] = function ()
		if zibo == 2 then				--ZIBO
			SeatbeltMonitor = 1
		else
			if zibo == 1 then
				if elevation >= 3048 then
					SeatbeltMonitor = 0
				else
					SeatbeltMonitor = 1
				end
			else
				SeatbeltMonitor = 0
			end		
		end
	end,
	["B737"] = function ()
		if zibo == 2 then				--ZIBO
			SeatbeltMonitor = 1
		else
			if zibo == 1 then
				if elevation >= 3048 then
					SeatbeltMonitor = 0
				else
					SeatbeltMonitor = 1
				end
			else
				SeatbeltMonitor = 0
			end		
		end
	end,
	["B738"] = function ()
		if zibo == 2 then				--ZIBO
			SeatbeltMonitor = 1
		else
			if zibo == 1 then
				if elevation >= 3048 then
					SeatbeltMonitor = 0
				else
					SeatbeltMonitor = 1
				end
			else
				SeatbeltMonitor = 0
			end		
		end
	end,
	["B739"] = function ()
		if zibo == 2 then				--ZIBO
			SeatbeltMonitor = 1
		else
			if zibo == 1 then
				if elevation >= 3048 then
					SeatbeltMonitor = 0
				else
					SeatbeltMonitor = 1
				end
			else
				SeatbeltMonitor = 0
			end		
		end
	end,
	["B744"] = function ()
		if laminarB744 == 2 then		--Laminar
			SeatbeltMonitor = 1
		else
			if laminarB744 == 1 then
				if elevation >= 3048 then
					SeatbeltMonitor = 0
				else
					SeatbeltMonitor = 1
				end
			else
				SeatbeltMonitor = 0
			end		
		end
	end,
	--embraer
	["E170"] = function ()				-- SSG
		if ssg == 1 then
			SeatbeltMonitor = 1
		else
			SeatbeltMonitor = 0		
		end
	end,
	["E195"] = function ()				-- SSG
		if ssg == 1 then
			SeatbeltMonitor = 1
		else
			SeatbeltMonitor = 0		
		end
	end,
	--McDonnell Douglas
	["MD80"] = function ()				--Rotate
		if rotate_md80 == 1 then
			SeatbeltMonitor = 1
		else
			if rotate_md80 == -1 then
				if elevation >= 3048 then
					SeatbeltMonitor = 0
				else
					SeatbeltMonitor = 1
				end
			else
				SeatbeltMonitor = 0
			end		
		end
	end,
	--Tupolev
	["T154"] = function ()				--Felis
		if felis_T154 == 1 then
			SeatbeltMonitor = 1
		else
			SeatbeltMonitor = 0		
		end
	end,
	--Antonov
	
	--Concord
	["CONC"] = function ()				--Colimata
		if colimata == 1 then
			SeatbeltMonitor = 1
		else
			SeatbeltMonitor = 0		
		end
	end,
	--De Havilland Canada
	["DH8D"] = function ()				--FlyJSim
		if Q4XP == 1 then
			SeatbeltMonitor = 1
		else
			SeatbeltMonitor = 0		
		end
	end,
	--Bombardier
	["CL60"] = function ()
		if CL650 == 1 then				--HotStart
			SeatbeltMonitor = 1
		else
			if CL650 == -1 then
				if elevation >= 3048 then
					SeatbeltMonitor = 0
				else
					SeatbeltMonitor = 1
				end
			else
				SeatbeltMonitor = 0
			end		
		end
	end,
	}
	
	userAircraft = aircraftList[aircraftICAO]
	if userAircraft then
		userAircraft()
	else
		if default == 1 then			--REST
			SeatbeltMonitor = 1
		else
			if default == 2 then
				if elevation >= 3048 then
					SeatbeltMonitor = 0
				else
					SeatbeltMonitor = 1
				end
			else
				SeatbeltMonitor = 0
			end
		end
	end
	
	if (baseSeatbeltDataRef1 ~= SeatbeltMonitor) or (baseSeatbeltDataRef2 ~= SeatbeltMonitor) then
		baseSeatbeltDataRef1 = SeatbeltMonitor
		baseSeatbeltDataRef2 = SeatbeltMonitor
	end
	
end

