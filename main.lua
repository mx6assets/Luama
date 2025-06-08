--local prompt = io.open("write_here.mx","r"):read("*all"):upper()
-- experimental
local RepeatFor = 1
local RFLevel   = 1
--
local ifthen = [[IF]]
local loop   = [[REPEAT]]
local writes = [[WRITE]]
local prints = [[PRINT]]
local dates  = [[DATE]]
local locals = [[LOCAL]]
local string = [[STRING]]
local rand   = [[RANDOM]]
local commas = [[,]]
local sleep  = [[SLEEP]]
local elses  = [[ELSE]]

local unnecessary_output = false
if unnecessary_output == true then
io.write("@",os.date(),"//",os.time(),": in process")
end
local tasks = 0
local rands = false
local endmount = 0

io.output("execute.lua")
io.output()
os.execute("lua execute.lua")

for line in io.lines("write_here.mx") do
  local Translation = line:upper()
  if Translation:find(loop) and Translation:find(sleep) then
    io.write("while")
    local FP1 = Translation:gsub(loop,""):gsub(string,""):gsub(locals,""):gsub(rand,""):gsub(prints,""):gsub(writes,""):gsub(ifthen,""):gsub(sleep,"")
     FP1:match("^%s*(.-)%s*$")
     local FP2 = FP1:lower()
     io.write(" os.execute('sleep",FP2,"')")
     io.write(" do")
    endmount = endmount + 1
  else
if Translation:find(loop) then
  
  io.write("while true do")
  endmount = endmount + 1

end
end
end
while RFLevel < RepeatFor or RepeatFor == RFLevel do
  for line in io.lines("write_here.mx") do
    local Translation = line:upper()


    if Translation:find(sleep) and not Translation:find(loop) and Translation:find(sleep) then
       local FP1 = Translation:gsub(loop,""):gsub(string,""):gsub(locals,""):gsub(rand,""):gsub(prints,""):gsub(writes,""):gsub(ifthen,""):gsub(sleep,"")
       FP1:match("^%s*(.-)%s*$")
       local FP2 = FP1:lower()
       io.write("\nos.execute('sleep",FP2,"')\n")
    end
    
    if Translation:find(ifthen) then
       local FP1 = Translation:gsub(loop,""):gsub(string,""):gsub(locals,""):gsub(rand,""):gsub(prints,""):gsub(writes,""):gsub(ifthen,""):gsub(Translation,"")
       FP1:match("^%s*(.-)%s*$")
       local FP2 = FP1:lower()
       io.write("\nif",FP2," then")
    endmount = endmount + 1
    end
if Translation:find(elses) then
      io.write("\nelse")
end
if Translation:find(locals) then
    if Translation:find(rand) and Translation:find(commas) then
   local FP1 = Translation:gsub(loop,""):gsub(string,""):gsub(locals,""):gsub(rand,""):gsub(prints,""):gsub(writes,""):lower()
      io.write("\nlocal ___",RFLevel," =".." math.random(",FP1,")")
  else
  io.write("\n")
    local FP1 = Translation:gsub(loop,""):gsub(string,""):gsub(locals,""):gsub(rand,""):gsub(prints,""):gsub(writes,""):lower()
    FP1:match("^%s*(.-)%s*$")
    if Translation:find("1") or Translation:find("2") or Translation:find("3") or Translation:find("4") or Translation:find("5") or Translation:find("6") or Translation:find("7") or Translation:find("8") or Translation:find("9") then

    io.write("local ___",RFLevel," ="..FP1.."")
    else

    io.write("local ___",RFLevel," ='"..FP1.."'")
    end
    end
-- string
if Translation:find(string) then
  io.write("\n")
   local FP1 = Translation:gsub(loop,""):gsub(string,""):gsub(locals,""):gsub(rand,""):gsub(prints,""):gsub(writes,""):lower()
    FP1:match("^%s*(.-)%s*$")
    if Translation:find("1") or Translation:find("2") or Translation:find("3") or Translation:find("4") or Translation:find("5") or Translation:find("6") or Translation:find("7") or Translation:find("8") or Translation:find("9") then
    io.write("___",RFLevel," ="..FP1.."")
    else
    io.write("___",RFLevel," ='"..FP1.."'")
    end
end
end

if rands == false then

if Translation:find(string) and Translation:find(prints) or Translation:find(locals) and Translation:find(prints) then -- focus on here
  local FP2 = Translation:gsub(loop,""):gsub(writes,""):gsub(prints,""):gsub(string,""):gsub(locals,"")
  FP2 = FP2:match("^%s*(.-)%s*$")
  io.write("\nprint(","___",RFLevel,")")
  else
