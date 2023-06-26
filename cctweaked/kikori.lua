local fl = turtle.getFuelLevel()
if fl == 0 then
  turtle.select(1)
  turtle.refuel(4)
end
print("fuel:"..tostring(fl))

local function digline(b)
  local cut = 0
  print("digline")
  for i=1,b do
    if turtle.detect() then
      print("detect front")
      local result = turtle.dig()
      if result then
        print("cut ok")
        cut = cut + 1
      else
        print("cannot cut")
        break
      end
    end
    if turtle.detectUp() then
      local result = turtle.digUp()
      if result then
        cut = cut + 1
      else
        break
      end
    end
    turtle.forward()
  end
  return cut
end
    
while true do
  local cut = 0
  local ret = digline(2)
  cut = cut + ret
  turtle.turnLeft()

  ret = digline(2)
  cut = cut + ret
  turtle.turnLeft()
  
  ret = digline(2)
  cut = cut + ret
  turtle.turnLeft()
  
  ret = digline(2)
  cut = cut + ret
  turtle.turnLeft()
  
  if cut == 0 then
    print("no block at this height")
    break
  end
  turtle.up()
end
