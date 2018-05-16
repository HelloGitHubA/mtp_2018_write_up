next bool: 0
locals(9): 0{l_0_0} 1{l_0_1} 2{l_0_2} 3{l_0_3} 4{l_0_7} 5{l_0_13} 6{l_0_45} 7{l_0_46} 8{l_0_47}
vpend(0):
tpend(0):
-- params : ...
-- function num : 0 , upvalues : upval_0_0
local l_0_4, l_0_5, l_0_6, l_0_28 = nil
local l_0_0 = upval_0_0.require
local l_0_1 = upval_0_0.setmetatable
local l_0_2 = (upval_0_0.string).char
local l_0_3 = (upval_0_0.table).concat
local l_0_7 = nil
-- DECOMPILER ERROR at PC18: Overwrote pending register: R5 in 'AssignReg'

-- DECOMPILER ERROR at PC20: Overwrote pending register: R6 in 'AssignReg'

-- JMP destination in line 22, jump from line 11 15
-- DECOMPILER ERROR at PC26: Overwrote pending register: R5 in 'AssignReg'

-- DECOMPILER ERROR at PC28: Overwrote pending register: R6 in 'AssignReg'

-- JMP destination in line 30, jump from line 24
if not upval_0_0.jit or (upval_0_0.jit).version_num <= 20000 or upval_0_0._VERSION == "Lua 5.2" then
  -- AstStatement type=IF_THEN_STMT line=26 size=1
  do
    local l_0_8 = nil
    -- DECOMPILER ERROR at PC37: Overwrote pending register: R6 in 'AssignReg'

    -- JMP destination in line 38, jump from line 21 29
    if l_0_7 then
      -- AstStatement type=IF_THEN_STMT line=44 size=2
      local l_0_9 = l_0_8
      do
        local l_0_10 = nil
        local l_0_11 = nil
        ;
        ((l_0_0("ffi")).cdef)("\t\ttypedef struct { uint8_t v; } idx_t;\n\t")
        local l_0_16, l_0_17, l_0_19 = nil, (l_0_0("ffi")).string
        local l_0_18 = (l_0_0("ffi")).copy
        local l_0_21, l_0_22, l_0_29, l_0_30, l_0_31, l_0_32 = ((l_0_0("ffi")).typeof)("uint8_t[256]"), (l_0_17.typeof)("idx_t"), (l_0_17.typeof)("uint8_t[?]")
        l_0_30 = function(l_2_0)
  -- function num : 0_1 , upvalues : l_0_r12, l_0_r14, l_0_r11, l_0_r13
  local l_2_1 = l_0_r12()
  for l_2_5 = 0, 255 do
    l_2_1[l_2_5] = l_2_5
  end
  local l_2_6 = #l_2_0
  local l_2_7 = l_0_r14(l_2_6)
  l_0_r11(l_2_7, l_2_0, l_2_6)
  local l_2_8 = l_0_r13()
  for l_2_12 = 0, 255 do
    l_2_8.v = l_2_8.v + l_2_1[l_2_12] + l_2_7[l_2_12 % l_2_6]
    local l_2_13 = l_2_8.v
    local l_2_14 = l_2_1[l_2_8.v]
    l_2_1[l_2_13] = l_2_1[l_2_12]
    l_2_1[l_2_12] = l_2_14
  end
  local l_2_15 = {}
  l_2_15.x = l_0_r13()
  l_2_15.y = l_0_r13()
  l_2_15.st = l_2_1
  return l_2_15
