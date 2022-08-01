
map_attributes: MACRO
;\1: map name
;\2: map id
;\3: border block
;\4: connections: combo of NORTH, SOUTH, WEST, and/or EAST, or 0 for none
CURRENT_MAP_WIDTH = \2_WIDTH
CURRENT_MAP_HEIGHT = \2_HEIGHT
\1_MapAttributes::
	db \3
	db CURRENT_MAP_HEIGHT, CURRENT_MAP_WIDTH
	db BANK(\1_Blocks)
	dw \1_Blocks
	db BANK(\1_MapScripts) ; aka BANK(\1_MapEvents)
	dw \1_MapScripts
	dw \1_MapEvents
	db \4
ENDM

; Connections go in order: north, south, west, east
connection: MACRO
;\1: direction
;\2: map name
;\3: map id
;\4: offset of the target map relative to the current map
;    (x offset for east/west, y offset for north/south)

; LEGACY: Support for old connection macro
if _NARG == 6
	connection \1, \2, \3, (\4) - (\5)
else

; Calculate tile offsets for source (current) and target maps
_src = 0
_tgt = (\4) + 3
if _tgt < 0
_src = -_tgt
_tgt = 0
endc

if !STRCMP("\1", "north")
_blk = \3_WIDTH * (\3_HEIGHT - 3) + _src
_map = _tgt
_win = (\3_WIDTH + 6) * \3_HEIGHT + 1
_y = \3_HEIGHT * 2 - 1
_x = (\4) * -2
_len = CURRENT_MAP_WIDTH + 3 - (\4)
if _len > \3_WIDTH
_len = \3_WIDTH
endc

elif !STRCMP("\1", "south")
_blk = _src
_map = (CURRENT_MAP_WIDTH + 6) * (CURRENT_MAP_HEIGHT + 3) + _tgt
_win = \3_WIDTH + 7
_y = 0
_x = (\4) * -2
_len = CURRENT_MAP_WIDTH + 3 - (\4)
if _len > \3_WIDTH
_len = \3_WIDTH
endc

elif !STRCMP("\1", "west")
_blk = (\3_WIDTH * _src) + \3_WIDTH - 3
_map = (CURRENT_MAP_WIDTH + 6) * _tgt
_win = (\3_WIDTH + 6) * 2 - 6
_y = (\4) * -2
_x = \3_WIDTH * 2 - 1
_len = CURRENT_MAP_HEIGHT + 3 - (\4)
if _len > \3_HEIGHT
_len = \3_HEIGHT
endc

elif !STRCMP("\1", "east")
_blk = (\3_WIDTH * _src)
_map = (CURRENT_MAP_WIDTH + 6) * _tgt + CURRENT_MAP_WIDTH + 3
_win = \3_WIDTH + 7
_y = (\4) * -2
_x = 0
_len = CURRENT_MAP_HEIGHT + 3 - (\4)
if _len > \3_HEIGHT
_len = \3_HEIGHT
endc

else
fail "Invalid direction for 'connection'."
endc

	map_id \3
	dw \2_Blocks + _blk
	dw wOverworldMapBlocks + _map
	db _len - _src
	db \3_WIDTH
	db _y, _x
	dw wOverworldMapBlocks + _win
endc
ENDM

	map_attributes CottageTown, COTTAGE_TOWN, $05, EAST
	connection EAST, Route49, ROUTE_49, 0

	map_attributes Route49, COTTAGE_TOWN, $05, NORTH | WEST
	connection NORTH, Route50,     ROUTE_50,     -12
	connection WEST,  CottageTown, COTTAGE_TOWN, 0

	map_attributes Route50, ROUTE_50, $05, SOUTH | EAST
	connection SOUTH, Route49,       ROUTE_49,       12
	connection EAST,  TraversalCity, TRAVERSAL_CITY, -9

	map_attributes TraversalCity, TRAVERSAL_CITY, $05, WEST
	connection WEST, Route50, ROUTE_50, 9

	map_attributes Route51, ROUTE_51, $05, NORTH | EAST
	connection NORTH, Route_49,      ROUTE_49,       12
	connection EAST,  FoliageCity,   FOLIAGE_CITY,   0

	map_attributes PlayersHouse1F,     PLAYERS_HOUSE_1F,      $00, 0
	map_attributes PlayersHouse2F,     PLAYERS_HOUSE_2F,      $00, 0
	map_attributes RivalsHouse1F,      RIVALS_HOUSE_1F,       $00, 0
	map_attributes RivalsHouse2F,      RIVALS_HOUSE_2F,       $00, 0
	map_attributes LarchsHouse,        LARCHS_HOUSE,          $00, 0
	map_attributes LarchsLab,          LARCHS_LAB,            $00, 0
	map_attributes Route49House,       ROUTE_49_HOUSE,        $00, 0
	map_attributes CottageLanaweGate,  COTTAGE_LANAWE_GATE,   $00, 0
	map_attributes Route4950Gate,      ROUTE_49_50_GATE,      $00, 0
	map_attributes ROute49VacuumGate,  ROUTE_49_VACUUM_GATE,  $00, 0
	map_attributes Route4951Gate,      ROUTE_49_51_GATE,      $00, 0
	map_attributes CottageRoute55Gate, COTTAGE_ROUTE_55_GATE, $00, 0
	map_attributes Pokecenter2F,       POKECENTER_2F,         $00, 0
	map_attributes TradeCenter,        TRADE_CENTER,          $00, 0
	map_attributes Colosseum,          COLOSSEUM,             $00, 0
	map_attributes TimeCapsule,        TIME_CAPSULE,          $00, 0
	map_attributes MtVacuum,           MT_VACUUM,             $17, 0