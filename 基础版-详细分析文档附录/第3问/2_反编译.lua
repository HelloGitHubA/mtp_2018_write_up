-- Decompiled using luadec 2.2 rev:  for Lua 5.3 from https://github.com/viruscamp/luadec
-- Command line: -f 0 z3.lua 

-- params : ...
-- function num : 0 , upvalues : upval_0_0
local l_0_0 = (upval_0_0.require)("bit")
local l_0_1 = {}
upval_0_0.bs = l_0_1
l_0_1 = l_0_0.lshift
-- DECOMPILER ERROR at PC8: Confused about usage of register: R2 in 'UnsetPending'

;
(upval_0_0.bs).new = function(l_1_0, l_1_1)
  -- function num : 0_0 , upvalues : upval_0_0
  local l_1_2 = {}
  upval_0_0.o = l_1_2
  l_1_2 = upval_0_0.o
  if not l_1_1 then
    l_1_2.data = {}
    l_1_2 = upval_0_0.type
    l_1_2 = l_1_2(l_1_1[1])
    if l_1_2 == "number" then
      upval_0_0.t, l_1_2 = l_1_2, {}
      l_1_2 = upval_0_0.pairs
      l_1_2 = l_1_2(l_1_1)
      for i_1,i_2 in l_1_2 do
        local l_1_8 = upval_0_0.t
        l_1_8[#upval_0_0.t + 1] = ((upval_0_0.string).char)(l_1_7)
      end
      -- DECOMPILER ERROR at PC31: Confused about usage of register: R2 in 'UnsetPending'

      ;
      (upval_0_0.o).data = upval_0_0.t
    end
    -- DECOMPILER ERROR at PC35: Confused about usage of register: R2 in 'UnsetPending'

    ;
    (upval_0_0.o).i = 1
    -- DECOMPILER ERROR at PC38: Confused about usage of register: R2 in 'UnsetPending'

    ;
    (upval_0_0.o).length = #l_1_1
    ;
    (upval_0_0.setmetatable)(upval_0_0.o, l_1_0)
    l_1_0.__index = l_1_0
    return upval_0_0.o
  end
end

-- DECOMPILER ERROR at PC11: Confused about usage of register: R2 in 'UnsetPending'

;
(upval_0_0.bs).move = function(l_2_0, l_2_1)
  -- function num : 0_1
  if l_2_0.length + 1 < l_2_0.i + l_2_1 then
    return false
  else
    if l_2_0.i + l_2_1 < 1 then
      return false
    else
      l_2_0.i = l_2_0.i + l_2_1
      return true
    end
  end
end

-- DECOMPILER ERROR at PC15: Confused about usage of register: R2 in 'UnsetPending'

;
(upval_0_0.bs).pop = function(l_3_0, l_3_1)
  -- function num : 0_2 , upvalues : upval_0_0
  local l_3_2, l_3_3 = l_3_0:pop_raw(l_3_1)
  local l_3_4 = {}
  for l_3_8,l_3_9 in (upval_0_0.pairs)(l_3_2) do
    local l_3_10 = #l_3_4 + 1
    l_3_4[l_3_10] = ((upval_0_0.string).byte)(l_3_9, 1)
  end
  return l_3_4, l_3_3
end

-- DECOMPILER ERROR at PC18: Confused about usage of register: R2 in 'UnsetPending'

;
(upval_0_0.bs).pop_raw = function(l_4_0, l_4_1)
  -- function num : 0_3 , upvalues : upval_0_0
  local l_4_2 = {}
  -- DECOMPILER ERROR at PC8: No list found for R2 , SetList fails

  -- DECOMPILER ERROR at PC9: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC9: Overwrote pending register: R3 in 'AssignReg'

  local l_4_3 = ((upval_0_0.unpack)(l_4_0.data, l_4_0.i, l_4_0.i + l_4_1 - 1))()
  -- DECOMPILER ERROR at PC13: Overwrote pending register: R5 in 'AssignReg'

  return l_4_2, l_4_1
end

-- DECOMPILER ERROR at PC21: Confused about usage of register: R2 in 'UnsetPending'

;
(upval_0_0.bs).readByte = function(l_5_0)
  -- function num : 0_4
  local l_5_1, l_5_2 = l_5_0:pop(1)
  return l_5_1[1], l_5_2
end

-- DECOMPILER ERROR at PC24: Confused about usage of register: R2 in 'UnsetPending'

;
(upval_0_0.bs).readInt = function(l_6_0)
  -- function num : 0_5 , upvalues : upval_0_0, l_0_1
  local l_6_1 = 0
  local l_6_2 = l_6_0:pop(4)
  for l_6_6,l_6_7 in (upval_0_0.pairs)(l_6_2) do
    l_6_1 = l_6_1 + l_0_1(l_6_7, 8 * (l_6_6 - 1))
  end
  if l_6_1 > 2147483648 then
    l_6_1 = l_6_1 + 2147483648
    l_6_1 = (l_6_1) % 4294967296
    l_6_1 = l_6_1 - 2147483648
  end
  return l_6_1
end

-- DECOMPILER ERROR at PC27: Confused about usage of register: R2 in 'UnsetPending'

;
(upval_0_0.bs).readStr = function(l_7_0)
  -- function num : 0_6 , upvalues : upval_0_0
  local l_7_1 = ""
  local l_7_2 = l_7_0:readInt()
  local l_7_3 = l_7_0:pop_raw(l_7_2)
  for l_7_7,l_7_8 in (upval_0_0.pairs)(l_7_3) do
    l_7_1 = l_7_1 .. l_7_8
  end
  return l_7_1
end

-- DECOMPILER ERROR at PC30: Confused about usage of register: R2 in 'UnsetPending'

;
(upval_0_0.bs).bPos = function(l_8_0)
  -- function num : 0_7
  return l_8_0.i - 1
end

local l_0_2 = {}
upval_0_0.Stack = l_0_2
l_0_2 = upval_0_0.Stack
l_0_2.new = function(l_9_0)
  -- function num : 0_8 , upvalues : upval_0_0
  local l_9_1 = {}
  ;
  (upval_0_0.setmetatable)(l_9_1, l_9_0)
  l_9_0.__index = l_9_0
  l_9_1.stack = {}
  return l_9_1
end

l_0_2 = upval_0_0.Stack
l_0_2.push = function(l_10_0, l_10_1)
  -- function num : 0_9 , upvalues : upval_0_0
  ((upval_0_0.table).insert)(l_10_0.stack, l_10_1)
end

l_0_2 = upval_0_0.Stack
l_0_2.pop = function(l_11_0, l_11_1)
  -- function num : 0_10 , upvalues : upval_0_0
  local l_11_3 = l_11_1 or 1
  for l_11_7 = 1, l_11_3 do
    local l_11_4, l_11_12 = {}
    l_11_12 = #l_11_4
    l_11_12 = l_11_12 + 1
    local l_11_8, l_11_13 = nil
    l_11_8 = upval_0_0.table
    l_11_8 = l_11_8.remove
    l_11_13 = l_11_0.stack
    local l_11_15 = nil
    l_11_15 = l_11_0.stack
    l_11_15 = #l_11_15
    local l_11_16 = nil
    l_11_8 = l_11_8(l_11_13, l_11_15)
    local l_11_14 = nil
    l_11_4[l_11_12] = l_11_8
  end
  local l_11_9 = nil
  local l_11_10 = upval_0_0.unpack
  return l_11_10(l_11_9)
end

l_0_2 = function(l_12_0, l_12_1)
  -- function num : 0_11
  return l_12_0 % l_12_1
end

upval_0_0.kcjisaojeje17da653 = l_0_2
l_0_2 = function(l_13_0, l_13_1)
  -- function num : 0_12
  do return l_13_0 == l_13_1 end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

upval_0_0.kcjisaojejea2f65d7 = l_0_2
l_0_2 = function(l_14_0, l_14_1)
  -- function num : 0_13
  do return l_14_0 ~= l_14_1 end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

upval_0_0.kcjisaojejb8ffa3c2 = l_0_2
l_0_2 = function(l_15_0, l_15_1)
  -- function num : 0_14
  do return l_15_0 <= l_15_1 end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

upval_0_0.kcjisaojeje37f48a6 = l_0_2
l_0_2 = function(l_16_0, l_16_1)
  -- function num : 0_15
  do return l_16_1 <= l_16_0 end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

upval_0_0.kcjisaojejd56265d9 = l_0_2
l_0_2 = function(l_17_0, l_17_1)
  -- function num : 0_16
  do return l_17_0 < l_17_1 end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

upval_0_0.kcjisaojejb0cd87ba = l_0_2
l_0_2 = function(l_18_0, l_18_1)
  -- function num : 0_17
  do return l_18_1 < l_18_0 end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

upval_0_0.kcjisaojejff577802 = l_0_2
l_0_2 = function(l_19_0)
  -- function num : 0_18 , upvalues : upval_0_0
  local l_19_1 = l_19_0
  local l_19_2 = (upval_0_0.assert)(((upval_0_0.io).open)(l_19_1, "rb"))
  local l_19_3 = {}
  repeat
    local l_19_4 = l_19_2:read(4096)
    for i_1 in (l_19_4 or ""):gmatch(".") do
      l_19_3[#l_19_3 + 1] = i_1
    end
  until not l_19_4
  l_19_4(l_19_2)
  return l_19_3
end

upval_0_0.file2array = l_0_2
l_0_2 = function(l_20_0)
  -- function num : 0_19
  local l_20_1 = {}
  for i_1 in (l_20_0 or ""):gmatch(".") do
    l_20_1[#l_20_1 + 1] = i_1
  end
  return l_20_1
end

upval_0_0.str2array = l_0_2
l_0_2 = function(l_21_0, l_21_1)
  -- function num : 0_20 , upvalues : upval_0_0
  if l_21_1 > 5 then
    return ""
  end
  l_21_1 = l_21_1 + 1
  if (upval_0_0.type)(l_21_0) == "table" then
    local l_21_2 = "{ "
    local l_21_3 = 0
    for l_21_7,l_21_8 in (upval_0_0.pairs)(l_21_0) do
      l_21_3 = l_21_3 + 1
      if (upval_0_0.type)(l_21_7) ~= "number" then
        l_21_7 = "\"" .. l_21_7 .. "\""
      end
      if l_21_0 == l_21_8 then
        l_21_2 = l_21_2 .. "[" .. l_21_7 .. "] = __self,"
      else
        if l_21_3 < 30 then
          local l_21_22 = l_21_2
          local l_21_20 = "["
          local l_21_21 = l_21_7
          l_21_2 = l_21_22 .. l_21_20 .. l_21_21 .. "] = " .. (upval_0_0.dump_table)(l_21_8, l_21_1) .. ","
        else
          local l_21_13, l_21_14, l_21_15 = nil
          l_21_13 = l_21_2
          local l_21_16 = nil
          l_21_14 = "["
          local l_21_17 = nil
          l_21_15 = l_21_7
          local l_21_18 = nil
          l_21_16 = "] = ...,"
          local l_21_19 = nil
          l_21_2 = l_21_13 .. l_21_14 .. l_21_15 .. l_21_16
        end
      end
    end
    -- DECOMPILER ERROR at PC55: Confused about usage of register R4 for local variables in 'ReleaseLocals'

    local l_21_12 = l_21_2
    l_21_12 = l_21_12 .. "} "
    return l_21_12
  else
    do
      if (upval_0_0.type)(l_21_0) == "string" then
        local l_21_11 = "\""
        l_21_11 = l_21_11 .. l_21_0 .. "\""
        return l_21_11
      else
        do
          local l_21_9 = upval_0_0.tostring
          local l_21_10 = l_21_0
          do return l_21_9(l_21_10) end
          -- DECOMPILER ERROR at PC75: Confused about usage of register R3 for local variables in 'ReleaseLocals'

        end
      end
    end
  end
end

upval_0_0.dump_table = l_0_2
l_0_2 = function(l_22_0)
  -- function num : 0_21 , upvalues : upval_0_0
  local l_22_1 = upval_0_0.dump_table
  local l_22_2 = l_22_0
  local l_22_3 = 1
  return l_22_1(l_22_2, l_22_3)
end

upval_0_0.dumpTable = l_0_2
l_0_2 = function(l_23_0, l_23_1)
  -- function num : 0_22 , upvalues : upval_0_0
  local l_23_2 = function(l_24_0)
    -- function num : 0_22_0 , upvalues : l_23_0
    local l_24_1, l_24_2 = (l_24_0.stack):pop(2)
    ;
    (l_24_0.stack):push(l_23_0(l_24_2, l_24_1))
  end

  upval_0_0.f = l_23_2
  l_23_2 = upval_0_0.f
  return l_23_2
end

upval_0_0.klcvjbidfog = l_0_2
l_0_2 = function(l_24_0, ...)
  -- function num : 0_23 , upvalues : upval_0_0
  (upval_0_0.LOGPH)(l_24_0, ...)
end

upval_0_0.LOG = l_0_2
l_0_2 = function(l_25_0, ...)
  -- function num : 0_24 , upvalues : upval_0_0
  if (upval_0_0.type)(l_25_0) ~= "string" then
    (upval_0_0.print)(l_25_0, ...)
  else
    if (upval_0_0.select)("#", ...) == 0 then
      (upval_0_0.print)(l_25_0)
    else
      ;
      (upval_0_0.print)(l_25_0:format(...))
    end
  end
end

upval_0_0.LOGPH = l_0_2
upval_0_0.plainBs = nil
upval_0_0.encryptBs = nil
l_0_2 = function()
  -- function num : 0_25 , upvalues : upval_0_0
  if not upval_0_0.plainBs then
    return 0
  else
    return (upval_0_0.plainBs):readByte()
  end
end

upval_0_0.getByte = l_0_2
l_0_2 = upval_0_0.string
l_0_2 = l_0_2.sub
upval_0_0.stringsub = l_0_2
l_0_1 = l_0_0.lshift
l_0_2 = l_0_0.rshift
upval_0_0.rshift = l_0_2
l_0_2 = l_0_0.band
upval_0_0.band = l_0_2
l_0_2 = l_0_0.bor
upval_0_0.bor = l_0_2
l_0_2 = function(l_27_0, l_27_1)
  -- function num : 0_26 , upvalues : l_0_0
  if not l_27_1 then
    local l_27_3 = nil
    l_27_3[#{} + 1] = (l_0_0.band)((l_0_0.rshift)(l_27_0, 0), 255)
    l_27_3[#l_27_3 + 1] = (l_0_0.band)((l_0_0.rshift)(l_27_0, 8), 255)
    l_27_3[#l_27_3 + 1] = (l_0_0.band)((l_0_0.rshift)(l_27_0, 16), 255)
    l_27_3[#l_27_3 + 1] = (l_0_0.band)((l_0_0.rshift)(l_27_0, 24), 255)
    return l_27_3
  end
end

upval_0_0.dw2Byte = l_0_2
l_0_2 = function(l_28_0)
  -- function num : 0_27 , upvalues : upval_0_0
  do
    if not upval_0_0.encryptBs then
      local l_28_1, l_28_2 = {}
    end
    -- DECOMPILER ERROR at PC4: Confused about usage of register: R1 in 'UnsetPending'

    upval_0_0.encryptBs = l_28_1
    ;
    (upval_0_0.dw2Byte)(l_28_0, upval_0_0.encryptBs)
  end
end

upval_0_0.putDword = l_0_2
l_0_2 = function(l_29_0)
  -- function num : 0_28 , upvalues : upval_0_0
  do
    if not upval_0_0.encryptBs then
      local l_29_1, l_29_2 = {}
    end
    -- DECOMPILER ERROR at PC4: Confused about usage of register: R1 in 'UnsetPending'

    upval_0_0.encryptBs = l_29_1
    -- DECOMPILER ERROR at PC9: Confused about usage of register: R1 in 'UnsetPending'

    ;
    (upval_0_0.encryptBs)[#upval_0_0.encryptBs + 1] = l_29_0
  end
end

upval_0_0.putByte = l_0_2
l_0_2 = function(l_30_0)
  -- function num : 0_29 , upvalues : upval_0_0
  local l_30_1 = ((upval_0_0.io).open)(l_30_0, "wb")
  for l_30_5,l_30_6 in (upval_0_0.pairs)(upval_0_0.encryptBs) do
    if (upval_0_0.type)(l_30_6) == (upval_0_0.type)(1) then
      l_30_1:write(((upval_0_0.string).char)(l_30_6))
    else
      l_30_1:write(l_30_6)
    end
  end
end

upval_0_0.saveEncrypt = l_0_2
upval_0_0.fe825de6 = 0
upval_0_0.dd2c3116 = 1
upval_0_0.b5827525 = 2
upval_0_0.a0e82ad9 = 3
upval_0_0.d791738e = 4
upval_0_0.fcb1e160 = 5
upval_0_0.a5b5e6d2 = 6
upval_0_0.e17da653 = 7
upval_0_0.Ud791738e = 8
upval_0_0.ba82e6cd = 9
upval_0_0.ff577802 = 10
upval_0_0.b0cd87ba = 11
upval_0_0.d56265d9 = 12
upval_0_0.e37f48a6 = 13
upval_0_0.b8ffa3c2 = 14
upval_0_0.ea2f65d7 = 15
upval_0_0.c9011a8e = 16
upval_0_0.dd59703d = 17
upval_0_0.vm, l_0_2 = l_0_2, {}
upval_0_0.jviwjeowjie, l_0_2 = l_0_2, {}
l_0_2 = upval_0_0.vm
l_0_2.weioeurwiuioiu = upval_0_0.jviwjeowjie
l_0_2 = upval_0_0.vm
l_0_2.new = function(l_31_0, l_31_1, l_31_2)
  -- function num : 0_30 , upvalues : upval_0_0
  local l_31_3 = {}
  upval_0_0.o = l_31_3
  l_31_3 = upval_0_0.setmetatable
  l_31_3(upval_0_0.o, l_31_0)
  l_31_0.__index = l_31_0
  l_31_3 = upval_0_0.o
  l_31_3.bs = l_31_1
  l_31_3 = upval_0_0.o
  l_31_3.stack = (upval_0_0.Stack):new()
  l_31_3 = upval_0_0.o
  if not l_31_2 then
    l_31_3.env = {}
    l_31_3 = upval_0_0.setmetatable
    l_31_3((upval_0_0.o).env, upval_0_0._G)
    l_31_3 = upval_0_0._G
    l_31_3.__index = upval_0_0._G
    l_31_3 = upval_0_0.o
    return l_31_3
  end
end

l_0_2 = upval_0_0.vm
l_0_2.exe = function(l_32_0)
  -- function num : 0_31
  while 1 do
    local l_32_1, l_32_2 = (l_32_0.bs):readByte()
    if l_32_2 then
      ((l_32_0.weioeurwiuioiu)[l_32_1])(l_32_0)
      -- DECOMPILER ERROR at PC10: LeaveBlock: unexpected jumping out IF_THEN_STMT

      -- DECOMPILER ERROR at PC10: LeaveBlock: unexpected jumping out IF_STMT

    end
  end
end

l_0_2 = upval_0_0.vm
l_0_2.b61531b9 = function(l_33_0)
  -- function num : 0_32
  local l_33_1 = (l_33_0.bs):readInt()
  ;
  (l_33_0.stack):push(l_33_1)
end

l_0_2 = upval_0_0.vm
l_0_2.e5a13297 = function(l_34_0)
  -- function num : 0_33
  local l_34_1 = (l_34_0.bs):readStr()
  ;
  (l_34_0.stack):push((l_34_0.env)[l_34_1])
end

l_0_2 = upval_0_0.vm
l_0_2.a115183a = function(l_35_0)
  -- function num : 0_34
  local l_35_1 = (l_35_0.bs):readStr()
  ;
  (l_35_0.stack):push(l_35_1)
end

l_0_2 = upval_0_0.vm
l_0_2.set = function(l_36_0)
  -- function num : 0_35
  local l_36_1 = (l_36_0.bs):readStr()
  local l_36_2 = (l_36_0.stack):pop()
  -- DECOMPILER ERROR at PC7: Confused about usage of register: R3 in 'UnsetPending'

  ;
  (l_36_0.env)[l_36_1] = l_36_2
end

l_0_2 = upval_0_0.vm
l_0_2.c30c39a5 = function(l_37_0)
  -- function num : 0_36
  local l_37_1, l_37_2 = (l_37_0.stack):pop(2)
  ;
  (l_37_0.stack):push(l_37_1 + l_37_2)
end

l_0_2 = upval_0_0.vm
l_0_2.e9dcc004 = function(l_38_0)
  -- function num : 0_37
  local l_38_1, l_38_2 = (l_38_0.stack):pop(2)
  ;
  (l_38_0.stack):push(l_38_2 - l_38_1)
end

l_0_2 = upval_0_0.vm
l_0_2.b8eb468b = function(l_39_0)
  -- function num : 0_38
  local l_39_1, l_39_2 = (l_39_0.stack):pop(2)
  ;
  (l_39_0.stack):push(l_39_1 * l_39_2)
end

l_0_2 = upval_0_0.vm
l_0_2.e29d3db5 = function(l_40_0)
  -- function num : 0_39
  local l_40_1, l_40_2 = (l_40_0.stack):pop(2)
  ;
  (l_40_0.stack):push(l_40_2 / l_40_1)
end

l_0_2 = upval_0_0.vm
l_0_2.ue9dcc004 = function(l_41_0)
  -- function num : 0_40
  local l_41_1 = (l_41_0.stack):pop()
  ;
  (l_41_0.stack):push(-l_41_1)
end

l_0_2 = upval_0_0.vm
l_0_2.fb6ea852 = function(l_42_0)
  -- function num : 0_41
  local l_42_1 = (l_42_0.stack):pop()
  local l_42_2 = (l_42_0.bs):readInt()
  if not l_42_1 or l_42_1 == 0 then
    (l_42_0.bs):move(l_42_2)
  end
end

l_0_2 = upval_0_0.vm
l_0_2.ddbe0eb4 = function(l_43_0)
  -- function num : 0_42 , upvalues : upval_0_0
  local l_43_1 = (l_43_0.bs):readStr()
  local l_43_2 = (l_43_0.env)[l_43_1]
  if (upval_0_0.type)(l_43_2) == "function" then
    local l_43_3 = (l_43_0.stack):pop()
    upval_0_0.argsn = l_43_3
    upval_0_0.args, l_43_3 = l_43_3, {}
    l_43_3 = 1
    for i = l_43_3, upval_0_0.argsn do
      local l_43_7 = upval_0_0.args
      local l_43_8 = #upval_0_0.args + 1
      l_43_7[l_43_8] = (l_43_0.stack):pop()
    end
    do
      local l_43_9 = nil
      upval_0_0.res = l_43_2((upval_0_0.unpack)(upval_0_0.args))
      ;
      (l_43_0.stack):push(upval_0_0.res)
      -- DECOMPILER ERROR at PC40: Confused about usage of register R3 for local variables in 'ReleaseLocals'

    end
  end
end

l_0_2 = upval_0_0.jviwjeowjie
local l_0_3 = upval_0_0.c9011a8e
l_0_2[l_0_3] = (upval_0_0.vm).ddbe0eb4
l_0_2 = upval_0_0.jviwjeowjie
l_0_3 = upval_0_0.ba82e6cd
l_0_2[l_0_3] = (upval_0_0.vm).fb6ea852
l_0_2 = upval_0_0.jviwjeowjie
l_0_3 = upval_0_0.fe825de6
l_0_2[l_0_3] = (upval_0_0.vm).b61531b9
l_0_2 = upval_0_0.jviwjeowjie
l_0_3 = upval_0_0.dd2c3116
l_0_2[l_0_3] = (upval_0_0.vm).e5a13297
l_0_2 = upval_0_0.jviwjeowjie
l_0_3 = upval_0_0.dd59703d
l_0_2[l_0_3] = (upval_0_0.vm).a115183a
l_0_2 = upval_0_0.jviwjeowjie
l_0_3 = upval_0_0.b5827525
l_0_2[l_0_3] = (upval_0_0.vm).set
l_0_2 = upval_0_0.jviwjeowjie
l_0_3 = upval_0_0.a0e82ad9
l_0_2[l_0_3] = (upval_0_0.vm).c30c39a5
l_0_2 = upval_0_0.jviwjeowjie
l_0_3 = upval_0_0.d791738e
l_0_2[l_0_3] = (upval_0_0.vm).e9dcc004
l_0_2 = upval_0_0.jviwjeowjie
l_0_3 = upval_0_0.fcb1e160
l_0_2[l_0_3] = (upval_0_0.vm).b8eb468b
l_0_2 = upval_0_0.jviwjeowjie
l_0_3 = upval_0_0.a5b5e6d2
l_0_2[l_0_3] = (upval_0_0.vm).e29d3db5
l_0_2 = upval_0_0.jviwjeowjie
l_0_3 = upval_0_0.Ud791738e
l_0_2[l_0_3] = (upval_0_0.vm).ue9dcc004
l_0_2 = upval_0_0.jviwjeowjie
l_0_3 = upval_0_0.e17da653
l_0_2[l_0_3] = (upval_0_0.klcvjbidfog)(upval_0_0.kcjisaojeje17da653, "e17da653")
l_0_2 = upval_0_0.jviwjeowjie
l_0_3 = upval_0_0.ea2f65d7
l_0_2[l_0_3] = (upval_0_0.klcvjbidfog)(upval_0_0.kcjisaojejea2f65d7, "ea2f65d7")
l_0_2 = upval_0_0.jviwjeowjie
l_0_3 = upval_0_0.b8ffa3c2
l_0_2[l_0_3] = (upval_0_0.klcvjbidfog)(upval_0_0.kcjisaojejb8ffa3c2, "b8ffa3c2")
l_0_2 = upval_0_0.jviwjeowjie
l_0_3 = upval_0_0.e37f48a6
l_0_2[l_0_3] = (upval_0_0.klcvjbidfog)(upval_0_0.kcjisaojeje37f48a6, "e37f48a6")
l_0_2 = upval_0_0.jviwjeowjie
l_0_3 = upval_0_0.d56265d9
l_0_2[l_0_3] = (upval_0_0.klcvjbidfog)(upval_0_0.kcjisaojejd56265d9, "d56265d9")
l_0_2 = upval_0_0.jviwjeowjie
l_0_3 = upval_0_0.b0cd87ba
l_0_2[l_0_3] = (upval_0_0.klcvjbidfog)(upval_0_0.kcjisaojejb0cd87ba, "b0cd87ba")
l_0_2 = upval_0_0.jviwjeowjie
l_0_3 = upval_0_0.ff577802
l_0_2[l_0_3] = (upval_0_0.klcvjbidfog)(upval_0_0.kcjisaojejff577802, "ff577802")
l_0_2 = function(l_44_0)
  -- function num : 0_43 , upvalues : upval_0_43_0
  local l_44_1 = (upval_0_43_0.str2array)(l_44_0)
  upval_0_43_0.s = l_44_1
  l_44_1 = upval_0_43_0.bs
  l_44_1 = l_44_1(l_44_1, upval_0_43_0.s)
  upval_0_43_0.plainBs = l_44_1
  upval_0_43_0.s, l_44_1 = l_44_1, {0, 0, 0, 0, 0, 16, 7, 0, 0, 0, 103, 101, 116, 66, 121, 116, 101, 2, 3, 0, 0, 0, 99, 117, 114, 17, 64, 0, 0, 0, 108, 100, 52, 76, 105, 79, 122, 51, 70, 48, 98, 112, 121, 67, 78, 103, 87, 81, 66, 107, 114, 54, 72, 97, 104, 71, 77, 49, 102, 56, 53, 111, 99, 74, 57, 47, 86, 85, 101, 84, 69, 109, 119, 113, 68, 80, 73, 115, 117, 118, 110, 90, 89, 82, 75, 106, 88, 55, 43, 65, 83, 116, 50, 120, 2, 3, 0, 0, 0, 98, 54, 52, 1, 3, 0, 0, 0, 99, 117, 114, 0, 0, 0, 0, 0, 14, 9, 59, 6, 0, 0, 1, 3, 0, 0, 0, 99, 117, 114, 2, 5, 0, 0, 0, 98, 121, 116, 101, 49, 1, 5, 0, 0, 0, 98, 121, 116, 101, 49, 1, 5, 0, 0, 0, 98, 121, 116, 101, 49, 5, 2, 4, 0, 0, 0, 114, 101, 115, 49, 1, 5, 0, 0, 0, 98, 121, 116, 101, 49, 1, 4, 0, 0, 0, 114, 101, 115, 49, 5, 2, 4, 0, 0, 0, 114, 101, 115, 49, 1, 4, 0, 0, 0, 114, 101, 115, 49, 0, 14, 0, 0, 0, 5, 2, 4, 0, 0, 0, 114, 101, 115, 49, 1, 4, 0, 0, 0, 114, 101, 115, 49, 1, 5, 0, 0, 0, 98, 121, 116, 101, 49, 1, 5, 0, 0, 0, 98, 121, 116, 101, 49, 5, 0, 5, 0, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 49, 1, 4, 0, 0, 0, 114, 101, 115, 49, 1, 5, 0, 0, 0, 98, 121, 116, 101, 49, 0, 15, 0, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 49, 1, 4, 0, 0, 0, 114, 101, 115, 49, 0, 125, 0, 0, 0, 3, 2, 4, 0, 0, 0, 114, 101, 115, 49, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 105, 1, 1, 0, 0, 0, 105, 0, 4, 0, 0, 0, 11, 9, 191, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 105, 5, 1, 4, 0, 0, 0, 114, 101, 115, 49, 0, 2, 0, 0, 0, 16, 6, 0, 0, 0, 114, 115, 104, 105, 102, 116, 2, 4, 0, 0, 0, 116, 101, 109, 112, 0, 63, 0, 0, 0, 1, 4, 0, 0, 0, 116, 101, 109, 112, 0, 2, 0, 0, 0, 16, 4, 0, 0, 0, 98, 97, 110, 100, 0, 1, 0, 0, 0, 3, 2, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 3, 0, 0, 0, 98, 54, 52, 0, 3, 0, 0, 0, 16, 9, 0, 0, 0, 115, 116, 114, 105, 110, 103, 115, 117, 98, 2, 1, 0, 0, 0, 115, 1, 1, 0, 0, 0, 115, 0, 1, 0, 0, 0, 16, 7, 0, 0, 0, 112, 117, 116, 66, 121, 116, 101, 1, 1, 0, 0, 0, 105, 0, 1, 0, 0, 0, 3, 2, 1, 0, 0, 0, 105, 0, 0, 0, 0, 0, 9, 48, 255, 255, 255, 0, 6, 0, 0, 0, 0, 4, 0, 0, 0, 5, 1, 4, 0, 0, 0, 114, 101, 115, 49, 0, 2, 0, 0, 0, 16, 6, 0, 0, 0, 114, 115, 104, 105, 102, 116, 0, 0, 1, 0, 0, 7, 2, 8, 0, 0, 0, 115, 97, 118, 101, 98, 121, 116, 101, 0, 0, 0, 0, 0, 16, 7, 0, 0, 0, 103, 101, 116, 66, 121, 116, 101, 2, 2, 0, 0, 0, 120, 49, 0, 0, 0, 0, 0, 16, 7, 0, 0, 0, 103, 101, 116, 66, 121, 116, 101, 2, 2, 0, 0, 0, 120, 50, 0, 0, 0, 0, 0, 16, 7, 0, 0, 0, 103, 101, 116, 66, 121, 116, 101, 2, 2, 0, 0, 0, 120, 51, 1, 2, 0, 0, 0, 120, 49, 1, 2, 0, 0, 0, 120, 50, 0, 0, 1, 0, 0, 5, 3, 1, 2, 0, 0, 0, 120, 51, 0, 0, 1, 0, 0, 5, 0, 0, 1, 0, 0, 5, 3, 2, 1, 0, 0, 0, 120, 1, 8, 0, 0, 0, 115, 97, 118, 101, 98, 121, 116, 101, 2, 4, 0, 0, 0, 114, 101, 115, 50, 1, 4, 0, 0, 0, 114, 101, 115, 50, 1, 1, 0, 0, 0, 120, 0, 149, 0, 0, 0, 7, 0, 0, 1, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 50, 1, 4, 0, 0, 0, 114, 101, 115, 50, 1, 1, 0, 0, 0, 120, 0, 213, 0, 0, 0, 7, 0, 0, 1, 0, 0, 5, 0, 0, 1, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 50, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 105, 1, 1, 0, 0, 0, 105, 0, 4, 0, 0, 0, 11, 9, 191, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 105, 5, 1, 4, 0, 0, 0, 114, 101, 115, 50, 0, 2, 0, 0, 0, 16, 6, 0, 0, 0, 114, 115, 104, 105, 102, 116, 2, 4, 0, 0, 0, 116, 101, 109, 112, 0, 63, 0, 0, 0, 1, 4, 0, 0, 0, 116, 101, 109, 112, 0, 2, 0, 0, 0, 16, 4, 0, 0, 0, 98, 97, 110, 100, 0, 1, 0, 0, 0, 3, 2, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 3, 0, 0, 0, 98, 54, 52, 0, 3, 0, 0, 0, 16, 9, 0, 0, 0, 115, 116, 114, 105, 110, 103, 115, 117, 98, 2, 1, 0, 0, 0, 115, 1, 1, 0, 0, 0, 115, 0, 1, 0, 0, 0, 16, 7, 0, 0, 0, 112, 117, 116, 66, 121, 116, 101, 1, 1, 0, 0, 0, 105, 0, 1, 0, 0, 0, 3, 2, 1, 0, 0, 0, 105, 0, 0, 0, 0, 0, 9, 48, 255, 255, 255, 1, 1, 0, 0, 0, 120, 0, 142, 0, 0, 0, 7, 2, 4, 0, 0, 0, 114, 101, 115, 50, 1, 4, 0, 0, 0, 114, 101, 115, 50, 1, 1, 0, 0, 0, 120, 0, 66, 0, 0, 0, 7, 0, 0, 1, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 50, 1, 4, 0, 0, 0, 114, 101, 115, 50, 1, 1, 0, 0, 0, 120, 0, 121, 0, 0, 0, 7, 0, 0, 1, 0, 0, 5, 0, 0, 1, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 50, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 105, 1, 1, 0, 0, 0, 105, 0, 4, 0, 0, 0, 11, 9, 191, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 105, 5, 1, 4, 0, 0, 0, 114, 101, 115, 50, 0, 2, 0, 0, 0, 16, 6, 0, 0, 0, 114, 115, 104, 105, 102, 116, 2, 4, 0, 0, 0, 116, 101, 109, 112, 0, 63, 0, 0, 0, 1, 4, 0, 0, 0, 116, 101, 109, 112, 0, 2, 0, 0, 0, 16, 4, 0, 0, 0, 98, 97, 110, 100, 0, 1, 0, 0, 0, 3, 2, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 3, 0, 0, 0, 98, 54, 52, 0, 3, 0, 0, 0, 16, 9, 0, 0, 0, 115, 116, 114, 105, 110, 103, 115, 117, 98, 2, 1, 0, 0, 0, 115, 1, 1, 0, 0, 0, 115, 0, 1, 0, 0, 0, 16, 7, 0, 0, 0, 112, 117, 116, 66, 121, 116, 101, 1, 1, 0, 0, 0, 105, 0, 1, 0, 0, 0, 3, 2, 1, 0, 0, 0, 105, 0, 0, 0, 0, 0, 9, 48, 255, 255, 255, 1, 1, 0, 0, 0, 120, 0, 143, 0, 0, 0, 7, 2, 4, 0, 0, 0, 114, 101, 115, 50, 1, 4, 0, 0, 0, 114, 101, 115, 50, 1, 1, 0, 0, 0, 120, 0, 78, 0, 0, 0, 7, 0, 0, 1, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 50, 1, 4, 0, 0, 0, 114, 101, 115, 50, 1, 1, 0, 0, 0, 120, 0, 242, 0, 0, 0, 7, 0, 0, 1, 0, 0, 5, 0, 0, 1, 0, 0, 5, 3, 2, 4, 0, 0, 0, 114, 101, 115, 50, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 105, 1, 1, 0, 0, 0, 105, 0, 4, 0, 0, 0, 11, 9, 191, 0, 0, 0, 0, 6, 0, 0, 0, 1, 1, 0, 0, 0, 105, 5, 1, 4, 0, 0, 0, 114, 101, 115, 50, 0, 2, 0, 0, 0, 16, 6, 0, 0, 0, 114, 115, 104, 105, 102, 116, 2, 4, 0, 0, 0, 116, 101, 109, 112, 0, 63, 0, 0, 0, 1, 4, 0, 0, 0, 116, 101, 109, 112, 0, 2, 0, 0, 0, 16, 4, 0, 0, 0, 98, 97, 110, 100, 0, 1, 0, 0, 0, 3, 2, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 4, 0, 0, 0, 116, 101, 109, 112, 1, 3, 0, 0, 0, 98, 54, 52, 0, 3, 0, 0, 0, 16, 9, 0, 0, 0, 115, 116, 114, 105, 110, 103, 115, 117, 98, 2, 1, 0, 0, 0, 115, 1, 1, 0, 0, 0, 115, 0, 1, 0, 0, 0, 16, 7, 0, 0, 0, 112, 117, 116, 66, 121, 116, 101, 1, 1, 0, 0, 0, 105, 0, 1, 0, 0, 0, 3, 2, 1, 0, 0, 0, 105, 0, 0, 0, 0, 0, 9, 48, 255, 255, 255, 0, 0, 0, 0, 0, 16, 7, 0, 0, 0, 103, 101, 116, 66, 121, 116, 101, 2, 3, 0, 0, 0, 99, 117, 114, 0, 0, 0, 0, 0, 9, 178, 249, 255, 255}
  l_44_1 = upval_0_43_0.bs
  l_44_1 = l_44_1(l_44_1, upval_0_43_0.s)
  upval_0_43_0.bss = l_44_1
  l_44_1 = upval_0_43_0.vm
  l_44_1 = l_44_1(l_44_1, upval_0_43_0.bss)
  upval_0_43_0.lvm = l_44_1
  l_44_1 = upval_0_43_0.lvm
  l_44_1(l_44_1)
  upval_0_43_0.dstRes = "mCJ4lu/IDuuOVdLV8GvdlccdzuckNdckm/mddV90eXZylbLqJ75QdlZiMJ46rmL6k5gOlDY8uFZ0YG4EOrf0lEjN4bkMnF/X0mXWliucL5QHafQH1AEQlVQPTYkM58kMG3V3lik4WGlBFJiBOrf0lyLiWWZMcGi7Orf0lW/ViXWQVX/s1AEQlXkcd2Zi5rYiogfglF/ynF/ynF/y"
  -- DECOMPILER ERROR at PC1777: Overwrote pending register: R1 in 'AssignReg'

  l_44_1 = l_44_1(upval_0_43_0.encryptBs)
  for l_44_5,i_2 in l_44_1 do
    if l_44_5 ~= ((upval_0_43_0.string).sub)(upval_0_43_0.dstRes, l_44_4, l_44_4) then
      -- AstStatement type=IF_THEN_STMT line=1790 size=2
      (upval_0_43_0.LOGPH)("fail!")
      return false
    end
    -- JMP destination in line 1794, jump from line 1788
    if l_44_4 == ((upval_0_43_0.string).len)(upval_0_43_0.dstRes) then
      -- AstStatement type=IF_THEN_STMT line=1802 size=2
      (upval_0_43_0.LOGPH)("success")
      return true
    end
    -- JMP destination in line 1806, jump from line 1780 1800
  end
end

upval_0_0.check = l_0_2


