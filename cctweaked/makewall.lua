if turtle.getFuelLevel() == 0 then
  turtle.select(1)
  turtle.refuel(4)
end
local fuel = turtle.getFuelLevel()
print("fuel:"..tostring(fuel))

turtle.select(2)
local function PutLine(wl)
  for i=1, tonumber(wl) do
    if not turtle.detectDown() then
      print("no block")
      local result = turtle.placeDown()
      print(result)
      turtle.forward()
    else
      print("block exist")
    end
  end
end

turtle.forward()
PutLine(11)
turtle.turnRight()
PutLine(5)
turtle.turnRight()
PutLine(11)
turtle.turnRight()
PutLine(5)
turtle.turnRight()