end

        l_0_11 = l_0_30
        l_0_30 = function(l_3_0, l_3_1)
  -- function num : 0_2 , upvalues : l_0_r14, l_0_r11, l_0_9, l_0_r10
  local l_3_2 = l_3_0.x
  local l_3_3 = l_3_0.y
  local l_3_4 = l_3_0.st
  local l_3_5 = #l_3_1
  local l_3_6 = l_0_r14(l_3_5)
  l_0_r11(l_3_6, l_3_1, l_3_5)
  for l_3_10 = 0, l_3_5 - 1 do
    local l_3_17 = nil
    l_3_17 = l_3_2.v
    l_3_17 = l_3_17 + 1
    l_3_2.v = l_3_17
    l_3_17 = l_3_3.v
    l_3_17 = l_3_17 + l_3_4[l_3_2.v]
    l_3_3.v = l_3_17
    l_3_17 = l_3_2.v
    local l_3_11, l_3_18 = nil
    l_3_11 = l_3_3.v
    local l_3_12, l_3_19 = nil
    l_3_18 = l_3_3.v
    l_3_18 = l_3_4[l_3_18]
    local l_3_13, l_3_20 = nil
    l_3_12 = l_3_2.v
    l_3_12 = l_3_4[l_3_12]
    l_3_4[l_3_11] = l_3_12
    l_3_4[l_3_17] = l_3_18
    l_3_17 = l_0_9
    l_3_11 = l_3_6[l_3_10]
    l_3_18 = l_3_2.v
    l_3_18 = l_3_4[l_3_18]
    l_3_12 = l_3_3.v
    l_3_12 = l_3_4[l_3_12]
    local l_3_21 = nil
    l_3_18 = l_3_18 + l_3_12
    l_3_18 = (l_3_18) % 256
    l_3_18 = l_3_4[l_3_18]
    l_3_17 = l_3_17(l_3_11, l_3_18)
    l_3_6[l_3_10] = l_3_17
  end
  local l_3_14 = l_0_r10
  local l_3_15 = l_3_6
  local l_3_16 = l_3_5
  return l_3_14(l_3_15, l_3_16)
end

        l_0_16 = l_0_30
      end
    else
      -- AstStatement type=IF_ELSE_STMT line=73 size=1
      do
        -- JMP destination in line 68, jump from line 42
        do
          local l_0_12 = nil
          -- JMP destination in line 73, jump from line 66 67
          local l_0_13 = nil
          if false then
            -- AstStatement type=IF_THEN_STMT line=78 size=25
            local l_0_14 = nil
            local l_0_15 = function(l_4_0)
  -- function num : 0_3
  local l_4_1 = {}
  for l_4_5 = 0, 255 do
    l_4_1[l_4_5] = l_4_5
  end
  local l_4_6 = #l_4_0
  local l_4_7 = 0
  for l_4_11 = 0, 255 do
    l_4_7 = (l_4_7 + l_4_1[l_4_11] + l_4_0:byte(l_4_11 % l_4_6 + 1)) % 256
    local l_4_12 = l_4_1[l_4_7]
    l_4_1[l_4_7] = l_4_1[l_4_11]
    l_4_1[l_4_11] = l_4_12
  end
  local l_4_13 = {}
  l_4_13.x = 0
  l_4_13.y = 0
  l_4_13.st = l_4_1
  return l_4_13
end

            local l_0_20 = function(l_5_0, l_5_1)
  -- function num : 0_4 , upvalues : l_0_2, l_0_r5, l_0_3
  local l_5_2 = l_5_0.x
  local l_5_3 = l_5_0.y
  local l_5_4 = l_5_0.st
  local l_5_5 = {}
  for l_5_9 = 1, #l_5_1 do
    local l_5_13, l_5_14 = nil
    l_5_13 = l_5_2 + 1
    l_5_2 = (l_5_13) % 256
    l_5_13 = l_5_4[l_5_2]
    l_5_13 = l_5_3 + l_5_13
    l_5_3 = (l_5_13) % 256
    l_5_13 = l_5_4[l_5_3]
    local l_5_10, l_5_15 = nil
    l_5_14 = l_5_4[l_5_2]
    l_5_4[l_5_3] = l_5_14
    l_5_4[l_5_2] = l_5_13
    l_5_13 = l_0_2
    l_5_14 = l_0_r5
    l_5_10, l_5_15 = l_5_1:byte, l_5_1
    l_5_10 = l_5_10(l_5_15, l_5_9)
    l_5_15 = l_5_4[l_5_2]
    l_5_15 = l_5_15 + l_5_4[l_5_3]
    l_5_15 = (l_5_15) % 256
    l_5_15 = l_5_4[l_5_15]
    do
      local l_5_16, l_5_17, l_5_18, l_5_19 = nil
      l_5_13 = l_5_13(l_5_14(l_5_10, l_5_15))
      l_5_5[l_5_9] = l_5_13
      -- DECOMPILER ERROR at PC32: Confused about usage of register R12 for local variables in 'ReleaseLocals'

      -- DECOMPILER ERROR at PC32: LeaveBlock: unexpected jumping out DO_STMT

    end
  end
  -- DECOMPILER ERROR at PC33: Confused about usage of register R11 for local variables in 'ReleaseLocals'

  l_5_0.x = l_5_2
  local l_5_11 = nil
  local l_5_12 = nil
  return l_0_3(l_5_5)
