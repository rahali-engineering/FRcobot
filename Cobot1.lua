-- Depalletizer program
function BeforeStart()
    LastpickedPlace = {}
    -- RobotState
    -- 1 = PickLeftSheet
    -- 2 = PlaceLeftSheet
    -- 3 = PickRightSheet 
    -- 4 = PlaceLeftSheet
    -- AxisState
    -- 1 = AtPallets
    -- 2 = AtConveyors
    -- Init values
    -- Move robot to safe position
    if GetSysVarValue(RobotState) == 1 then
    elseif GetSysVarValue(RobotState) == 2 then
    elseif GetSysVarValue(RobotState) == 3 then
    end
    end
function PickRightSheet()
end
function PickLeftSheet()
axisstate = GetSysVarValue(AxisState)
while (axisstate ~= 1) do 
    -- Waiting for the axis to be at the correct position
    WaitMs(100)
end
Lin(AboveLeftSheet,100,-1,0,0)
if LastpickedPlace[2] ~= 0 then 
    -- Move to the last picked position
    --Lin(LastpickedPlace,100,-1,0,0)
end
-- Move until last position (which is only reach when the pallet is empty)
Lin(BottomLeftSheet,100,-1,0,0)
if NoVacuum then
    -- No vacuum detected while at bottom pallet 
    -- Pallet is empty
end
Lin(AboveLeftSheet,100,-1,0,0)
end
function PlaceLeftSheet()
end
function PlaceRighSheet()
end
BeforeStart()
while (1) do
if GetSysVarValue(SheetSide) == 1 then
    -- Left side
    PickLeftSheet()
    PlaceLeftSheet()
elseif GetSysVarValue(SheetSide) == 2 then
    -- Right side
    PickRightSheet()
    PlaceRighSheet()
end
end