if Translation:find(string) and Translation:find(writes) or Translation:find(locals) and Translation:find(writes) then -- focus on here
  local FP2 = Translation:gsub(loop,""):gsub(writes,""):gsub(prints,""):gsub(string,""):gsub(locals,"")
  FP2 = FP2:match("^%s*(.-)%s*$")
  io.write("\nio.write(","___",RFLevel,")")

else


if Translation:find("+") or Translation:find("-") or Translation:find("*") or Translation:find("/") then

  if unnecessary_output == true then
  io.write("\n > Asking for math")
  end

  tasks = tasks + 1
  if unnecessary_output == true then
  io.write(" (",tasks,")")
  end

  if Translation:find(string) and Translation:find(prints) or Translation:find(locals) and Translation:find(prints) then -- focus on here
  local FP2 = Translation:gsub(loop,""):gsub(writes,""):gsub(prints,""):gsub(string,""):gsub(locals,"")
  FP2 = FP2:match("^%s*(.-)%s*$")
  io.write("\nprint(","___",RFLevel,")")
  else
  if Translation:find(string) and Translation:find(writes) or Translation:find(string) and Translation:find(writes) then -- focus on here
  local FP2 = Translation:gsub(loop,""):gsub(writes,""):gsub(prints,""):gsub(string,""):gsub(locals,"")
  FP2 = FP2:match("^%s*(.-)%s*$")
  io.write("\nio.write(","___",RFLevel,")")
  else
  if Translation:find(prints) then
  local FP1 = Translation:gsub(loop,""):gsub(writes,""):gsub(prints,""):lower()
  FP1 = FP1:match("^%s*(.-)%s*$")
  io.write("\nprint(",FP1,")")
  else
  if Translation:find(writes) then
 local FP1 = Translation:gsub(loop,""):gsub(string,""):gsub(locals,""):gsub(prints,""):gsub(writes,""):lower()
  FP1 = FP1:match("^%s*(.-)%s*$")
  io.write("\nio.write(",FP1,")")
  end
  end
  end
  end
else
if Translation:find(prints) then

  local Anti_mixup = false

  if Translation:find(dates) then
  Anti_mixup = true
  if unnecessary_output == true then
  io.write("\n > Asking for date \n")
  end

  tasks = tasks + 1
  if unnecessary_output == true then
  io.write(" (",tasks,")")
  end

  local FP1 = "os.date()"
  FP1 = FP1:match("^%s*(.-)%s*$")
  io.write("\nprint(",FP1,")")


else
if Anti_mixup == false then
  if unnecessary_output == true then
  tasks = tasks + 1
  io.write("\n (",tasks,")")
  end
  local FP1 = Translation:gsub(loop,""):gsub(string,""):gsub(locals,""):gsub(writes,""):gsub(prints,""):lower()
  FP1 = FP1:match("^%s*(.-)%s*$")
  io.write("\nprint('",FP1,"')")
end
end
else

if Translation:find(writes) then

  local Anti_mixup = false

  if Translation:find(dates) then
  Anti_mixup = true
  if unnecessary_output == true then
  io.write("\n > Asking for date \n")
  end

  tasks = tasks + 1
  if unnecessary_output == true then
  io.write(" (",tasks,")")
  end

  local FP1 = "os.date()"
  FP1 = FP1:match("^%s*(.-)%s*$")
  io.write("\nio.write(",FP1,")")

else
if Anti_mixup == false then
  if unnecessary_output == true then
  tasks = tasks + 1
  io.write("\n (",tasks,")")
  end
  local FP1 = Translation:gsub(loop,""):gsub(string,""):gsub(locals,""):gsub(prints,""):gsub(writes,""):lower()
  FP1 = FP1:match("^%s*(.-)%s*$")
  io.write("\nio.write('",FP1,"')")

-- local
else
-- normal
if Translation:find("+") or Translation:find("-") or Translation:find("*") or Translation:find("/") then

    if unnecessary_output == true then
    io.write("\n > Asking for math")
    end

    tasks = tasks + 1
    if unnecessary_output == true then
    io.write(" (",tasks,")")
    end

    if Translation:find(prints) then

    local FP1 = Translation:gsub(prints,""):lower()
    FP1 = FP1:match("^%s*(.-)%s*$")
    io.write("\nprint(",FP1,")")

    else

    if Translation:find(writes) then
    local FP1 = Translation:gsub(writes,""):lower()
    FP1 = FP1:match("^%s*(.-)%s*$")
    io.write("\nio.write(",FP1,")")
    end

    end
end
end
end
end
end
end
end
end


end
if unnecessary_output == true then
  io.write("--",RFLevel,"\n")
end
RFLevel = RFLevel + 1
end

  for i = 1,endmount do
  io.write("\nend")
  end
end