end

            -- JMP destination in line 87, jump from line 85
            -- DECOMPILER ERROR at PC92: Overwrote pending register: R14 in 'AssignReg'

            for l_0_26 = 1, (upval_0_0.tonumber)((upval_0_0.arg)[1]) or 100000 do
              local l_0_23, l_0_24, l_0_25, l_0_26 = function(l_6_0, l_6_1)
  -- function num : 0_5 , upvalues : l_0_r7, l_0_1, l_0_r8
  local l_6_2 = l_0_r7(l_6_1)
  local l_6_3 = l_0_1
  local l_6_4 = l_6_2
  local l_6_5 = {}
  local l_6_6 = l_0_r8
  l_6_5.__call = l_6_6
  l_6_5.__metatable = false
  return l_6_3(l_6_4, l_6_5)
end
, function(l_7_0, ...)
  -- function num : 0_6 , upvalues : upval_0_0
  ((upval_0_0.io).write)(((upval_0_0.string).format)(l_7_0, ...), "\n")
end

              local l_0_27 = "Z@\024轌闅\236"
            end
            -- DECOMPILER ERROR at PC102: Confused about usage of register: R11 in 'UnsetPending'

            local l_0_34 = nil
            -- DECOMPILER ERROR at PC105: Confused about usage of register: R10 in 'UnsetPending'

            -- DECOMPILER ERROR at PC108: Confused about usage of register: R12 in 'UnsetPending'

            -- DECOMPILER ERROR at PC108: Overwrote pending register: R19 in 'AssignReg'

            -- DECOMPILER ERROR at PC109: Confused about usage of register: R13 in 'UnsetPending'

            l_0_25("%-16s %8.3f sec (%d times, #key %d)", "RC4 keygen test", l_0_24() - nil, l_0_23(nil, l_0_27), #l_0_27)
            ;
            (upval_0_0.collectgarbage)()
            local l_0_33 = nil
            -- DECOMPILER ERROR at PC115: Confused about usage of register: R13 in 'UnsetPending'

            local l_0_35 = nil
            -- DECOMPILER ERROR at PC119: Confused about usage of register: R13 in 'UnsetPending'

            -- DECOMPILER ERROR at PC126: Confused about usage of register: R12 in 'UnsetPending'

            for l_0_39 = 1, l_0_26 do
              local l_0_36, l_0_37, l_0_38, l_0_39 = , l_0_33(), l_0_34(nil, l_0_27)
              local l_0_40 = l_0_34(nil, l_0_27)
              local l_0_41 = nil
              ;
              (upval_0_0.assert)(l_0_41 == l_0_40(l_0_39("bS1hjNeePwaj6dY293F7rzmcTFjZVS9O9vAq5l69onIiZTOwZ3LrtuiWLT0Jpr3lZ0XJ11Ajw6RoyLP6Xf66lbFu68edKJK8oyGJLu9xFTQRaFXrsMu9nX4Q5qufETjU0nsN6JZxGXQZfAAcgFyvlik2tJEyovhHsEINhtXnYuj7VpUEZl8ZXAVf2Aa5cbSYVcb1wY3D2ts2kHHXVqUhKpYQ60LKGbWOB1CKkSDFR8JfL9tBmpezS9MWCh1yTUXjfFxSbEq3KV7c8qtwxKGjINoDAMWDQLO0qBGC8IitKyc1zbBUbHBPTvx9TPiGpYObQeX5Ktu7ZtiRpak2o5h9AfEXHCd4tL1F2OsQfpMZghGWnRAez32JeWksXis6X1uJAZgA6mB5Fc7CErLJCiSJVl1TbG4Z7KhypNN0MOfeVV7RY5shwQtYixzA86LNa4w8It2XyjYe6qrcYX3Eq3cKEFFfBPJXZnqwoO3W6MJ52KUrTWcOtqnnfOtWhm9FsLZM")))
            end
            -- DECOMPILER ERROR at PC148: Confused about usage of register: R14 in 'UnsetPending'

            -- DECOMPILER ERROR at PC149: Confused about usage of register: R12 in 'UnsetPending'

            -- DECOMPILER ERROR at PC150: Confused about usage of register: R13 in 'UnsetPending'

            -- DECOMPILER ERROR at PC151: Confused about usage of register: R17 in 'UnsetPending'

            l_0_35("%-16s %8.3f sec (%d times, #key %d, #input %d)", "RC4 crypt test", l_0_33() - l_0_38, l_0_36, #l_0_37, #l_0_41)
          end
          local l_0_45 = nil
          local l_0_46 = nil
          local l_0_47 = nil
          -- DECOMPILER ERROR at PC156: Confused about usage of register: R9 in 'UnsetPending'

          upval_0_0.rc4 = l_0_1({}, {__call = l_0_34, __metatable = false})
          upval_0_0.dump_table = function(l_8_0, l_8_1)
  -- function num : 0_7 , upvalues : upval_0_0
  if l_8_1 > 5 then
    -- AstStatement type=IF_THEN_STMT line=3 size=1
    return ""
  end
  -- JMP destination in line 4, jump from line 1
  l_8_1 = l_8_1 + 1
  if (upval_0_0.type)(l_8_0) == "table" then
    -- AstStatement type=IF_THEN_STMT line=11 size=7
    local l_8_2 = "{ "
    local l_8_3 = 0
    for l_8_7,l_8_8 in (upval_0_0.pairs)(l_8_0) do
      l_8_3 = l_8_3 + 1
      if (upval_0_0.type)(l_8_7) ~= "number" then
        -- AstStatement type=IF_THEN_STMT line=23 size=1
        l_8_7 = "\"" .. l_8_7 .. "\""
      end
      -- JMP destination in line 26, jump from line 21
      if l_8_0 == l_8_8 then
        -- AstStatement type=IF_THEN_STMT line=30 size=1
        l_8_2 = l_8_2 .. "[" .. l_8_7 .. "] = __self,"
      else
        -- AstStatement type=IF_ELSE_STMT line=53 size=2
        -- JMP destination in line 35, jump from line 28
        if l_8_3 < 30 then
          -- AstStatement type=IF_THEN_STMT line=38 size=4
          local l_8_22 = l_8_2
          local l_8_20 = "["
          local l_8_21 = l_8_7
          l_8_2 = l_8_22 .. l_8_20 .. l_8_21 .. "] = " .. (upval_0_0.dump_table)(l_8_8, l_8_1) .. ","
        else
          -- AstStatement type=IF_ELSE_STMT line=53 size=11
          local l_8_13, l_8_14, l_8_15 = nil
          -- JMP destination in line 48, jump from line 36
          l_8_13 = l_8_2
          local l_8_16 = nil
          l_8_14 = "["
          local l_8_17 = nil
          l_8_15 = l_8_7
          local l_8_18 = nil
          l_8_16 = "] = ...,"
          local l_8_19 = nil
          l_8_2 = l_8_13 .. l_8_14 .. l_8_15 .. l_8_16
        end
      end
      -- JMP destination in line 53, jump from line 15 34 47
    end
    -- DECOMPILER ERROR at PC55: Confused about usage of register R4 for local variables in 'ReleaseLocals'

    local l_8_12 = l_8_2
    l_8_12 = l_8_12 .. "} "
    return l_8_12
  else
    -- AstStatement type=IF_ELSE_STMT line=75 size=1
    do
      -- JMP destination in line 60, jump from line 9
      if (upval_0_0.type)(l_8_0) == "string" then
        -- AstStatement type=IF_THEN_STMT line=66 size=3
        local l_8_11 = "\""
        l_8_11 = l_8_11 .. l_8_0 .. "\""
        return l_8_11
      else
        -- AstStatement type=IF_ELSE_STMT line=75 size=1
        do
          -- JMP destination in line 71, jump from line 64
          local l_8_9 = upval_0_0.tostring
          local l_8_10 = l_8_0
          do return l_8_9(l_8_10) end
          -- DECOMPILER ERROR at PC75: Confused about usage of register R3 for local variables in 'ReleaseLocals'

          -- JMP destination in line 75, jump from line 59 70
        end
      end
    end
  end
end

          upval_0_0.dumpTable = function(l_9_0)
  -- function num : 0_8 , upvalues : upval_0_0
  local l_9_1 = upval_0_0.dump_table
  local l_9_2 = l_9_0
  local l_9_3 = 1
  return l_9_1(l_9_2, l_9_3)
end

          upval_0_0.check = function(l_10_0)
  -- function num : 0_9 , upvalues : upval_0_0
  upval_0_0.k = "CDD8AAAA500CA8EF8713E1C758175003"
  local l_10_1 = (upval_0_0.rc4)(upval_0_0.k)
  upval_0_0.rc4_enc = l_10_1
  upval_0_0.plain = l_10_0
  l_10_1 = upval_0_0.prexor
  l_10_1 = l_10_1(l_10_0)
  upval_0_0.plain = l_10_1
  l_10_1 = upval_0_0.rc4_enc
  l_10_1 = l_10_1(upval_0_0.plain)
  upval_0_0.encrypted = l_10_1
  upval_0_0.dst, l_10_1 = l_10_1, {196, 243, 228, 110, 198, 157, 94, 18, 69, 27, 52, 91, 68, 162, 205, 155, 56, 241, 34, 116, 158, 77, 111, 66, 152, 103, 174, 84, 123, 234, 91, 133}
  upval_0_0.res = ""
  upval_0_0.i = 1
  -- JMP destination in line 51, jump from line 77
  while 1 do
    l_10_1 = upval_0_0.i
    if l_10_1 <= ((upval_0_0.string).len)(upval_0_0.encrypted) then
      -- AstStatement type=IF_THEN_STMT line=59 size=12
      l_10_1 = upval_0_0.string
      l_10_1 = l_10_1.sub
      l_10_1 = l_10_1(upval_0_0.encrypted, upval_0_0.i, upval_0_0.i)
      upval_0_0.v = l_10_1
      l_10_1 = upval_0_0.res
      l_10_1 = l_10_1 .. ((upval_0_0.string).byte)(upval_0_0.v) .. ","
      upval_0_0.res = l_10_1
      l_10_1 = upval_0_0.i
      l_10_1 = l_10_1 + 1
      upval_0_0.i = l_10_1
      -- DECOMPILER ERROR at PC77: LeaveBlock: unexpected jumping out IF_THEN_STMT

      -- DECOMPILER ERROR at PC77: LeaveBlock: unexpected jumping out IF_STMT

    end
  end
  -- JMP destination in line 78, jump from line 57
  upval_0_0.i = 1
  -- JMP destination in line 79, jump from line 108
  while 1 do
    l_10_1 = upval_0_0.i
    if l_10_1 <= ((upval_0_0.string).len)(upval_0_0.encrypted) then
      -- AstStatement type=IF_THEN_STMT line=87 size=14
      l_10_1 = upval_0_0.string
      l_10_1 = l_10_1.sub
      l_10_1 = l_10_1(upval_0_0.encrypted, upval_0_0.i, upval_0_0.i)
      upval_0_0.v = l_10_1
      l_10_1 = upval_0_0.string
      l_10_1 = l_10_1.byte
      l_10_1 = l_10_1(upval_0_0.v)
      if l_10_1 ~= (upval_0_0.dst)[upval_0_0.i] then
        -- AstStatement type=IF_THEN_STMT line=104 size=2
        l_10_1 = false
        return l_10_1
      end
      -- JMP destination in line 105, jump from line 102
      l_10_1 = upval_0_0.i
      l_10_1 = l_10_1 + 1
      upval_0_0.i = l_10_1
      -- DECOMPILER ERROR at PC108: LeaveBlock: unexpected jumping out IF_THEN_STMT

      -- DECOMPILER ERROR at PC108: LeaveBlock: unexpected jumping out IF_STMT

    end
  end
  -- JMP destination in line 109, jump from line 85
  l_10_1 = true
  return l_10_1
end

          ;
          (upval_0_0.print)((upval_0_0.check)("E0EA72E0E1C1BFFBC26E8B47AD9D809C"))
          -- DECOMPILER ERROR: 2 unprocessed JMP targets
          -- JMP destination in line 140, jump from line 138
          -- JMP destination in line 153, jump from line 76
        end
      end
    end
  end
end