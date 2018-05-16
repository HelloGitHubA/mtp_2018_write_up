function randomFunction	bs.new (INPUT_VAR_0_,INPUT_VAR_1_)
	var_0_2 = {}
	o = var_0_2
	ISTC unhandled at 0004
	--jump to 0007 (if previous if statement is false) --0007 JMP-JMP
	var_0_3 = {}
	--location 0007--0007 LOCATION-LOCATION
	o.data = var_0_3
	var_0_2 = type(INPUT_VAR_1_.unknownB0)
	if var_0_2 ==  "number" then
		--jump to 0033 (if previous if statement is false) --0033 JMP-JMP
		var_0_2 = {}
		t = var_0_2
		var_0_3 = INPUT_VAR_1_
		for var_0_5, var_0_6 in pairs(var_0_3) do --var_0_2 FORTEST-FORTEST
			LEN unhandled at 0021
			var_0_8 = t +  1 --var_0_8 NUMBER-NUMBER
			var_0_10 = var_0_6
			var_0_9 = string.char(var_0_10)
			t[var_0_8] = var_0_9
		end --end of a for loop
		o.data = t
	end
	var_0_3 = 1 --var_0_3 NUMBER-NUMBER
	o.i = var_0_3
	LEN unhandled at 0037
	o.length = var_0_3
	var_0_4 = INPUT_VAR_0_
	setmetatable(o, var_0_4)
	INPUT_VAR_0_.__index = INPUT_VAR_0_
	return o
end


function randomFunction	bs.move (INPUT_VAR_0_)
	var_1_2 = INPUT_VAR_0_.i + INPUT_VAR_1_ --var_1_2 NUMBER-NUMBER
	var_1_3 = INPUT_VAR_0_.length +  1 --var_1_3 NUMBER-NUMBER
	if var_1_3 < var_1_2 then
		--jump to 0010 (if previous if statement is false) --0010 JMP-JMP
		var_1_2 = false --var_1_2 PRIMITIVE-PRIMITIVE
		return var_1_2
	else
		--location 0010--0010 LOCATION-LOCATION_
		var_1_2 = INPUT_VAR_0_.i + INPUT_VAR_1_ --var_1_2 NUMBER-NUMBER
		var_1_3 = 1 --var_1_3 NUMBER-NUMBER
		if var_1_2 < var_1_3 then
			--jump to 0018 (if previous if statement is false) --0018 JMP-JMP
			var_1_2 = false --var_1_2 PRIMITIVE-PRIMITIVE
			return var_1_2
		else
			--location 0018--0018 LOCATION-LOCATION_
			var_1_2 = INPUT_VAR_0_.i + INPUT_VAR_1_ --var_1_2 NUMBER-NUMBER
			INPUT_VAR_0_.i = var_1_2
			var_1_2 = true --var_1_2 PRIMITIVE-PRIMITIVE
			return var_1_2
		end 
	end
	return
end


function randomFunction	bs.pop (INPUT_VAR_0_,INPUT_VAR_1_,INPUT_VAR_2_,INPUT_VAR_3_,INPUT_VAR_4_,INPUT_VAR_5_,INPUT_VAR_6_,INPUT_VAR_7_,INPUT_VAR_8_,INPUT_VAR_9_,INPUT_VAR_10_)
	var_2_3 = INPUT_VAR_0_
	var_2_4 = INPUT_VAR_1_
	var_2_2, var_2_3 = INPUT_VAR_0_.pop_raw(var_2_3, var_2_4)
	var_2_4 = {}
	var_2_6 = var_2_2
	for var_2_8, var_2_9 in pairs(var_2_6) do --var_2_5 FORTEST-FORTEST
		LEN unhandled at 0010
		var_2_10 = INPUT_VAR_10_ +  1 --var_2_10 NUMBER-NUMBER
		var_2_12 = var_2_9
		var_2_13 = 1 --var_2_13 NUMBER-NUMBER
		var_2_11 = string.byte(var_2_12, var_2_13)
		var_2_4[var_2_10] = var_2_11
	end --end of a for loop
	var_2_5 = var_2_4
	var_2_6 = var_2_3
	return var_2_5, var_2_6
end


function randomFunction	bs.pop_raw (INPUT_VAR_0_,INPUT_VAR_1_)
	var_3_2 = {}
	var_3_6 = INPUT_VAR_0_.i + INPUT_VAR_1_ --var_3_6 NUMBER-NUMBER
	var_3_6 = var_3_6 -  1 --var_3_6 NUMBER-NUMBER
	var_3_3 = unpack(INPUT_VAR_0_.data, INPUT_VAR_0_.i, var_3_6) --var_3_3 REPLACE-REPLACE
	TSETM unhandled at 0009
	var_3_4 = INPUT_VAR_0_
	var_3_5 = INPUT_VAR_1_
	var_3_3 = INPUT_VAR_0_.move(var_3_4, var_3_5)
	var_3_4 = var_3_2
	var_3_5 = var_3_3
	return var_3_4, var_3_5
end


function randomFunction	bs.readByte (INPUT_VAR_0_)
	var_4_2 = INPUT_VAR_0_
	var_4_3 = 1 --var_4_3 NUMBER-NUMBER
	var_4_1, var_4_2 = INPUT_VAR_0_.pop(var_4_2, var_4_3)
	var_4_4 = var_4_2
	return var_4_1.unknownB1, var_4_4
end


function randomFunction	bs.readInt (INPUT_VAR_0_)
	var_5_1 = 0 --var_5_1 NUMBER-NUMBER
	var_5_3 = INPUT_VAR_0_
	var_5_4 = 4 --var_5_4 NUMBER-NUMBER
	var_5_2 = INPUT_VAR_0_.pop(var_5_3, var_5_4)
	var_5_4 = var_5_2
	for var_5_6, var_5_7 in pairs(var_5_4) do --var_5_3 FORTEST-FORTEST
		var_5_9 = var_5_7
		var_5_10 = var_5_6 -  1 --var_5_10 NUMBER-NUMBER
		var_5_10 =  8 * var_5_10 --var_5_10 NUMBER-NUMBER
		var_5_8 = uget_5_0(var_5_9, var_5_10)
		var_5_1 = var_5_1 + var_5_8 --var_5_1 NUMBER-NUMBER
	end --end of a for loop
	var_5_3 = 2147483648 --var_5_3 NUMBER-NUMBER
	if var_5_3 < var_5_1 then
		--jump to 0024 (if previous if statement is false) --0024 JMP-JMP
		var_5_1 = var_5_1 +  2147483648 --var_5_1 NUMBER-NUMBER
		var_5_1 = var_5_1 %  4294967296
		var_5_1 = var_5_1 -  2147483648 --var_5_1 NUMBER-NUMBER
	end
	return var_5_1
end


function randomFunction	bs.readStr (INPUT_VAR_0_)
	var_6_3 = INPUT_VAR_0_
	var_6_2 = INPUT_VAR_0_.readInt(var_6_3)
	var_6_4 = INPUT_VAR_0_
	var_6_5 = var_6_2
	var_6_3 = INPUT_VAR_0_.pop_raw(var_6_4, var_6_5)
	var_6_5 = var_6_3
	for var_6_7, var_6_8 in pairs(var_6_5) do --var_6_4 FORTEST-FORTEST
		var_6_9 = ""
		var_6_10 = var_6_8
		var_6_1 = var_6_9 .. var_6_10
	end --end of a for loop
	return var_6_1
end


function randomFunction(INPUT_VAR_0_)
	var_7_1 = INPUT_VAR_0_.i -  1 --var_7_1 NUMBER-NUMBER
	return var_7_1
end


function randomFunction	c34c179c.new (INPUT_VAR_0_)
	var_8_1 = {}
	var_8_3 = var_8_1
	var_8_4 = INPUT_VAR_0_
	setmetatable(var_8_3, var_8_4)
	INPUT_VAR_0_.__index = INPUT_VAR_0_
	var_8_2 = {}
	var_8_1.stack = var_8_2
	return var_8_1
end


function randomFunction	c34c179c.push (INPUT_VAR_0_,INPUT_VAR_1_)
	var_9_4 = INPUT_VAR_1_
	table.insert(INPUT_VAR_0_.stack, var_9_4)
	return
end


function randomFunction(INPUT_VAR_0_,INPUT_VAR_1_,INPUT_VAR_2_,INPUT_VAR_3_,INPUT_VAR_4_,INPUT_VAR_5_,INPUT_VAR_6_,INPUT_VAR_7_,INPUT_VAR_8_)
	ISTC unhandled at 0001
	--jump to 0004 (if previous if statement is false) --0004 JMP-JMP
	var_10_2 = 1 --var_10_2 NUMBER-NUMBER
	--location 0004--0004 LOCATION-LOCATION
	var_10_3 = {}
	var_10_4 = 1 --var_10_4 NUMBER-NUMBER
	var_10_5 = var_10_2
	var_10_6 = 1 --var_10_6 NUMBER-NUMBER
	for var_10_7 = var_10_4,var_10_5,var_10_6 do --location 0008, loop ends at 0019-1
		LEN unhandled at 0009
		var_10_8 = INPUT_VAR_8_ +  1 --var_10_8 NUMBER-NUMBER
		LEN unhandled at 0015
		var_10_9 = table.remove(INPUT_VAR_0_.stack, INPUT_VAR_0_.stack)
		var_10_3[var_10_8] = var_10_9
	end --location 0018, loops back to 0009-1
	var_10_5 = var_10_3
	return unpack(var_10_5)
end


function randomFunction	BigNum.new (INPUT_VAR_0_)
	var_11_1 = {}
	var_11_3 = var_11_1
	setmetatable(var_11_3, BigNum.mt)
	var_11_3 = var_11_1
	var_11_4 = INPUT_VAR_0_
	BigNum.change(var_11_3, var_11_4)
	return var_11_1
end


function randomFunction	BigNum.mt.sub (INPUT_VAR_0_,INPUT_VAR_1_)
	var_12_2 = BigNum.new()
	var_12_4 = INPUT_VAR_0_
	var_12_3 = BigNum.new(var_12_4)
	var_12_5 = INPUT_VAR_1_
	var_12_4 = BigNum.new(var_12_5)
	var_12_6 = var_12_3
	var_12_7 = var_12_4
	var_12_8 = var_12_2
	BigNum.sub(var_12_6, var_12_7, var_12_8)
	return var_12_2
end


function randomFunction	BigNum.mt.add (INPUT_VAR_0_,INPUT_VAR_1_)
	var_13_2 = BigNum.new()
	var_13_4 = INPUT_VAR_0_
	var_13_3 = BigNum.new(var_13_4)
	var_13_5 = INPUT_VAR_1_
	var_13_4 = BigNum.new(var_13_5)
	var_13_6 = var_13_3
	var_13_7 = var_13_4
	var_13_8 = var_13_2
	BigNum.add(var_13_6, var_13_7, var_13_8)
	return var_13_2
end


function randomFunction	BigNum.mt.mul (INPUT_VAR_0_,INPUT_VAR_1_)
	var_14_2 = BigNum.new()
	var_14_4 = INPUT_VAR_0_
	var_14_3 = BigNum.new(var_14_4)
	var_14_5 = INPUT_VAR_1_
	var_14_4 = BigNum.new(var_14_5)
	var_14_6 = var_14_3
	var_14_7 = var_14_4
	var_14_8 = var_14_2
	BigNum.mul(var_14_6, var_14_7, var_14_8)
	return var_14_2
end


function randomFunction	BigNum.mt.div (INPUT_VAR_0_,INPUT_VAR_1_)
	var_15_2 = {}
	var_15_3 = {}
	var_15_4 = BigNum.new()
	var_15_5 = BigNum.new()
	var_15_7 = INPUT_VAR_0_
	var_15_6 = BigNum.new(var_15_7)
	var_15_2 = var_15_6
	var_15_7 = INPUT_VAR_1_
	var_15_6 = BigNum.new(var_15_7)
	var_15_3 = var_15_6
	var_15_7 = var_15_2
	var_15_8 = var_15_3
	var_15_9 = var_15_4
	var_15_10 = var_15_5
	BigNum.div(var_15_7, var_15_8, var_15_9, var_15_10)
	var_15_6 = var_15_4
	var_15_7 = var_15_5
	return var_15_6, var_15_7
end


function randomFunction	BigNum.mt.tostring (INPUT_VAR_0_)
	var_16_1 = 0 --var_16_1 NUMBER-NUMBER
	var_16_2 = 0 --var_16_2 NUMBER-NUMBER
	var_16_3 = "" --var_16_3 STRING-STRING
	if INPUT_VAR_0_ == nil then
		--jump to 0010 (if previous if statement is false) --0010 JMP-JMP
		return "nil"
	else
		--location 0010--0010 LOCATION-LOCATION_
		var_16_6 = 0 --var_16_6 NUMBER-NUMBER
		if var_16_6 < INPUT_VAR_0_.len then
			--jump to 0050 (if previous if statement is false) --0050 JMP-JMP
			var_16_5 = INPUT_VAR_0_.len -  2 --var_16_5 NUMBER-NUMBER
			var_16_6 = 0 --var_16_6 NUMBER-NUMBER
			var_16_7 = -1 --var_16_7 NUMBER-NUMBER
			for var_16_8 = var_16_5,var_16_6,var_16_7 do --location 0018, loop ends at 0037-1
				var_16_9 = 0 --var_16_9 NUMBER-NUMBER
				var_16_11 = string.len(unknown2)
				var_16_10 = RADIX_LEN - var_16_11 --var_16_10 NUMBER-NUMBER
				var_16_10 = var_16_10 -  1 --var_16_10 NUMBER-NUMBER
				var_16_11 = 1 --var_16_11 NUMBER-NUMBER
				for var_16_12 = var_16_9,var_16_10,var_16_11 do --location 0028, loop ends at 0033-1
					var_16_13 = ""
					var_16_4 = var_16_13 .. "0"
				end --location 0032, loops back to 0029-1
				var_16_9 = var_16_4
				var_16_4 = var_16_9 .. unknown3
			end --location 0036, loops back to 0019-1
			var_16_5 = INPUT_VAR_0_.len -  1 --var_16_5 NUMBER-NUMBER
			var_16_6 = var_16_4
			var_16_4 = unknown4 .. var_16_6
			if INPUT_VAR_0_.signal ==  "-" then
				--jump to 0048 (if previous if statement is false) --0048 JMP-JMP
				var_16_6 = var_16_4
				var_16_4 = INPUT_VAR_0_.signal .. var_16_6
			end
			return var_16_4
		else
			--location 0050--0050 LOCATION-LOCATION_
			return ""
		end 
	end
	return
end


function randomFunction	BigNum.mt.pow (INPUT_VAR_0_,INPUT_VAR_1_)
	var_17_3 = INPUT_VAR_0_
	var_17_2 = BigNum.new(var_17_3)
	var_17_4 = INPUT_VAR_1_
	var_17_3 = BigNum.new(var_17_4)
	var_17_5 = var_17_2
	var_17_6 = var_17_3
	return BigNum.pow(var_17_5, var_17_6)
end


function randomFunction	BigNum.mt.eq (INPUT_VAR_0_,INPUT_VAR_1_)
	var_18_3 = INPUT_VAR_0_
	var_18_2 = BigNum.new(var_18_3)
	var_18_4 = INPUT_VAR_1_
	var_18_3 = BigNum.new(var_18_4)
	var_18_5 = var_18_2
	var_18_6 = var_18_3
	return BigNum.eq(var_18_5, var_18_6)
end


function randomFunction	BigNum.mt.lt (INPUT_VAR_0_,INPUT_VAR_1_)
	var_19_3 = INPUT_VAR_0_
	var_19_2 = BigNum.new(var_19_3)
	var_19_4 = INPUT_VAR_1_
	var_19_3 = BigNum.new(var_19_4)
	var_19_5 = var_19_2
	var_19_6 = var_19_3
	return BigNum.lt(var_19_5, var_19_6)
end


function randomFunction	BigNum.mt.le (INPUT_VAR_0_,INPUT_VAR_1_)
	var_20_3 = INPUT_VAR_0_
	var_20_2 = BigNum.new(var_20_3)
	var_20_4 = INPUT_VAR_1_
	var_20_3 = BigNum.new(var_20_4)
	var_20_5 = var_20_2
	var_20_6 = var_20_3
	return BigNum.le(var_20_5, var_20_6)
end


function randomFunction	BigNum.mt.unm (INPUT_VAR_0_)
	var_21_2 = INPUT_VAR_0_
	var_21_1 = BigNum.new(var_21_2)
	if var_21_1.signal ==  "+" then
		--jump to 0011 (if previous if statement is false) --0011 JMP-JMP
		var_21_1.signal = "-"
	else
		--location 0011--0011 LOCATION-LOCATION_
		var_21_1.signal = "+"
	end
	return var_21_1
end


function randomFunction	BigNum.add (INPUT_VAR_0_,INPUT_VAR_1_,INPUT_VAR_2_)
	var_22_3 = 0 --var_22_3 NUMBER-NUMBER
	var_22_4 = 0 --var_22_4 NUMBER-NUMBER
	var_22_5 = 0 --var_22_5 NUMBER-NUMBER
	var_22_7 = 0 --var_22_7 NUMBER-NUMBER
	if INPUT_VAR_0_ ~= nil then
		--jump to 0012 (if previous if statement is false) --0012 JMP-JMP
		if INPUT_VAR_1_ ~= nil then
			--jump to 0012 (if previous if statement is false) --0012 JMP-JMP
			if INPUT_VAR_2_ == nil then
			end -- maybe?
		else
			--location 0012--0012 LOCATION-LOCATION_
			error("Function BigNum.add: parameter nil")
		end 
	else
		--location 0016--0016 LOCATION-LOCATION_
		if INPUT_VAR_0_.signal ==  "-" then
			--jump to 0041 (if previous if statement is false) --0041 JMP-JMP
			if INPUT_VAR_1_.signal ==  "+" then
				--jump to 0041 (if previous if statement is false) --0041 JMP-JMP
				INPUT_VAR_0_.signal = "+"
				var_22_9 = INPUT_VAR_1_
				var_22_10 = INPUT_VAR_0_
				var_22_11 = INPUT_VAR_2_
				BigNum.sub(var_22_9, var_22_10, var_22_11)
				var_22_9 = INPUT_VAR_0_
				var_22_10 = INPUT_VAR_2_
				var_22_8 = rawequal(var_22_9, var_22_10)
				if not var_22_8 then
					--jump to 0038 (if previous if statement is false) --0038 JMP-JMP
					INPUT_VAR_0_.signal = "-"
				end
				var_22_8 = 0 --var_22_8 NUMBER-NUMBER
				return var_22_8
			end 
		else
			--location 0041--0041 LOCATION-LOCATION_
			if INPUT_VAR_0_.signal ==  "+" then
				--jump to 0066 (if previous if statement is false) --0066 JMP-JMP
				if INPUT_VAR_1_.signal ==  "-" then
					--jump to 0066 (if previous if statement is false) --0066 JMP-JMP
					INPUT_VAR_1_.signal = "+"
					var_22_9 = INPUT_VAR_0_
					var_22_10 = INPUT_VAR_1_
					var_22_11 = INPUT_VAR_2_
					BigNum.sub(var_22_9, var_22_10, var_22_11)
					var_22_9 = INPUT_VAR_1_
					var_22_10 = INPUT_VAR_2_
					var_22_8 = rawequal(var_22_9, var_22_10)
					if not var_22_8 then
						--jump to 0063 (if previous if statement is false) --0063 JMP-JMP
						INPUT_VAR_1_.signal = "-"
					end
					var_22_8 = 0 --var_22_8 NUMBER-NUMBER
					return var_22_8
				end 
			else
				--location 0066--0066 LOCATION-LOCATION_
				if INPUT_VAR_0_.signal ==  "-" then
					--jump to 0073 (if previous if statement is false) --0073 JMP-JMP
					if INPUT_VAR_1_.signal ==  "-" then
						--jump to 0073 (if previous if statement is false) --0073 JMP-JMP
					end
				end
			end
		end 
		var_22_6 =  "-" --"+" STRING-STRING
	end
	if INPUT_VAR_1_.len < INPUT_VAR_0_.len then
		--jump to 0080 (if previous if statement is false) --0080 JMP-JMP
	else
		--location 0080--0080 LOCATION-LOCATION_
		var_22_8 = INPUT_VAR_1_
		var_22_1 = INPUT_VAR_0_
		var_22_0 = var_22_8
	end
	var_22_8 = 0 --var_22_8 NUMBER-NUMBER
	var_22_9 = INPUT_VAR_1_.len -  1 --var_22_9 NUMBER-NUMBER
	var_22_10 = 1 --var_22_10 NUMBER-NUMBER
	for var_22_11 = var_22_8,var_22_9,var_22_10 do --location 0087, loop ends at 0112-1
		if unknown5 ~= nil then
			--jump to 0097 (if previous if statement is false) --0097 JMP-JMP
			var_22_12 = unknown6 + unknown7 --var_22_12 NUMBER-NUMBER
			var_22_12 = var_22_12 + var_22_5 --var_22_12 NUMBER-NUMBER
			INPUT_VAR_2_[var_22_11] = var_22_12
		else
			--location 0097--0097 LOCATION-LOCATION_
			var_22_12 = unknown8 + var_22_5 --var_22_12 NUMBER-NUMBER
			INPUT_VAR_2_[var_22_11] = var_22_12
		end
		if RADIX <= unknown9 then
			--jump to 0110 (if previous if statement is false) --0110 JMP-JMP
			var_22_12 = unknown10 - RADIX --var_22_12 NUMBER-NUMBER
			INPUT_VAR_2_[var_22_11] = var_22_12
			var_22_5 = 1 --var_22_5 NUMBER-NUMBER
		else
			--location 0110--0110 LOCATION-LOCATION_
			var_22_5 = 0 --var_22_5 NUMBER-NUMBER
		end
	end --location 0111, loops back to 0088-1
	if var_22_5 == 0 then
		--jump to 0116 (if previous if statement is false) --0116 JMP-JMP
		var_22_8 = 1 --var_22_8 NUMBER-NUMBER
		INPUT_VAR_2_[INPUT_VAR_1_.len] = var_22_8
	end
	var_22_8 = INPUT_VAR_1_.len + var_22_5 --var_22_8 NUMBER-NUMBER
	INPUT_VAR_2_.len = var_22_8
	INPUT_VAR_2_.signal = var_22_6
	var_22_9 = INPUT_VAR_2_.len
	var_22_10 = 1 --var_22_10 NUMBER-NUMBER
	for var_22_11 = INPUT_VAR_2_.len,var_22_9,var_22_10 do --location 0122, loop ends at 0126-1
		var_22_12 = nil --var_22_12 PRIMITIVE-PRIMITIVE
		INPUT_VAR_2_[var_22_11] = var_22_12
	end --location 0125, loops back to 0123-1
	var_22_8 = 0 --var_22_8 NUMBER-NUMBER
	return var_22_8
end


function randomFunction	BigNum.sub (INPUT_VAR_0_,INPUT_VAR_1_,INPUT_VAR_2_)
	var_23_3 = 0 --var_23_3 NUMBER-NUMBER
	var_23_4 = 0 --var_23_4 NUMBER-NUMBER
	var_23_5 = 0 --var_23_5 NUMBER-NUMBER
	var_23_6 = 0 --var_23_6 NUMBER-NUMBER
	if INPUT_VAR_0_ ~= nil then
		--jump to 0011 (if previous if statement is false) --0011 JMP-JMP
		if INPUT_VAR_1_ ~= nil then
			--jump to 0011 (if previous if statement is false) --0011 JMP-JMP
			if INPUT_VAR_2_ == nil then
			end -- maybe?
		else
			--location 0011--0011 LOCATION-LOCATION_
			error("Function BigNum.sub: parameter nil")
		end 
	else
		--location 0015--0015 LOCATION-LOCATION_
		if INPUT_VAR_0_.signal ==  "-" then
			--jump to 0042 (if previous if statement is false) --0042 JMP-JMP
			if INPUT_VAR_1_.signal ==  "+" then
				--jump to 0042 (if previous if statement is false) --0042 JMP-JMP
				INPUT_VAR_0_.signal = "+"
				var_23_8 = INPUT_VAR_0_
				var_23_9 = INPUT_VAR_1_
				var_23_10 = INPUT_VAR_2_
				BigNum.add(var_23_8, var_23_9, var_23_10)
				INPUT_VAR_2_.signal = "-"
				var_23_8 = INPUT_VAR_0_
				var_23_9 = INPUT_VAR_2_
				var_23_7 = rawequal(var_23_8, var_23_9)
				if not var_23_7 then
					--jump to 0039 (if previous if statement is false) --0039 JMP-JMP
					INPUT_VAR_0_.signal = "-"
				end
				var_23_7 = 0 --var_23_7 NUMBER-NUMBER
				return var_23_7
			end 
		else
			--location 0042--0042 LOCATION-LOCATION_
			if INPUT_VAR_0_.signal ==  "-" then
				--jump to 0077 (if previous if statement is false) --0077 JMP-JMP
				if INPUT_VAR_1_.signal ==  "-" then
					--jump to 0077 (if previous if statement is false) --0077 JMP-JMP
					INPUT_VAR_0_.signal = "+"
					INPUT_VAR_1_.signal = "+"
					var_23_8 = INPUT_VAR_1_
					var_23_9 = INPUT_VAR_0_
					var_23_10 = INPUT_VAR_2_
					BigNum.sub(var_23_8, var_23_9, var_23_10)
					var_23_8 = INPUT_VAR_0_
					var_23_9 = INPUT_VAR_2_
					var_23_7 = rawequal(var_23_8, var_23_9)
					if not var_23_7 then
						--jump to 0066 (if previous if statement is false) --0066 JMP-JMP
						INPUT_VAR_0_.signal = "-"
					end
					var_23_8 = INPUT_VAR_1_
					var_23_9 = INPUT_VAR_2_
					var_23_7 = rawequal(var_23_8, var_23_9)
					if not var_23_7 then
						--jump to 0074 (if previous if statement is false) --0074 JMP-JMP
						INPUT_VAR_1_.signal = "-"
					end
					var_23_7 = 0 --var_23_7 NUMBER-NUMBER
					return var_23_7
				end 
			else
				--location 0077--0077 LOCATION-LOCATION_
				if INPUT_VAR_0_.signal ==  "+" then
					--jump to 0101 (if previous if statement is false) --0101 JMP-JMP
					if INPUT_VAR_1_.signal ==  "-" then
						--jump to 0101 (if previous if statement is false) --0101 JMP-JMP
						INPUT_VAR_1_.signal = "+"
						var_23_8 = INPUT_VAR_0_
						var_23_9 = INPUT_VAR_1_
						var_23_10 = INPUT_VAR_2_
						BigNum.add(var_23_8, var_23_9, var_23_10)
						var_23_8 = INPUT_VAR_1_
						var_23_9 = INPUT_VAR_2_
						var_23_7 = rawequal(var_23_8, var_23_9)
						if not var_23_7 then
							--jump to 0099 (if previous if statement is false) --0099 JMP-JMP
							INPUT_VAR_1_.signal = "-"
						end
						var_23_7 = 0 --var_23_7 NUMBER-NUMBER
					end
				end
			end
		end 
		return var_23_7
	end
	var_23_8 = INPUT_VAR_0_
	var_23_9 = INPUT_VAR_1_
	var_23_7 = BigNum.compareAbs(var_23_8, var_23_9)
	if var_23_7 == 0 then
		--jump to 0119 (if previous if statement is false) --0119 JMP-JMP
		var_23_8 = INPUT_VAR_1_
		var_23_9 = INPUT_VAR_0_
		var_23_10 = INPUT_VAR_2_
		BigNum.sub(var_23_8, var_23_9, var_23_10)
		INPUT_VAR_2_.signal = "-"
		var_23_7 = 0 --var_23_7 NUMBER-NUMBER
		return var_23_7
	else
		--location 0119--0119 LOCATION-LOCATION_
	end
	var_23_7 = 0 --var_23_7 NUMBER-NUMBER
	INPUT_VAR_2_.len = var_23_7
	var_23_7 = 0 --var_23_7 NUMBER-NUMBER
	var_23_8 = INPUT_VAR_0_.len -  1 --var_23_8 NUMBER-NUMBER
	var_23_9 = 1 --var_23_9 NUMBER-NUMBER
	for var_23_10 = var_23_7,var_23_8,var_23_9 do --location 0126, loop ends at 0156-1
		if unknown11 ~= nil then
			--jump to 0136 (if previous if statement is false) --0136 JMP-JMP
			var_23_11 = unknown12 - unknown13 --var_23_11 NUMBER-NUMBER
			var_23_11 = var_23_11 - var_23_5 --var_23_11 NUMBER-NUMBER
			INPUT_VAR_2_[var_23_10] = var_23_11
		else
			--location 0136--0136 LOCATION-LOCATION_
			var_23_11 = unknown14 - var_23_5 --var_23_11 NUMBER-NUMBER
			INPUT_VAR_2_[var_23_10] = var_23_11
		end
		var_23_12 = 0 --var_23_12 NUMBER-NUMBER
		if unknown15 < var_23_12 then
			--jump to 0149 (if previous if statement is false) --0149 JMP-JMP
			var_23_11 = RADIX + unknown16 --var_23_11 NUMBER-NUMBER
			INPUT_VAR_2_[var_23_10] = var_23_11
			var_23_5 = 1 --var_23_5 NUMBER-NUMBER
		else
			--location 0149--0149 LOCATION-LOCATION_
			var_23_5 = 0 --var_23_5 NUMBER-NUMBER
		end
		if unknown17 ~= 2 then
			--jump to 0155 (if previous if statement is false) --0155 JMP-JMP
			var_23_11 = var_23_10 +  1 --var_23_11 NUMBER-NUMBER
			INPUT_VAR_2_.len = var_23_11
		end
	end --location 0155, loops back to 0127-1
	INPUT_VAR_2_.signal = "+"
	if INPUT_VAR_2_.len == 2 then
		--jump to 0165 (if previous if statement is false) --0165 JMP-JMP
		var_23_7 = 1 --var_23_7 NUMBER-NUMBER
		INPUT_VAR_2_.len = var_23_7
		var_23_7 = 0 --var_23_7 NUMBER-NUMBER
		INPUT_VAR_2_[0] = var_23_7
	end
	if var_23_5 == 1 then
		--jump to 0170 (if previous if statement is false) --0170 JMP-JMP
		error("Error in function sub")
	end
	var_23_9 = INPUT_VAR_2_.len
	var_23_10 = INPUT_VAR_0_.len -  1 --var_23_10 NUMBER-NUMBER
	var_23_8 = max(var_23_9, var_23_10)
	var_23_9 = 1 --var_23_9 NUMBER-NUMBER
	for var_23_10 = INPUT_VAR_2_.len,var_23_8,var_23_9 do --location 0176, loop ends at 0180-1
		var_23_11 = nil --var_23_11 PRIMITIVE-PRIMITIVE
		INPUT_VAR_2_[var_23_10] = var_23_11
	end --location 0179, loops back to 0177-1
	var_23_7 = 0 --var_23_7 NUMBER-NUMBER
	return var_23_7
end


function randomFunction	BigNum.mul (INPUT_VAR_0_,INPUT_VAR_1_,INPUT_VAR_2_,INPUT_VAR_3_,INPUT_VAR_4_,INPUT_VAR_5_,INPUT_VAR_6_,INPUT_VAR_7_,INPUT_VAR_8_,INPUT_VAR_9_,INPUT_VAR_10_)
	var_24_3 = 0 --var_24_3 NUMBER-NUMBER
	var_24_4 = 0 --var_24_4 NUMBER-NUMBER
	j = var_24_4
	var_24_4 = BigNum.new()
	var_24_5 = 0 --var_24_5 NUMBER-NUMBER
	var_24_6 = 0 --var_24_6 NUMBER-NUMBER
	if INPUT_VAR_0_ ~= nil then
		--jump to 0016 (if previous if statement is false) --0016 JMP-JMP
		if INPUT_VAR_1_ ~= nil then
			--jump to 0016 (if previous if statement is false) --0016 JMP-JMP
			if INPUT_VAR_2_ == nil then
			end -- maybe?
		else
			--location 0016--0016 LOCATION-LOCATION_
			error("Function BigNum.mul: parameter nil")
		end 
	else
		--location 0020--0020 LOCATION-LOCATION_
		if INPUT_VAR_0_.signal ~= INPUT_VAR_1_.signal then
			--jump to 0034 (if previous if statement is false) --0034 JMP-JMP
			var_24_9 = INPUT_VAR_0_
			UNM unhandled at 0027
			var_24_11 = INPUT_VAR_2_
			BigNum.mul(var_24_9, INPUT_VAR_10_, var_24_11)
			INPUT_VAR_2_.signal = "-"
			var_24_8 = 0 --var_24_8 NUMBER-NUMBER
		end 
		return var_24_8
	end
	var_24_8 = INPUT_VAR_0_.len + INPUT_VAR_1_.len --var_24_8 NUMBER-NUMBER
	INPUT_VAR_2_.len = var_24_8
	var_24_8 = 1 --var_24_8 NUMBER-NUMBER
	var_24_10 = 1 --var_24_10 NUMBER-NUMBER
	for var_24_11 = var_24_8,INPUT_VAR_2_.len,var_24_10 do --location 0041, loop ends at 0046-1
		var_24_12 = var_24_11 -  1 --var_24_12 NUMBER-NUMBER
		var_24_13 = 0 --var_24_13 NUMBER-NUMBER
		INPUT_VAR_2_[var_24_12] = var_24_13
	end --location 0045, loops back to 0042-1
	var_24_9 = INPUT_VAR_2_.len
	var_24_10 = 1 --var_24_10 NUMBER-NUMBER
	for var_24_11 = INPUT_VAR_2_.len,var_24_9,var_24_10 do --location 0049, loop ends at 0053-1
		var_24_12 = nil --var_24_12 PRIMITIVE-PRIMITIVE
		INPUT_VAR_2_[var_24_11] = var_24_12
	end --location 0052, loops back to 0050-1
	var_24_8 = 0 --var_24_8 NUMBER-NUMBER
	var_24_9 = INPUT_VAR_0_.len -  1 --var_24_9 NUMBER-NUMBER
	var_24_10 = 1 --var_24_10 NUMBER-NUMBER
	for var_24_11 = var_24_8,var_24_9,var_24_10 do --location 0057, loop ends at 0093-1
		var_24_12 = 0 --var_24_12 NUMBER-NUMBER
		var_24_13 = INPUT_VAR_1_.len -  1 --var_24_13 NUMBER-NUMBER
		var_24_14 = 1 --var_24_14 NUMBER-NUMBER
		for var_24_15 = var_24_12,var_24_13,var_24_14 do --location 0062, loop ends at 0086-1
			var_24_16 = unknown18 * unknown19 --var_24_16 NUMBER-NUMBER
			var_24_6 = var_24_16 + var_24_6 --var_24_6 NUMBER-NUMBER
			var_24_16 = var_24_11 + var_24_15 --var_24_16 NUMBER-NUMBER
			var_24_6 = var_24_6 + unknown20 --var_24_6 NUMBER-NUMBER
			var_24_16 = var_24_11 + var_24_15 --var_24_16 NUMBER-NUMBER
			var_24_18 = var_24_6
			var_24_17 = math.mod(var_24_18, RADIX)
			INPUT_VAR_2_[var_24_16] = var_24_17
			var_24_16 = var_24_11 + var_24_15 --var_24_16 NUMBER-NUMBER
			var_24_17 = var_24_6 / RADIX --var_24_17 NUMBER-NUMBER
			var_24_16 = math.floor(var_24_17)
			var_24_6 = var_24_16
		end --location 0085, loops back to 0063-1
		if var_24_6 ~= 1 then
			--jump to 0091 (if previous if statement is false) --0091 JMP-JMP
			var_24_12 = var_24_11 + INPUT_VAR_1_.len --var_24_12 NUMBER-NUMBER
			INPUT_VAR_2_[var_24_12] = var_24_6
		end
		var_24_6 = 0 --var_24_6 NUMBER-NUMBER
	end --location 0092, loops back to 0058-1
	var_24_8 = INPUT_VAR_2_.len -  1 --var_24_8 NUMBER-NUMBER
	var_24_9 = 1 --var_24_9 NUMBER-NUMBER
	var_24_10 = -1 --var_24_10 NUMBER-NUMBER
	for var_24_11 = var_24_8,var_24_9,var_24_10 do --location 0097, loop ends at 0112-1
		if unknown22 ~= nil then
			--jump to 0106 (if previous if statement is false) --0106 JMP-JMP
			if unknown23 ~= 1 then
				--jump to 0106 (if previous if statement is false) --0106 JMP-JMP
				--jump to 0112 (if previous if statement is false) --0112 JMP-JMP
			end 
		else
			--location 0106--0106 LOCATION-LOCATION_
			var_24_12 = nil --var_24_12 PRIMITIVE-PRIMITIVE
			INPUT_VAR_2_[var_24_11] = var_24_12
		end
		var_24_12 = INPUT_VAR_2_.len -  1 --var_24_12 NUMBER-NUMBER
		INPUT_VAR_2_.len = var_24_12
	end --location 0111, loops back to 0098-1
	--location 0112--0112 LOCATION-LOCATION
	var_24_8 = 0 --var_24_8 NUMBER-NUMBER
	return var_24_8
end


function randomFunction	BigNum.div (INPUT_VAR_0_,INPUT_VAR_1_,INPUT_VAR_2_,INPUT_VAR_3_)
	var_25_4 = BigNum.new()
	var_25_5 = BigNum.new()
	var_25_6 = BigNum.new("1")
	var_25_7 = BigNum.new("0")
	var_25_9 = INPUT_VAR_1_
	var_25_10 = var_25_7
	var_25_8 = BigNum.compareAbs(var_25_9, var_25_10)
	if var_25_8 == 0 then
		--jump to 0025 (if previous if statement is false) --0025 JMP-JMP
		error("Function BigNum.div: Division by zero")
	end
	if INPUT_VAR_0_ ~= nil then
		--jump to 0033 (if previous if statement is false) --0033 JMP-JMP
		if INPUT_VAR_1_ ~= nil then
			--jump to 0033 (if previous if statement is false) --0033 JMP-JMP
			if INPUT_VAR_2_ ~= nil then
				--jump to 0033 (if previous if statement is false) --0033 JMP-JMP
				if INPUT_VAR_3_ == nil then
				end -- maybe?
			else
				--location 0033--0033 LOCATION-LOCATION_
				error("Function BigNum.div: parameter nil")
			end
		end 
	else
		--location 0037--0037 LOCATION-LOCATION_
		if INPUT_VAR_0_.signal ==  "+" then
			--jump to 0059 (if previous if statement is false) --0059 JMP-JMP
			if INPUT_VAR_1_.signal ==  "-" then
				--jump to 0059 (if previous if statement is false) --0059 JMP-JMP
				INPUT_VAR_1_.signal = "+"
				var_25_9 = INPUT_VAR_0_
				var_25_10 = INPUT_VAR_1_
				var_25_11 = INPUT_VAR_2_
				var_25_12 = INPUT_VAR_3_
				BigNum.div(var_25_9, var_25_10, var_25_11, var_25_12)
				INPUT_VAR_1_.signal = "-"
				INPUT_VAR_2_.signal = "-"
				var_25_8 = 0 --var_25_8 NUMBER-NUMBER
				return var_25_8
			end 
		else
			--location 0059--0059 LOCATION-LOCATION_
			if INPUT_VAR_0_.signal ==  "-" then
				--jump to 0095 (if previous if statement is false) --0095 JMP-JMP
				if INPUT_VAR_1_.signal ==  "+" then
					--jump to 0095 (if previous if statement is false) --0095 JMP-JMP
					INPUT_VAR_0_.signal = "+"
					var_25_9 = INPUT_VAR_0_
					var_25_10 = INPUT_VAR_1_
					var_25_11 = INPUT_VAR_2_
					var_25_12 = INPUT_VAR_3_
					BigNum.div(var_25_9, var_25_10, var_25_11, var_25_12)
					INPUT_VAR_0_.signal = "-"
					if INPUT_VAR_3_ < var_25_7 then
						--jump to 0090 (if previous if statement is false) --0090 JMP-JMP
						var_25_9 = INPUT_VAR_2_
						var_25_10 = var_25_6
						var_25_11 = INPUT_VAR_2_
						BigNum.add(var_25_9, var_25_10, var_25_11)
						var_25_9 = INPUT_VAR_1_
						var_25_10 = INPUT_VAR_3_
						var_25_11 = INPUT_VAR_3_
						BigNum.sub(var_25_9, var_25_10, var_25_11)
					end
					INPUT_VAR_2_.signal = "-"
					var_25_8 = 0 --var_25_8 NUMBER-NUMBER
					return var_25_8
				end 
			else
				--location 0095--0095 LOCATION-LOCATION_
				if INPUT_VAR_0_.signal ==  "-" then
					--jump to 0132 (if previous if statement is false) --0132 JMP-JMP
					if INPUT_VAR_1_.signal ==  "-" then
						--jump to 0132 (if previous if statement is false) --0132 JMP-JMP
						INPUT_VAR_0_.signal = "+"
						INPUT_VAR_1_.signal = "+"
						var_25_9 = INPUT_VAR_0_
						var_25_10 = INPUT_VAR_1_
						var_25_11 = INPUT_VAR_2_
						var_25_12 = INPUT_VAR_3_
						BigNum.div(var_25_9, var_25_10, var_25_11, var_25_12)
						INPUT_VAR_0_.signal = "-"
						if INPUT_VAR_3_ < var_25_7 then
							--jump to 0128 (if previous if statement is false) --0128 JMP-JMP
							var_25_9 = INPUT_VAR_2_
							var_25_10 = var_25_6
							var_25_11 = INPUT_VAR_2_
							BigNum.add(var_25_9, var_25_10, var_25_11)
							var_25_9 = INPUT_VAR_1_
							var_25_10 = INPUT_VAR_3_
							var_25_11 = INPUT_VAR_3_
							BigNum.sub(var_25_9, var_25_10, var_25_11)
						end
						INPUT_VAR_1_.signal = "-"
						var_25_8 = 0 --var_25_8 NUMBER-NUMBER
					end
				end
			end
		end 
		return var_25_8
	end
	var_25_8 = INPUT_VAR_0_.len - INPUT_VAR_1_.len --var_25_8 NUMBER-NUMBER
	var_25_8 = var_25_8 -  1 --var_25_8 NUMBER-NUMBER
	var_25_4.len = var_25_8
	var_25_9 = INPUT_VAR_2_
	BigNum.change(var_25_9, "0")
	var_25_9 = INPUT_VAR_3_
	BigNum.change(var_25_9, "0")
	var_25_9 = INPUT_VAR_0_
	var_25_10 = INPUT_VAR_3_
	BigNum.copy(var_25_9, var_25_10)
	var_25_9 = INPUT_VAR_3_
	var_25_10 = INPUT_VAR_1_
	var_25_8 = BigNum.compareAbs(var_25_9, var_25_10)
	if var_25_8 ~= 2 then
		--jump to 0242 (if previous if statement is false) --0242 JMP-JMP
		repeat
		var_25_8 = INPUT_VAR_3_.len -  1 --var_25_8 NUMBER-NUMBER
		var_25_9 = INPUT_VAR_1_.len -  1 --var_25_9 NUMBER-NUMBER
		if unknown25 <= unknown24 then
			--jump to 0191 (if previous if statement is false) --0191 JMP-JMP
			var_25_9 = var_25_4
			var_25_11 = INPUT_VAR_3_.len -  1 --var_25_11 NUMBER-NUMBER
			var_25_12 = INPUT_VAR_1_.len -  1 --var_25_12 NUMBER-NUMBER
			var_25_11 = unknown26 / unknown27 --var_25_11 NUMBER-NUMBER
			var_25_10 = math.floor(var_25_11)
			var_25_11 = INPUT_VAR_3_.len - INPUT_VAR_1_.len --var_25_11 NUMBER-NUMBER
			BigNum.put(var_25_9, var_25_10, var_25_11)
			var_25_8 = INPUT_VAR_3_.len - INPUT_VAR_1_.len --var_25_8 NUMBER-NUMBER
			var_25_8 = var_25_8 +  1 --var_25_8 NUMBER-NUMBER
			var_25_4.len = var_25_8
		else
			--location 0191--0191 LOCATION-LOCATION_
			var_25_9 = var_25_4
			var_25_11 = INPUT_VAR_3_.len -  1 --var_25_11 NUMBER-NUMBER
			var_25_11 = unknown28 * RADIX --var_25_11 NUMBER-NUMBER
			var_25_12 = INPUT_VAR_3_.len -  2 --var_25_12 NUMBER-NUMBER
			var_25_11 = var_25_11 + unknown29 --var_25_11 NUMBER-NUMBER
			var_25_12 = INPUT_VAR_1_.len -  1 --var_25_12 NUMBER-NUMBER
			var_25_11 = var_25_11 / unknown30 --var_25_11 NUMBER-NUMBER
			var_25_10 = math.floor(var_25_11)
			var_25_11 = INPUT_VAR_3_.len - INPUT_VAR_1_.len --var_25_11 NUMBER-NUMBER
			var_25_11 = var_25_11 -  1 --var_25_11 NUMBER-NUMBER
			BigNum.put(var_25_9, var_25_10, var_25_11)
			var_25_8 = INPUT_VAR_3_.len - INPUT_VAR_1_.len --var_25_8 NUMBER-NUMBER
			var_25_4.len = var_25_8
		end
		if INPUT_VAR_3_.signal ~= INPUT_VAR_1_.signal then
			--jump to 0226 (if previous if statement is false) --0226 JMP-JMP
			var_25_4.signal = "-"
		else
			--location 0226--0226 LOCATION-LOCATION_
			var_25_4.signal = "+"
		end
		var_25_9 = var_25_4
		var_25_10 = INPUT_VAR_2_
		var_25_11 = INPUT_VAR_2_
		BigNum.add(var_25_9, var_25_10, var_25_11)
		var_25_4 = var_25_4 * INPUT_VAR_1_ --var_25_4 NUMBER-NUMBER
		var_25_9 = INPUT_VAR_3_
		var_25_10 = var_25_4
		var_25_11 = INPUT_VAR_3_
		BigNum.sub(var_25_9, var_25_10, var_25_11)
	else
		--location 0242--0242 LOCATION-LOCATION_
		until false or (previous if statement is true) --location 0242
		if INPUT_VAR_3_.signal ==  "-" then
			--jump to 0254 (if previous if statement is false) --0254 JMP-JMP
			var_25_9 = INPUT_VAR_2_
			decr(var_25_9)
			var_25_9 = INPUT_VAR_1_
			var_25_10 = INPUT_VAR_3_
			var_25_11 = INPUT_VAR_3_
			BigNum.add(var_25_9, var_25_10, var_25_11)
		end
		var_25_8 = 0 --var_25_8 NUMBER-NUMBER
		return var_25_8
	end
	
	

function randomFunction	BigNum.pow (INPUT_VAR_0_,INPUT_VAR_1_)
	var_26_3 = INPUT_VAR_1_
	var_26_2 = BigNum.new(var_26_3)
	var_26_4 = 1 --var_26_4 NUMBER-NUMBER
	var_26_3 = BigNum.new(var_26_4)
	var_26_5 = INPUT_VAR_0_
	var_26_4 = BigNum.new(var_26_5)
	var_26_5 = BigNum.new("0")
	if INPUT_VAR_1_ < var_26_5 then
		--jump to 0023 (if previous if statement is false) --0023 JMP-JMP
		error("Function BigNum.exp: domain error")
	else
		--location 0023--0023 LOCATION-LOCATION_
		if INPUT_VAR_1_ == var_26_5 then
			--jump to 0026 (if previous if statement is false) --0026 JMP-JMP
			return var_26_3
		end 
	end
	repeat
	var_26_8 = 2 --var_26_8 NUMBER-NUMBER
	var_26_6 = math.mod(var_26_2.unknownB31, var_26_8)
	if var_26_6 == 0 then
		--jump to 0036 (if previous if statement is false) --0036 JMP-JMP
		var_26_2 = var_26_2 /  2 --var_26_2 NUMBER-NUMBER
	else
		--location 0036--0036 LOCATION-LOCATION_
		var_26_2 = var_26_2 /  2 --var_26_2 NUMBER-NUMBER
		var_26_3 = var_26_4 * var_26_3 --var_26_3 NUMBER-NUMBER
		if var_26_2 == var_26_5 then
			--jump to 0041 (if previous if statement is false) --0041 JMP-JMP
			return var_26_3
		end 
	end
	var_26_4 = var_26_4 * var_26_4 --var_26_4 NUMBER-NUMBER
	--jump to 0026 (if previous if statement is false) --0026 JMP-JMP
	until false or (previous if statement is true) --location 0043
	return
end


function randomFunction	BigNum.gcd (INPUT_VAR_0_,INPUT_VAR_1_)
	var_27_2 = {}
	var_27_3 = {}
	var_27_4 = {}
	var_27_5 = {}
	var_27_6 = {}
	var_27_7 = BigNum.new("0")
	var_27_6 = var_27_7
	if INPUT_VAR_0_ ~= var_27_6 then
		--jump to 0015 (if previous if statement is false) --0015 JMP-JMP
		if INPUT_VAR_1_ == var_27_6 then
		end -- maybe?
	else
		--location 0015--0015 LOCATION-LOCATION_
		return BigNum.new("1")
	end
	var_27_8 = INPUT_VAR_0_
	var_27_7 = BigNum.new(var_27_8)
	var_27_2 = var_27_7
	var_27_8 = INPUT_VAR_1_
	var_27_7 = BigNum.new(var_27_8)
	var_27_3 = var_27_7
	var_27_2.signal = "+"
	var_27_3.signal = "+"
	var_27_7 = BigNum.new()
	var_27_4 = var_27_7
	var_27_7 = BigNum.new()
	var_27_5 = var_27_7
	if var_27_6 < var_27_3 then
		--jump to 0057 (if previous if statement is false) --0057 JMP-JMP
		until false or (previous if statement is true) --location 0043
		repeat
		var_27_8 = var_27_2
		var_27_9 = var_27_3
		var_27_10 = var_27_4
		var_27_11 = var_27_5
		BigNum.div(var_27_8, var_27_9, var_27_10, var_27_11)
		var_27_7 = var_27_3
		var_27_8 = var_27_5
		var_27_5 = var_27_2
		var_27_3 = var_27_8
		var_27_2 = var_27_7
	else
		--location 0057--0057 LOCATION-LOCATION_
		until false or (previous if statement is true) --location 0057
		return var_27_2
	end
	
	

function randomFunction	BigNum.eq (INPUT_VAR_0_,INPUT_VAR_1_)
	var_28_3 = INPUT_VAR_0_
	var_28_4 = INPUT_VAR_1_
	var_28_2 = BigNum.compare(var_28_3, var_28_4)
	if var_28_2 == 0 then
		--jump to 0011 (if previous if statement is false) --0011 JMP-JMP
		var_28_2 = true --var_28_2 PRIMITIVE-PRIMITIVE
		return var_28_2
	else
		--location 0011--0011 LOCATION-LOCATION_
		var_28_2 = false --var_28_2 PRIMITIVE-PRIMITIVE
		return var_28_2
	end
	return
end


function randomFunction	BigNum.lt (INPUT_VAR_0_,INPUT_VAR_1_)
	var_29_3 = INPUT_VAR_0_
	var_29_4 = INPUT_VAR_1_
	var_29_2 = BigNum.compare(var_29_3, var_29_4)
	if var_29_2 == 0 then
		--jump to 0011 (if previous if statement is false) --0011 JMP-JMP
		var_29_2 = true --var_29_2 PRIMITIVE-PRIMITIVE
		return var_29_2
	else
		--location 0011--0011 LOCATION-LOCATION_
		var_29_2 = false --var_29_2 PRIMITIVE-PRIMITIVE
		return var_29_2
	end
	return
end


function randomFunction	BigNum.le (INPUT_VAR_0_,INPUT_VAR_1_)
	var_30_2 = -1 --var_30_2 NUMBER-NUMBER
	var_30_4 = INPUT_VAR_0_
	var_30_5 = INPUT_VAR_1_
	var_30_3 = BigNum.compare(var_30_4, var_30_5)
	var_30_2 = var_30_3
	if var_30_2 ~= 0 then
		--jump to 0012 (if previous if statement is false) --0012 JMP-JMP
		if var_30_2 == 1 then
		end -- maybe?
	else
		--location 0012--0012 LOCATION-LOCATION_
		var_30_3 = true --var_30_3 PRIMITIVE-PRIMITIVE
		return var_30_3
	else
		--location 0015--0015 LOCATION-LOCATION_
		var_30_3 = false --var_30_3 PRIMITIVE-PRIMITIVE
		return var_30_3
	end
	return
end


function randomFunction	BigNum.compareAbs (INPUT_VAR_0_,INPUT_VAR_1_)
	if INPUT_VAR_0_ ~= nil then
		--jump to 0005 (if previous if statement is false) --0005 JMP-JMP
		if INPUT_VAR_1_ == nil then
		end -- maybe?
	else
		--location 0005--0005 LOCATION-LOCATION_
		error("Function compare: parameter nil")
	else
		--location 0009--0009 LOCATION-LOCATION_
		if INPUT_VAR_1_.len < INPUT_VAR_0_.len then
			--jump to 0016 (if previous if statement is false) --0016 JMP-JMP
			var_31_2 = 1 --var_31_2 NUMBER-NUMBER
			return var_31_2
		else
			--location 0016--0016 LOCATION-LOCATION_
			if INPUT_VAR_0_.len < INPUT_VAR_1_.len then
				--jump to 0023 (if previous if statement is false) --0023 JMP-JMP
				var_31_2 = 2 --var_31_2 NUMBER-NUMBER
				return var_31_2
			else
				--location 0023--0023 LOCATION-LOCATION_
				var_31_2 = nil --var_31_2 PRIMITIVE-PRIMITIVE
				var_31_3 = INPUT_VAR_0_.len -  1 --var_31_3 NUMBER-NUMBER
				var_31_4 = 0 --var_31_4 NUMBER-NUMBER
				var_31_5 = -1 --var_31_5 NUMBER-NUMBER
				for var_31_6 = var_31_3,var_31_4,var_31_5 do --location 0028, loop ends at 0043-1
					if unknown33 < unknown32 then
						--jump to 0036 (if previous if statement is false) --0036 JMP-JMP
						var_31_7 = 1 --var_31_7 NUMBER-NUMBER
						return var_31_7
					else
						--location 0036--0036 LOCATION-LOCATION_
						if unknown34 < unknown35 then
							--jump to 0042 (if previous if statement is false) --0042 JMP-JMP
							var_31_7 = 2 --var_31_7 NUMBER-NUMBER
							return var_31_7
						end 
					end
					
				end --location 0042, loops back to 0029-1
			end
			until false or (previous if statement is true) --location 0043
			var_31_2 = 0 --var_31_2 NUMBER-NUMBER
			return var_31_2
		end
		

function randomFunction	BigNum.compare (INPUT_VAR_0_,INPUT_VAR_1_)
	var_32_2 = 0 --var_32_2 NUMBER-NUMBER
	if INPUT_VAR_0_ ~= nil then
		--jump to 0006 (if previous if statement is false) --0006 JMP-JMP
		if INPUT_VAR_1_ == nil then
		end -- maybe?
	else
		--location 0006--0006 LOCATION-LOCATION_
		error("Funtion BigNum.compare: parameter nil")
	else
		--location 0010--0010 LOCATION-LOCATION_
		if INPUT_VAR_0_.signal ==  "+" then
			--jump to 0019 (if previous if statement is false) --0019 JMP-JMP
			if INPUT_VAR_1_.signal ==  "-" then
				--jump to 0019 (if previous if statement is false) --0019 JMP-JMP
				var_32_3 = 1 --var_32_3 NUMBER-NUMBER
				return var_32_3
			end 
		else
			--location 0019--0019 LOCATION-LOCATION_
			if INPUT_VAR_0_.signal ==  "-" then
				--jump to 0028 (if previous if statement is false) --0028 JMP-JMP
				if INPUT_VAR_1_.signal ==  "+" then
					--jump to 0028 (if previous if statement is false) --0028 JMP-JMP
					var_32_3 = 2 --var_32_3 NUMBER-NUMBER
					return var_32_3
				end 
			else
				--location 0028--0028 LOCATION-LOCATION_
				if INPUT_VAR_0_.signal ==  "-" then
					--jump to 0035 (if previous if statement is false) --0035 JMP-JMP
					if INPUT_VAR_1_.signal ==  "-" then
						--jump to 0035 (if previous if statement is false) --0035 JMP-JMP
					end
				end
			end
		end 
		var_32_2 = 1 --var_32_2 NUMBER-NUMBER
	end
	if INPUT_VAR_1_.len < INPUT_VAR_0_.len then
		--jump to 0042 (if previous if statement is false) --0042 JMP-JMP
		var_32_3 =  1 + var_32_2 --var_32_3 NUMBER-NUMBER
		return var_32_3
	else
		--location 0042--0042 LOCATION-LOCATION_
		until false or (previous if statement is true) --location 0043
		if INPUT_VAR_0_.len < INPUT_VAR_1_.len then
			--jump to 0049 (if previous if statement is false) --0049 JMP-JMP
			var_32_3 =  2 - var_32_2 --var_32_3 NUMBER-NUMBER
			return var_32_3
		else
			--location 0049--0049 LOCATION-LOCATION_
			var_32_3 = nil --var_32_3 PRIMITIVE-PRIMITIVE
			var_32_4 = INPUT_VAR_0_.len -  1 --var_32_4 NUMBER-NUMBER
			var_32_5 = 0 --var_32_5 NUMBER-NUMBER
			var_32_6 = -1 --var_32_6 NUMBER-NUMBER
			for var_32_7 = var_32_4,var_32_5,var_32_6 do --location 0054, loop ends at 0069-1
				until false or (previous if statement is true) --location 0057
				if unknown37 < unknown36 then
					--jump to 0062 (if previous if statement is false) --0062 JMP-JMP
					var_32_8 =  1 + var_32_2 --var_32_8 NUMBER-NUMBER
					return var_32_8
				else
					--location 0062--0062 LOCATION-LOCATION_
					if unknown38 < unknown39 then
						--jump to 0068 (if previous if statement is false) --0068 JMP-JMP
						var_32_8 =  2 - var_32_2 --var_32_8 NUMBER-NUMBER
						return var_32_8
					end 
				end
				--location 0068, loops back to 0055-1
			end
		end 
	end
	var_32_3 = 0 --var_32_3 NUMBER-NUMBER
	return var_32_3
end


function randomFunction	BigNum.copy (INPUT_VAR_0_,INPUT_VAR_1_)
	if INPUT_VAR_0_ ~= nil then
		--jump to 0017 (if previous if statement is false) --0017 JMP-JMP
		if INPUT_VAR_1_ ~= nil then
			--jump to 0017 (if previous if statement is false) --0017 JMP-JMP
			var_33_2 = nil --var_33_2 PRIMITIVE-PRIMITIVE
			var_33_3 = 0 --var_33_3 NUMBER-NUMBER
			var_33_4 = INPUT_VAR_0_.len -  1 --var_33_4 NUMBER-NUMBER
			var_33_5 = 1 --var_33_5 NUMBER-NUMBER
			for var_33_6 = var_33_3,var_33_4,var_33_5 do --location 0010, loop ends at 0014-1
				INPUT_VAR_1_[var_33_6] = unknown40
			end --location 0013, loops back to 0011-1
			INPUT_VAR_1_.len = INPUT_VAR_0_.len
		end 
	else
		--location 0017--0017 LOCATION-LOCATION_
		error("Function BigNum.copy: parameter nil")
	end
	return
end


function randomFunction	BigNum.change (INPUT_VAR_0_,INPUT_VAR_1_)
	var_34_2 = 0 --var_34_2 NUMBER-NUMBER
	var_34_3 = 0 --var_34_3 NUMBER-NUMBER
	var_34_4 = INPUT_VAR_1_
	var_34_5 = nil --var_34_5 PRIMITIVE-PRIMITIVE
	var_34_6 = 0 --var_34_6 NUMBER-NUMBER
	if INPUT_VAR_0_ == nil then
		--jump to 0012 (if previous if statement is false) --0012 JMP-JMP
		error("BigNum.change: parameter nil")
	else
		--location 0012--0012 LOCATION-LOCATION_
		var_34_8 = INPUT_VAR_0_
		var_34_7 = type(var_34_8)
		if var_34_7 ~=  "table" then
			--jump to 0021 (if previous if statement is false) --0021 JMP-JMP
			var_34_8 = "BigNum.change: parameter error, type une" --strings longer than 40 characters get cut off, so check to see if there's more!
			error(var_34_8)
		else
			--location 0021--0021 LOCATION-LOCATION_
			if var_34_4 == nil then
				--jump to 0030 (if previous if statement is false) --0030 JMP-JMP
				var_34_7 = 1 --var_34_7 NUMBER-NUMBER
				INPUT_VAR_0_.len = var_34_7
				var_34_7 = 0 --var_34_7 NUMBER-NUMBER
				INPUT_VAR_0_[0] = var_34_7
				INPUT_VAR_0_.signal = "+"
			else
				--location 0030--0030 LOCATION-LOCATION_
				var_34_8 = var_34_4
				var_34_7 = type(var_34_8)
				if var_34_7 ==  "table" then
					--jump to 0060 (if previous if statement is false) --0060 JMP-JMP
					if var_34_4.len ~= nil then
						--jump to 0060 (if previous if statement is false) --0060 JMP-JMP
						var_34_7 = 0 --var_34_7 NUMBER-NUMBER
						var_34_9 = 1 --var_34_9 NUMBER-NUMBER
						for var_34_10 = var_34_7,var_34_4.len,var_34_9 do --location 0041, loop ends at 0045-1
							until false or (previous if statement is true) --location 0043
							INPUT_VAR_0_[var_34_10] = unknown41
						end --location 0044, loops back to 0042-1
						if var_34_4.signal ~=  "-" then
							--jump to 0054 (if previous if statement is false) --0054 JMP-JMP
							if var_34_4.signal ~=  "+" then
								--jump to 0054 (if previous if statement is false) --0054 JMP-JMP
								INPUT_VAR_0_.signal = "+"
							end 
						else
							--location 0054--0054 LOCATION-LOCATION_
							INPUT_VAR_0_.signal = var_34_4.signal
						end
						until false or (previous if statement is true) --location 0057
						for var_34_7, var_34_8 in var_34_4.len do --var_34_4 FORTEST-FORTEST
						end 
					else
						--location 0060--0060 LOCATION-LOCATION_
						var_34_8 = var_34_4
						var_34_7 = type(var_34_8)
						if var_34_7 ~=  "string" then
							--jump to 0070 (if previous if statement is false) --0070 JMP-JMP
							var_34_8 = var_34_4
							var_34_7 = type(var_34_8)
							if var_34_7 ==  "number" then
							end -- maybe?
						else
							--location 0070--0070 LOCATION-LOCATION_
							var_34_8 = var_34_4
							var_34_9 = 1 --var_34_9 NUMBER-NUMBER
							var_34_10 = 1 --var_34_10 NUMBER-NUMBER
							var_34_7 = string.sub(var_34_8, var_34_9, var_34_10)
							if var_34_7 ~=  "+" then
								--jump to 0086 (if previous if statement is false) --0086 JMP-JMP
								var_34_8 = var_34_4
								var_34_9 = 1 --var_34_9 NUMBER-NUMBER
								var_34_10 = 1 --var_34_10 NUMBER-NUMBER
								var_34_7 = string.sub(var_34_8, var_34_9, var_34_10)
								if var_34_7 ==  "-" then
								end -- maybe?
							else
								--location 0086--0086 LOCATION-LOCATION_
								var_34_8 = var_34_4
								var_34_9 = 1 --var_34_9 NUMBER-NUMBER
								var_34_10 = 1 --var_34_10 NUMBER-NUMBER
								var_34_7 = string.sub(var_34_8, var_34_9, var_34_10)
								INPUT_VAR_0_.signal = var_34_7
								var_34_8 = var_34_4
								var_34_9 = 2 --var_34_9 NUMBER-NUMBER
								var_34_7 = string.sub(var_34_8, var_34_9)
								for var_34_7, var_34_8 in var_34_7 do --var_34_4 FORTEST-FORTEST
								else
									--location 0100--0100 LOCATION-LOCATION_
									INPUT_VAR_0_.signal = "+"
								end
								var_34_8 = var_34_4
								var_34_7 = string.gsub(var_34_8, " ", "")
								var_34_4 = var_34_7
								var_34_8 = var_34_4
								var_34_7 = string.find(var_34_8, "e")
								if var_34_7 ~= nil then
									--jump to 0164 (if previous if statement is false) --0164 JMP-JMP
									var_34_9 = var_34_4
									var_34_8 = string.gsub(var_34_9, "%.", "")
									var_34_4 = var_34_8
									var_34_9 = var_34_4
									var_34_10 = var_34_7 +  1 --var_34_10 NUMBER-NUMBER
									var_34_8 = string.sub(var_34_9, var_34_10)
									var_34_10 = var_34_8
									var_34_9 = tonumber(var_34_10)
									var_34_8 = var_34_9
									if var_34_8 ~= nil then
										--jump to 0142 (if previous if statement is false) --0142 JMP-JMP
										var_34_9 = 0 --var_34_9 NUMBER-NUMBER
										if var_34_9 < var_34_8 then
											--jump to 0142 (if previous if statement is false) --0142 JMP-JMP
											var_34_10 = var_34_8
											var_34_9 = tonumber(var_34_10)
											var_34_8 = var_34_9
										end 
									else
										--location 0142--0142 LOCATION-LOCATION_
										var_34_10 = "Function BigNum.change: string is not a " --strings longer than 40 characters get cut off, so check to see if there's more!
										error(var_34_10)
									end
									var_34_10 = var_34_4
									var_34_11 = 1 --var_34_11 NUMBER-NUMBER
									var_34_12 = var_34_7 -  2 --var_34_12 NUMBER-NUMBER
									var_34_9 = string.sub(var_34_10, var_34_11, var_34_12)
									var_34_4 = var_34_9
									var_34_10 = var_34_4
									var_34_9 = string.len(var_34_10)
									var_34_10 = var_34_8
									var_34_11 = 1 --var_34_11 NUMBER-NUMBER
									for var_34_12 = var_34_9,var_34_10,var_34_11 do --location 0158, loop ends at 0163-1
										var_34_13 = var_34_4
										var_34_4 = var_34_13 .. "0"
									end --location 0162, loops back to 0159-1
								else
									--location 0164--0164 LOCATION-LOCATION_
									var_34_9 = var_34_4
									var_34_8 = string.find(var_34_9, "%.")
									var_34_7 = var_34_8
									if var_34_7 ~= nil then
										--jump to 0179 (if previous if statement is false) --0179 JMP-JMP
										var_34_9 = var_34_4
										var_34_10 = 1 --var_34_10 NUMBER-NUMBER
										var_34_11 = var_34_7 -  1 --var_34_11 NUMBER-NUMBER
										var_34_8 = string.sub(var_34_9, var_34_10, var_34_11)
										var_34_4 = var_34_8
									end 
								end
								var_34_9 = var_34_4
								var_34_8 = string.len(var_34_9)
								var_34_5 = var_34_8
								if RADIX_LEN < var_34_5 then
									--jump to 0257 (if previous if statement is false) --0257 JMP-JMP
									var_34_9 = var_34_5 / RADIX_LEN --var_34_9 NUMBER-NUMBER
									var_34_8 = math.floor(var_34_9)
									var_34_8 = var_34_8 * RADIX_LEN --var_34_8 NUMBER-NUMBER
									var_34_8 = var_34_5 - var_34_8 --var_34_8 NUMBER-NUMBER
									var_34_9 = 1 --var_34_9 NUMBER-NUMBER
									var_34_10 = var_34_5 - var_34_8 --var_34_10 NUMBER-NUMBER
									for var_34_12 = var_34_9,var_34_10,RADIX_LEN do --location 0199, loop ends at 0225-1
										var_34_15 = var_34_4
										var_34_16 = var_34_12 + RADIX_LEN --var_34_16 NUMBER-NUMBER
										var_34_16 = var_34_16 -  1 --var_34_16 NUMBER-NUMBER
										UNM unhandled at 0207
										UNM unhandled at 0208
										var_34_13 = tonumber( string.sub(var_34_15, var_34_16, ) )
										INPUT_VAR_0_[var_34_2] = var_34_13
										if unknown42 == nil then
											--jump to 0222 (if previous if statement is false) --0222 JMP-JMP
											var_34_14 = "Function BigNum.change: string is not a " --strings longer than 40 characters get cut off, so check to see if there's more!
											error(var_34_14)
											var_34_13 = 0 --var_34_13 NUMBER-NUMBER
											INPUT_VAR_0_.len = var_34_13
											var_34_13 = 1 --var_34_13 NUMBER-NUMBER
											return var_34_13
										end
										var_34_2 = var_34_2 +  1 --var_34_2 NUMBER-NUMBER
										var_34_3 = var_34_3 +  1 --var_34_3 NUMBER-NUMBER
									end --location 0224, loops back to 0200-1
									if var_34_8 ~= 2 then
										--jump to 0239 (if previous if statement is false) --0239 JMP-JMP
										var_34_11 = var_34_4
										var_34_12 = 1 --var_34_12 NUMBER-NUMBER
										var_34_13 = var_34_8
										var_34_9 = tonumber( string.sub(var_34_11, var_34_12, var_34_13) )
										INPUT_VAR_0_[var_34_2] = var_34_9
										var_34_9 = var_34_3 +  1 --var_34_9 NUMBER-NUMBER
										for var_34_9, var_34_10 in var_34_9 do --INPUT_VAR_0_.len FORTEST-FORTEST
										else
											--location 0239--0239 LOCATION-LOCATION_
											INPUT_VAR_0_.len = var_34_3
										end
										var_34_9 = INPUT_VAR_0_.len -  1 --var_34_9 NUMBER-NUMBER
										until false or (previous if statement is true) --location 0242
										var_34_10 = 1 --var_34_10 NUMBER-NUMBER
										var_34_11 = -1 --var_34_11 NUMBER-NUMBER
										for var_34_12 = var_34_9,var_34_10,var_34_11 do --location 0244, loop ends at 0256-1
											if unknown43 == 2 then
												--jump to 0267 (if previous if statement is false) --0267 JMP-JMP
												var_34_13 = nil --var_34_13 PRIMITIVE-PRIMITIVE
												INPUT_VAR_0_[var_34_12] = var_34_13
												var_34_13 = INPUT_VAR_0_.len -  1 --var_34_13 NUMBER-NUMBER
												INPUT_VAR_0_.len = var_34_13
												--jump to 0255 (if previous if statement is false) --0255 JMP-JMP
												--jump to 0267 (if previous if statement is false) --0267 JMP-JMP
												--location 0255--0255 LOCATION-LOCATION
											end --location 0255, loops back to 0245-1
										end 
									else
										--location 0257--0257 LOCATION-LOCATION_
										var_34_9 = var_34_4
										var_34_8 = tonumber(var_34_9)
										INPUT_VAR_0_[var_34_2] = var_34_8
										var_34_8 = 1 --var_34_8 NUMBER-NUMBER
									end 
									INPUT_VAR_0_.len = var_34_8
								else
									--location 0264--0264 LOCATION-LOCATION_
								end
							end
						end
					end 
					var_34_8 = "Function BigNum.change: parameter error," --strings longer than 40 characters get cut off, so check to see if there's more!
					error(var_34_8)
				end
				if INPUT_VAR_0_.len ~= nil then
					--jump to 0276 (if previous if statement is false) --0276 JMP-JMP
					var_34_8 = INPUT_VAR_0_.len
					var_34_9 = 1 --var_34_9 NUMBER-NUMBER
					for var_34_10 = INPUT_VAR_0_.len,var_34_8,var_34_9 do --location 0272, loop ends at 0276-1
						var_34_11 = nil --var_34_11 PRIMITIVE-PRIMITIVE
						INPUT_VAR_0_[var_34_10] = var_34_11
					end --location 0275, loops back to 0273-1
				end
				var_34_7 = 0 --var_34_7 NUMBER-NUMBER
				return var_34_7
			end
			

function randomFunction	BigNum.put (INPUT_VAR_0_,INPUT_VAR_1_,INPUT_VAR_2_)
	if INPUT_VAR_0_ == nil then
		--jump to 0006 (if previous if statement is false) --0006 JMP-JMP
		error("Function BigNum.put: parameter nil")
	end
	var_35_3 = 0 --var_35_3 NUMBER-NUMBER
	var_35_4 = 0 --var_35_4 NUMBER-NUMBER
	var_35_5 = INPUT_VAR_2_ -  1 --var_35_5 NUMBER-NUMBER
	var_35_6 = 1 --var_35_6 NUMBER-NUMBER
	for var_35_7 = var_35_4,var_35_5,var_35_6 do --location 0010, loop ends at 0014-1
		var_35_8 = 0 --var_35_8 NUMBER-NUMBER
		INPUT_VAR_0_[var_35_7] = var_35_8
	end --location 0013, loops back to 0011-1
	INPUT_VAR_0_[INPUT_VAR_2_] = INPUT_VAR_1_
	var_35_4 = INPUT_VAR_2_ +  1 --var_35_4 NUMBER-NUMBER
	var_35_6 = 1 --var_35_6 NUMBER-NUMBER
	for var_35_7 = var_35_4,INPUT_VAR_0_.len,var_35_6 do --location 0018, loop ends at 0022-1
		var_35_8 = nil --var_35_8 PRIMITIVE-PRIMITIVE
		INPUT_VAR_0_[var_35_7] = var_35_8
	end --location 0021, loops back to 0019-1
	INPUT_VAR_0_.len = INPUT_VAR_2_
	var_35_4 = 0 --var_35_4 NUMBER-NUMBER
	return var_35_4
end


function randomFunction	printraw (INPUT_VAR_0_)
	var_36_1 = 0 --var_36_1 NUMBER-NUMBER
	if INPUT_VAR_0_ == nil then
		--jump to 0007 (if previous if statement is false) --0007 JMP-JMP
		error("Function printraw: parameter nil")
	end
	var_36_2 = 1 --var_36_2 NUMBER-NUMBER
	if var_36_2 == 0 then
		--jump to 0041 (if previous if statement is false) --0041 JMP-JMP
		repeat
		if unknown44 == nil then
			--jump to 0033 (if previous if statement is false) --0033 JMP-JMP
			var_36_3 =  " len " .. INPUT_VAR_0_.len
			io.write(var_36_3)
			if var_36_1 ~= INPUT_VAR_0_.len then
				--jump to 0027 (if previous if statement is false) --0027 JMP-JMP
				io.write(" ERRO!!!!!!!!")
			end
			io.write("\n")
			var_36_2 = 0 --var_36_2 NUMBER-NUMBER
			return var_36_2
		end
		var_36_3 =  "r" .. unknown45
		io.write(var_36_3)
		var_36_1 = var_36_1 +  1 --var_36_1 NUMBER-NUMBER
	else
		--location 0041--0041 LOCATION-LOCATION_
		until false or (previous if statement is true) --location 0041
		return
	end
end --REVERSE ME

function randomFunction	max (INPUT_VAR_0_,INPUT_VAR_1_)
	if INPUT_VAR_1_ < INPUT_VAR_0_ then
		--jump to 0005 (if previous if statement is false) --0005 JMP-JMP
		return INPUT_VAR_0_
	else
		--location 0005--0005 LOCATION-LOCATION_
		return INPUT_VAR_1_
	end
	return
end


function randomFunction	decr (INPUT_VAR_0_)
	var_38_1 = {}
	var_38_2 = BigNum.new("1")
	var_38_1 = var_38_2
	var_38_3 = INPUT_VAR_0_
	var_38_4 = var_38_1
	var_38_5 = INPUT_VAR_0_
	BigNum.sub(var_38_3, var_38_4, var_38_5)
	var_38_2 = 0 --var_38_2 NUMBER-NUMBER
	return var_38_2
end


function randomFunction	n2n (INPUT_VAR_0_)
	var_39_3 = INPUT_VAR_0_
	tonumber( ntos(var_39_3) )
end


function randomFunction	bb719acbea2f65d7 (INPUT_VAR_0_)
	if INPUT_VAR_0_ ~= INPUT_VAR_1_ then
		--jump to 0005 (if previous if statement is false) --0005 JMP-JMP
		var_40_2 = false --var_40_2 PRIMITIVE-PRIMITIVE
	else
		--location 0005--0005 LOCATION-LOCATION_
		var_40_2 = true --var_40_2 PRIMITIVE-PRIMITIVE
	end
	return var_40_2
end


function randomFunction	bb719acbb8ffa3c2 (INPUT_VAR_0_)
	if INPUT_VAR_0_ == INPUT_VAR_1_ then
		--jump to 0005 (if previous if statement is false) --0005 JMP-JMP
		var_41_2 = false --var_41_2 PRIMITIVE-PRIMITIVE
	else
		--location 0005--0005 LOCATION-LOCATION_
		var_41_2 = true --var_41_2 PRIMITIVE-PRIMITIVE
	end
	return var_41_2
end


function randomFunction	bb719acbe37f48a6 (INPUT_VAR_0_)
	if not (INPUT_VAR_0_ <= INPUT_VAR_1_) then
		--jump to 0005 (if previous if statement is false) --0005 JMP-JMP
		var_42_2 = false --var_42_2 PRIMITIVE-PRIMITIVE
	else
		--location 0005--0005 LOCATION-LOCATION_
		var_42_2 = true --var_42_2 PRIMITIVE-PRIMITIVE
	end
	return var_42_2
end


function randomFunction	bb719acbd56265d9 (INPUT_VAR_0_,INPUT_VAR_1_)
	if not (INPUT_VAR_1_ <= INPUT_VAR_0_) then
		--jump to 0005 (if previous if statement is false) --0005 JMP-JMP
		var_43_2 = false --var_43_2 PRIMITIVE-PRIMITIVE
	else
		--location 0005--0005 LOCATION-LOCATION_
		var_43_2 = true --var_43_2 PRIMITIVE-PRIMITIVE
	end
	return var_43_2
end


function randomFunction	bb719acbb0cd87ba (INPUT_VAR_0_)
	if not (INPUT_VAR_0_ < INPUT_VAR_1_) then
		--jump to 0005 (if previous if statement is false) --0005 JMP-JMP
		var_44_2 = false --var_44_2 PRIMITIVE-PRIMITIVE
	else
		--location 0005--0005 LOCATION-LOCATION_
		var_44_2 = true --var_44_2 PRIMITIVE-PRIMITIVE
	end
	return var_44_2
end


function randomFunction	bb719acbff577802 (INPUT_VAR_0_,INPUT_VAR_1_)
	if not (INPUT_VAR_1_ < INPUT_VAR_0_) then
		--jump to 0005 (if previous if statement is false) --0005 JMP-JMP
		var_45_2 = false --var_45_2 PRIMITIVE-PRIMITIVE
	else
		--location 0005--0005 LOCATION-LOCATION_
		var_45_2 = true --var_45_2 PRIMITIVE-PRIMITIVE
	end
	return var_45_2
end


function randomFunction	bb719acba0e82ad9 (INPUT_VAR_0_)
	var_46_2 = INPUT_VAR_0_ + INPUT_VAR_1_ --var_46_2 NUMBER-NUMBER
	return var_46_2
end


function randomFunction	bb719acbd791738e (INPUT_VAR_0_,INPUT_VAR_1_)
	var_47_2 = INPUT_VAR_1_ - INPUT_VAR_0_ --var_47_2 NUMBER-NUMBER
	return var_47_2
end


function randomFunction	bb719acbfcb1e160 (INPUT_VAR_0_)
	var_48_2 = INPUT_VAR_0_ * INPUT_VAR_1_ --var_48_2 NUMBER-NUMBER
	return var_48_2
end


function randomFunction	bb719acba5b5e6d2 (INPUT_VAR_0_,INPUT_VAR_1_)
	var_49_2 = newn()
	c = var_49_2
	var_49_2 = newn()
	d = var_49_2
	var_49_3 = INPUT_VAR_0_
	var_49_4 = INPUT_VAR_1_
	e29d3db5(var_49_3, var_49_4, c, d)
	return c -- 返回商
end


function randomFunction	bb719acbe17da653 (INPUT_VAR_0_,INPUT_VAR_1_)
	var_50_2 = newn()
	c = var_50_2
	var_50_2 = newn()
	d = var_50_2
	var_50_3 = INPUT_VAR_0_
	var_50_4 = INPUT_VAR_1_
	e29d3db5(var_50_3, var_50_4, c, d) 
	return d -- 返回余数
end


function randomFunction	rshift (INPUT_VAR_0_,INPUT_VAR_1_)



	m = bexp(2, INPUT_VAR_1_)
	var_51_2 = newn()
	d = var_51_2
	var_51_2 = newn()
	r = var_51_2

	e29d3db5(INPUT_VAR_0_, m, d, r)
	return d -- 返回商
end


function randomFunction	band (INPUT_VAR_0_,INPUT_VAR_1_)
	var_52_2 = newn()
	c = var_52_2
	var_52_2 = newn()
	d = var_52_2
	var_52_3 = INPUT_VAR_0_
	var_52_4 = newn(1)
	var_52_4 = INPUT_VAR_1_ + var_52_4 --var_52_4 NUMBER-NUMBER
	e29d3db5(var_52_3, var_52_4, c, d)
	return d -- 返回余数
end


function randomFunction	file2array (INPUT_VAR_0_)
	var_53_1 = INPUT_VAR_0_
	var_53_4 = var_53_1
	var_53_2 = assert( io.open(var_53_4, "rb") )
	var_53_3 = {}
	repeat
	var_53_5 = var_53_2
	var_53_6 = 4096 --var_53_6 NUMBER-NUMBER
	var_53_4 = var_53_2.read(var_53_5, var_53_6)
	ISTC unhandled at 0015
	--jump to 0018 (if previous if statement is false) --0018 JMP-JMP
	--location 0018--0018 LOCATION-LOCATION
	var_53_6 = ""
	for var_53_8, var_53_9 in  var_53_5.gmatch(var_53_6, ".") do --var_53_5 FORTEST-FORTEST
		--jump to 0026 (if previous if statement is false) --0026 JMP-JMP
		LEN unhandled at 0023
		var_53_9 = var_53_9 +  1 --var_53_9 NUMBER-NUMBER
		var_53_3[var_53_9] = var_53_8
		--location 0026--0026 LOCATION-LOCATION
	end --end of a for loop
	if not var_53_4 then
		--jump to 0010 (if previous if statement is false) --0010 JMP-JMP
		until false or (previous if statement is true) --location 0030
		var_53_5 = var_53_2
		var_53_2.close(var_53_5)
		return var_53_3
	end
end --REVERSE ME

function randomFunction	str2array ()
	var_54_1 = {}
	ISTC unhandled at 0002
	--jump to 0005 (if previous if statement is false) --0005 JMP-JMP
	--location 0005--0005 LOCATION-LOCATION
	var_54_3 = ""
	for var_54_5, var_54_6 in  var_54_2.gmatch(var_54_3, ".") do --var_54_2 FORTEST-FORTEST
		--jump to 0013 (if previous if statement is false) --0013 JMP-JMP
		LEN unhandled at 0010
		var_54_6 = var_54_6 +  1 --var_54_6 NUMBER-NUMBER
		var_54_1[var_54_6] = var_54_5
		--location 0013--0013 LOCATION-LOCATION
	end --end of a for loop
	return var_54_1
end


function randomFunction	dump_table (INPUT_VAR_0_,INPUT_VAR_1_)
	var_55_2 = 5 --var_55_2 NUMBER-NUMBER
	if var_55_2 < INPUT_VAR_1_ then
		--jump to 0006 (if previous if statement is false) --0006 JMP-JMP
		return ""
	end
	var_55_1 = INPUT_VAR_1_ +  1 --var_55_1 NUMBER-NUMBER
	var_55_3 = INPUT_VAR_0_
	var_55_2 = type(var_55_3)
	if var_55_2 ==  "table" then
		--jump to 0062 (if previous if statement is false) --0062 JMP-JMP
		var_55_3 = 0 --var_55_3 NUMBER-NUMBER
		var_55_5 = INPUT_VAR_0_
		for var_55_7, var_55_8 in pairs(var_55_5) do --var_55_4 FORTEST-FORTEST
			var_55_3 = var_55_3 +  1 --var_55_3 NUMBER-NUMBER
			var_55_10 = var_55_7
			var_55_9 = type(var_55_10)
			if var_55_9 ~=  "number" then
				--jump to 0028 (if previous if statement is false) --0028 JMP-JMP
				var_55_10 = var_55_7
				var_55_7 = "" .. var_55_10 .. ""
			end
			if INPUT_VAR_0_ == var_55_8 then
				--jump to 0036 (if previous if statement is false) --0036 JMP-JMP
				until false or (previous if statement is true) --location 0030
				var_55_9 = "{ "
				var_55_11 = var_55_7
				var_55_2 = var_55_9 .. "[" .. var_55_11 .. "] = __self,"
			else
				--location 0036--0036 LOCATION-LOCATION_
				var_55_9 = 30 --var_55_9 NUMBER-NUMBER
				if var_55_3 < var_55_9 then
					--jump to 0050 (if previous if statement is false) --0050 JMP-JMP
					var_55_9 = var_55_2
					until false or (previous if statement is true) --location 0041
					var_55_11 = var_55_7
					until false or (previous if statement is true) --location 0043
					var_55_14 = var_55_8
					var_55_15 = var_55_1
					var_55_13 = dump_table(var_55_14, var_55_15)
					var_55_2 = var_55_9 .. "[" .. var_55_11 .. "] = " .. var_55_13 .. ","
				else
					--location 0050--0050 LOCATION-LOCATION_
					var_55_9 = var_55_2
					var_55_11 = var_55_7
					var_55_2 = var_55_9 .. "[" .. var_55_11 .. "] = ...,"
				end 
			end
		end --end of a for loop
		until false or (previous if statement is true) --location 0057
		var_55_4 = var_55_2
		var_55_4 = var_55_4 .. "} "
		return var_55_4
		--jump to 0076 (if previous if statement is false) --0076 JMP-JMP
		var_55_3 = INPUT_VAR_0_
		var_55_2 = type(var_55_3)
		if var_55_2 ==  "string" then
			--jump to 0073 (if previous if statement is false) --0073 JMP-JMP
			var_55_3 = INPUT_VAR_0_
			var_55_2 =  "" .. var_55_3 .. ""
			return var_55_2
			--jump to 0076 (if previous if statement is false) --0076 JMP-JMP
			var_55_3 = INPUT_VAR_0_
			return tostring(var_55_3)
			return
		end
	end end --REVERSE ME--REVERSE ME

function randomFunction	dumpTable (INPUT_VAR_0_)
	var_56_2 = INPUT_VAR_0_
	var_56_3 = 1 --var_56_3 NUMBER-NUMBER
	return dump_table(var_56_2, var_56_3)
end


function randomFunction	call_func_2 (INPUT_VAR_0_)
	var_57_2 = INPUT_VAR_0_.stack
	num = 2 --var_57_3 NUMBER-NUMBER
	var_57_1, var_57_2 = INPUT_VAR_0_.stack.pop(var_57_2, num)
	var_57_4 = INPUT_VAR_0_.stack
	var_57_6 = var_57_2
	var_57_7 = var_57_1
	INPUT_VAR_0_.stack.push(var_57_4,  uget_57_0(var_57_6, var_57_7) )
	return
end


function someFunc58()
	local randomFunction0 = function() end -- starts at  test.lua:0
	f = randomFunction0
	return f
end


function randomFunction	LOG ()
	return
end


function randomFunction	LOGPH ()
	return
end


function randomFunction	getByte ()
	var_61_1 = plainBs
	var_61_0, var_61_1 = plainBs.readByte(var_61_1)
	if not var_61_1 then
		--jump to 0011 (if previous if statement is false) --0011 JMP-JMP
		var_61_3 = 0 --var_61_3 NUMBER-NUMBER
		return newn(var_61_3)
	else
		--location 0011--0011 LOCATION-LOCATION_
		var_61_3 = var_61_0
		return newn(var_61_3)
	end
	return
end


function randomFunction	getFinish ()
	var_62_1 = plainBs
	var_62_2 = 1 --var_62_2 NUMBER-NUMBER
	move_success = plainBs.move(var_62_1, var_62_2)
	if move_success then
		--jump to 0017 (if previous if statement is false) --0017 JMP-JMP
		var_62_2 = plainBs
		var_62_3 = -1 --var_62_3 NUMBER-NUMBER
		plainBs.move(var_62_2, var_62_3)
		var_62_2 = 1 --var_62_2 NUMBER-NUMBER
		return newn(var_62_2)
	else
		--location 0017--0017 LOCATION-LOCATION_
		var_62_2 = 0 --var_62_2 NUMBER-NUMBER
		return newn(var_62_2)
	end
	return
end


function randomFunction	stringsub (INPUT_VAR_0_,INPUT_VAR_1_,INPUT_VAR_2_)
	var_63_4 = INPUT_VAR_0_
	var_63_6 = INPUT_VAR_1_
	var_63_5 = n2n(var_63_6)
	var_63_7 = INPUT_VAR_2_
	string.sub(var_63_4, var_63_5,  n2n(var_63_7) )
end


function randomFunction	dw2Byte (INPUT_VAR_0_)
	ISTC unhandled at 0001
	--jump to 0004 (if previous if statement is false) --0004 JMP-JMP
	var_64_2 = {}
	--location 0004--0004 LOCATION-LOCATION
	LEN unhandled at 0004
	var_64_3 = var_64_3 +  1 --var_64_3 NUMBER-NUMBER
	var_64_6 = INPUT_VAR_0_
	var_64_7 = 0 --var_64_7 NUMBER-NUMBER
	var_64_5 = uget_64_0.rshift(var_64_6, var_64_7)
	var_64_6 = 255 --var_64_6 NUMBER-NUMBER
	var_64_4 = uget_64_0.band(var_64_5, var_64_6)
	var_64_2[var_64_3] = var_64_4
	LEN unhandled at 0016
	var_64_3 = var_64_3 +  1 --var_64_3 NUMBER-NUMBER
	var_64_6 = INPUT_VAR_0_
	var_64_7 = 8 --var_64_7 NUMBER-NUMBER
	var_64_5 = uget_64_0.rshift(var_64_6, var_64_7)
	var_64_6 = 255 --var_64_6 NUMBER-NUMBER
	var_64_4 = uget_64_0.band(var_64_5, var_64_6)
	var_64_2[var_64_3] = var_64_4
	LEN unhandled at 0028
	var_64_3 = var_64_3 +  1 --var_64_3 NUMBER-NUMBER
	until false or (previous if statement is true) --location 0030
	var_64_6 = INPUT_VAR_0_
	var_64_7 = 16 --var_64_7 NUMBER-NUMBER
	var_64_5 = uget_64_0.rshift(var_64_6, var_64_7)
	var_64_6 = 255 --var_64_6 NUMBER-NUMBER
	var_64_4 = uget_64_0.band(var_64_5, var_64_6)
	var_64_2[var_64_3] = var_64_4
	LEN unhandled at 0040
	until false or (previous if statement is true) --location 0041
	var_64_3 = var_64_3 +  1 --var_64_3 NUMBER-NUMBER
	until false or (previous if statement is true) --location 0043
	var_64_6 = INPUT_VAR_0_
	var_64_7 = 24 --var_64_7 NUMBER-NUMBER
	var_64_5 = uget_64_0.rshift(var_64_6, var_64_7)
	var_64_6 = 255 --var_64_6 NUMBER-NUMBER
	var_64_4 = uget_64_0.band(var_64_5, var_64_6)
	var_64_2[var_64_3] = var_64_4
	return var_64_2
end


function randomFunction	putDword (INPUT_VAR_0_)
	if not encryptBs then
		--jump to 0005 (if previous if statement is false) --0005 JMP-JMP
		var_65_1 = {}
	end
	encryptBs = var_65_1
	var_65_2 = INPUT_VAR_0_
	dw2Byte(var_65_2, encryptBs)
	return
end


function randomFunction	putByte (INPUT_VAR_0_)
	if not encryptBs then
		--jump to 0005 (if previous if statement is false) --0005 JMP-JMP
		var_66_1 = {}
	end
	encryptBs = var_66_1
	LEN unhandled at 0008
	var_66_2 = encryptBs +  1 --var_66_2 NUMBER-NUMBER
	encryptBs[var_66_2] = INPUT_VAR_0_
	return
end


function randomFunction	saveEncrypt (INPUT_VAR_0_)
	var_67_2 = INPUT_VAR_0_
	var_67_1 = io.open(var_67_2, "wb")
	for var_67_5, var_67_6 in pairs(encryptBs) do --var_67_2 FORTEST-FORTEST
		var_67_8 = var_67_6
		var_67_7 = type(var_67_8)
		var_67_9 = 1 --var_67_9 NUMBER-NUMBER
		var_67_8 = type(var_67_9)
		if var_67_7 == var_67_8 then
			--jump to 0026 (if previous if statement is false) --0026 JMP-JMP
			var_67_8 = var_67_1
			var_67_10 = var_67_6
			var_67_1.write(var_67_8,  string.char(var_67_10) )
		else
			--location 0026--0026 LOCATION-LOCATION_
			var_67_8 = var_67_1
			var_67_9 = var_67_6
			var_67_1.write(var_67_8, var_67_9)
		end
		until false or (previous if statement is true) --location 0030
	end --end of a for loop
	return
end


function randomFunction	VM.new (INPUT_VAR_0_,INPUT_VAR_1_)
	var_68_3 = {}
	o = var_68_3
	var_68_5 = INPUT_VAR_0_
	setmetatable(o, var_68_5)
	INPUT_VAR_0_.__index = INPUT_VAR_0_
	o.bs = INPUT_VAR_1_
	var_68_5 = c34c179c
	var_68_4 = c34c179c.new(var_68_5)
	o.stack = var_68_4
	ISTC unhandled at 0017
	--jump to 0020 (if previous if statement is false) --0020 JMP-JMP
	var_68_4 = {}
	--location 0020--0020 LOCATION-LOCATION
	o.env = var_68_4
	setmetatable(o.env, _G)
	_G.__index = _G
	until false or (previous if statement is true) --location 0030
	return o
end


function randomFunction	VM.exec (INPUT_VAR_0_)
	repeat
	var_69_2 = INPUT_VAR_0_.bs
	var_69_1, var_69_2 = INPUT_VAR_0_.bs.readByte(var_69_2)
	if not var_69_2 then
		--jump to 0009 (if previous if statement is false) --0009 JMP-JMP
	else
		--location 0009--0009 LOCATION-LOCATION_
		var_69_4 = INPUT_VAR_0_
		unknown46(var_69_4)
	else
		--location 0014--0014 LOCATION-LOCATION_
		until false or (previous if statement is true) --location 0014
		return
	end
end --REVERSE ME

function randomFunction	VM.b61531b9 (INPUT_VAR_0_)
	var_70_2 = INPUT_VAR_0_.bs
	var_70_1 = INPUT_VAR_0_.bs.readInt(var_70_2)
	var_70_3 = var_70_1
	var_70_2 = newn(var_70_3)
	var_70_1 = var_70_2
	var_70_3 = INPUT_VAR_0_.stack
	var_70_4 = var_70_1
	INPUT_VAR_0_.stack.push(var_70_3, var_70_4)
	until false or (previous if statement is true) --location 0014
	return
end


function randomFunction	VM.e5a13297 (INPUT_VAR_0_)
	var_71_2 = INPUT_VAR_0_.bs
	var_71_1 = INPUT_VAR_0_.bs.readStr(var_71_2)
	var_71_3 = INPUT_VAR_0_.stack
	INPUT_VAR_0_.stack.push(var_71_3, unknown47)
	return
end


function randomFunction	VM.a115183a (INPUT_VAR_0_)
	var_72_2 = INPUT_VAR_0_.bs
	var_72_1 = INPUT_VAR_0_.bs.readStr(var_72_2)
	var_72_3 = INPUT_VAR_0_.stack
	var_72_4 = var_72_1
	INPUT_VAR_0_.stack.push(var_72_3, var_72_4)
	return
end


function randomFunction	VM.set (INPUT_VAR_0_)
	var_73_2 = INPUT_VAR_0_.bs
	var_73_1 = INPUT_VAR_0_.bs.readStr(var_73_2)
	var_73_3 = INPUT_VAR_0_.stack
	var_73_2 = INPUT_VAR_0_.stack.pop(var_73_3)
	INPUT_VAR_0_.env[var_73_1] = var_73_2
	return
end


function randomFunction	VM.c30c39a5 (INPUT_VAR_0_)
	var_74_2 = INPUT_VAR_0_.stack
	var_74_3 = 2 --var_74_3 NUMBER-NUMBER
	var_74_1, var_74_2 = INPUT_VAR_0_.stack.pop(var_74_2, var_74_3)
	var_74_4 = INPUT_VAR_0_.stack
	var_74_5 = var_74_1 + var_74_2 --var_74_5 NUMBER-NUMBER
	INPUT_VAR_0_.stack.push(var_74_4, var_74_5)
	return
end


function randomFunction	VM.e9dcc004 (INPUT_VAR_0_)
	var_75_2 = INPUT_VAR_0_.stack
	var_75_3 = 2 --var_75_3 NUMBER-NUMBER
	var_75_1, var_75_2 = INPUT_VAR_0_.stack.pop(var_75_2, var_75_3)
	var_75_4 = INPUT_VAR_0_.stack
	var_75_5 = var_75_2 - var_75_1 --var_75_5 NUMBER-NUMBER
	INPUT_VAR_0_.stack.push(var_75_4, var_75_5)
	return
end


function randomFunction	VM.b8eb468b (INPUT_VAR_0_)
	var_76_2 = INPUT_VAR_0_.stack
	var_76_3 = 2 --var_76_3 NUMBER-NUMBER
	var_76_1, var_76_2 = INPUT_VAR_0_.stack.pop(var_76_2, var_76_3)
	var_76_4 = INPUT_VAR_0_.stack
	var_76_5 = var_76_1 * var_76_2 --var_76_5 NUMBER-NUMBER
	INPUT_VAR_0_.stack.push(var_76_4, var_76_5)
	return
end


function randomFunction	VM.e29d3db5 (INPUT_VAR_0_)
	var_77_2 = INPUT_VAR_0_.stack
	var_77_3 = 2 --var_77_3 NUMBER-NUMBER
	var_77_1, var_77_2 = INPUT_VAR_0_.stack.pop(var_77_2, var_77_3)
	var_77_4 = INPUT_VAR_0_.stack
	var_77_5 = var_77_2 / var_77_1 --var_77_5 NUMBER-NUMBER
	INPUT_VAR_0_.stack.push(var_77_4, var_77_5)
	return
end


function randomFunction	VM.ue9dcc004 (INPUT_VAR_0_)
	var_78_2 = INPUT_VAR_0_.stack
	var_78_1 = INPUT_VAR_0_.stack.pop(var_78_2)
	var_78_3 = var_78_1
	var_78_2 = newn(var_78_3)
	n = var_78_2
	var_78_3 = INPUT_VAR_0_.stack
	UNM unhandled at 0013
	until false or (previous if statement is true) --location 0014
	INPUT_VAR_0_.stack.push(var_78_3, n)
	return
end


function randomFunction	VM.fb6ea852 (INPUT_VAR_0_)
	var_79_2 = INPUT_VAR_0_.stack
	var_79_1 = INPUT_VAR_0_.stack.pop(var_79_2)
	var_79_3 = INPUT_VAR_0_.bs
	var_79_2 = INPUT_VAR_0_.bs.readInt(var_79_3)
	if var_79_1 then
		--jump to 0016 (if previous if statement is false) --0016 JMP-JMP
		var_79_4 = 0 --var_79_4 NUMBER-NUMBER
		var_79_3 = newn(var_79_4)
		until false or (previous if statement is true) --location 0014
		if var_79_1 == var_79_3 then
		end -- maybe?
	else
		--location 0016--0016 LOCATION-LOCATION_
		var_79_4 = INPUT_VAR_0_.bs
		var_79_5 = var_79_2
		INPUT_VAR_0_.bs.move(var_79_4, var_79_5)
	end
	return
end


function randomFunction	VM.ddbe0eb4 (INPUT_VAR_0_)
	var_80_2 = INPUT_VAR_0_.bs
	var_80_1 = INPUT_VAR_0_.bs.readStr(var_80_2)
	var_80_4 = unknown48
	var_80_3 = type(var_80_4)
	if var_80_3 ==  "function" then
		--jump to 0048 (if previous if statement is false) --0048 JMP-JMP
		var_80_4 = INPUT_VAR_0_.stack
		until false or (previous if statement is true) --location 0014
		var_80_3 = INPUT_VAR_0_.stack.pop(var_80_4)
		argsn = var_80_3
		var_80_3 = n2n(argsn)
		argsn = var_80_3
		var_80_3 = {}
		args = var_80_3
		var_80_3 = 1 --var_80_3 NUMBER-NUMBER
		var_80_5 = 1 --var_80_5 NUMBER-NUMBER
		for var_80_6 = var_80_3,argsn,var_80_5 do --location 0026, loop ends at 0037-1
			LEN unhandled at 0029
			until false or (previous if statement is true) --location 0030
			var_80_8 = args +  1 --var_80_8 NUMBER-NUMBER
			var_80_10 = INPUT_VAR_0_.stack
			var_80_9 = INPUT_VAR_0_.stack.pop(var_80_10)
			args[var_80_8] = var_80_9
		end --location 0036, loops back to 0027-1
		var_80_3 = unknown48
		until false or (previous if statement is true) --location 0041
		var_80_3 = var_80_3( unpack(args) )
		res = var_80_3
		until false or (previous if statement is true) --location 0043
		var_80_4 = INPUT_VAR_0_.stack
		INPUT_VAR_0_.stack.push(var_80_4, res)
		return
	end
end --REVERSE ME

function randomFunction	encrypt2file (INPUT_VAR_0_,INPUT_VAR_1_,INPUT_VAR_2_)
	var_81_4 = INPUT_VAR_0_
	var_81_3 = file2array(var_81_4)
	s = var_81_3
	var_81_4 = bs
	var_81_3 = bs.new(var_81_4, s)
	plainBs = var_81_3
	var_81_4 = INPUT_VAR_1_
	var_81_3 = file2array(var_81_4)
	until false or (previous if statement is true) --location 0014
	s = var_81_3
	var_81_4 = bs
	var_81_3 = bs.new(var_81_4, s)
	bss = var_81_3
	var_81_4 = VM
	var_81_3 = VM.new(var_81_4, bss)
	vm = var_81_3
	var_81_4 = vm
	until false or (previous if statement is true) --location 0030
	vm.exec(var_81_4)
	var_81_4 = INPUT_VAR_2_
	saveEncrypt(var_81_4)
	var_81_3 = "goodlucku+YcR7i/a5LdllcHiLzoNdzenDtUlllc" --strings longer than 40 characters get cut off, so check to see if there's more!
	dstRes = var_81_3
	return
end


function randomFunction	check (INPUT_VAR_0_)
	var_82_1 = {}
	plainBs = var_82_1
	var_82_1 = {}
	encryptBs = var_82_1
	var_82_2 = INPUT_VAR_0_
	var_82_1 = str2array(var_82_2)
	var_82_0 = var_82_1
	var_82_2 = bs
	var_82_3 = var_82_0
	var_82_1 = bs.new(var_82_2, var_82_3)
	until false or (previous if statement is true) --location 0014
	plainBs = var_82_1
	var_82_1 = {} --to find out the contents of this table look inside the lua file
	hexData = var_82_1
	var_82_2 = bs
	var_82_1 = bs.new(var_82_2, hexData) -- 虚拟机
	bss = var_82_1 -- 虚拟机 bit
	var_82_2 = VM
	var_82_1 = VM.new(var_82_2, bss)
	vm = var_82_1
	until false or (previous if statement is true) --location 0030
	var_82_2 = vm
	vm.exec(var_82_2)
	for index, var_82_5 in pairs(encryptBs) do --var_82_1 FORTEST-FORTEST
		var_82_8 = index
		until false or (previous if statement is true) --location 0041
		var_82_9 = index
		var_82_6 = string.sub(dstRes, var_82_8, var_82_9)
		until false or (previous if statement is true) --location 0043
		if var_82_5 ~= var_82_6 then
			--jump to 0058 (if previous if statement is false) --0058 JMP-JMP
			var_82_8 = index
			var_82_9 = var_82_5
			var_82_12 = index
			var_82_13 = index
			LOGPH("fail! %d %s %s", var_82_8, var_82_9,  string.sub(dstRes, var_82_12, var_82_13) )
			var_82_6 = false --var_82_6 PRIMITIVE-PRIMITIVE
			until false or (previous if statement is true) --location 0057
			return var_82_6
			var_82_6 = string.len(dstRes)
			if index == var_82_6 then
				--jump to 0069 (if previous if statement is false) --0069 JMP-JMP
				LOGPH("success")
				var_82_6 = true --var_82_6 PRIMITIVE-PRIMITIVE
				return var_82_6
			end --end of a for loop
			return
		end
	end end --REVERSE ME--REVERSE ME

function someFunc83()
	var_83_0 = {}
	bs = var_83_0
	var_83_0 = require("bit")
	local randomFunction1 = function() end -- starts at  test.lua:0
	bs.new = randomFunction1
	local randomFunction2 = function() end -- starts at  test.lua:0
	bs.move = randomFunction2
	until false or (previous if statement is true) --location 0014
	local randomFunction3 = function() end -- starts at  test.lua:0
	bs.pop = randomFunction3
	local randomFunction4 = function() end -- starts at  test.lua:0
	bs.pop_raw = randomFunction4
	local randomFunction5 = function() end -- starts at  test.lua:0
	bs.readByte = randomFunction5
	local randomFunction6 = function() end -- starts at  test.lua:0
	bs.readInt = randomFunction6
	local randomFunction7 = function() end -- starts at  test.lua:0
	bs.readStr = randomFunction7
	local randomFunction8 = function() end -- starts at  test.lua:0
	until false or (previous if statement is true) --location 0030
	bs.bPos = randomFunction8
	var_83_2 = {}
	c34c179c = var_83_2
	local randomFunction9 = function() end -- starts at  test.lua:0
	c34c179c.new = randomFunction9
	local randomFunction10 = function() end -- starts at  test.lua:0
	c34c179c.push = randomFunction10
	local randomFunction11 = function() end -- starts at  test.lua:0
	until false or (previous if statement is true) --location 0041
	c34c179c.pop = randomFunction11
	var_83_2 = 10000000 --var_83_2 NUMBER-NUMBER
	until false or (previous if statement is true) --location 0043
	RADIX = var_83_2
	var_83_2 = math.floor( math.log10(RADIX) )
	RADIX_LEN = var_83_2
	var_83_2 = {}
	BigNum = var_83_2
	var_83_3 = {}
	BigNum.mt = var_83_3
	until false or (previous if statement is true) --location 0057
	local randomFunction12 = function() end -- starts at  test.lua:0
	BigNum.new = randomFunction12
	local randomFunction13 = function() end -- starts at  test.lua:0
	BigNum.mt.sub = randomFunction13
	local randomFunction14 = function() end -- starts at  test.lua:0
	BigNum.mt.add = randomFunction14
	local randomFunction15 = function() end -- starts at  test.lua:0
	BigNum.mt.mul = randomFunction15
	local randomFunction16 = function() end -- starts at  test.lua:0
	BigNum.mt.div = randomFunction16
	local randomFunction17 = function() end -- starts at  test.lua:0
	BigNum.mt.tostring = randomFunction17
	local randomFunction18 = function() end -- starts at  test.lua:0
	BigNum.mt.pow = randomFunction18
	local randomFunction19 = function() end -- starts at  test.lua:0
	BigNum.mt.eq = randomFunction19
	local randomFunction20 = function() end -- starts at  test.lua:0
	BigNum.mt.lt = randomFunction20
	local randomFunction21 = function() end -- starts at  test.lua:0
	BigNum.mt.le = randomFunction21
	local randomFunction22 = function() end -- starts at  test.lua:0
	BigNum.mt.unm = randomFunction22
	BigNum.mt.__metatable = "hidden"
	BigNum.mt.__tostring = BigNum.mt.tostring
	BigNum.mt.__add = BigNum.mt.add
	BigNum.mt.__sub = BigNum.mt.sub
	BigNum.mt.__mul = BigNum.mt.mul
	BigNum.mt.__div = BigNum.mt.div
	BigNum.mt.__pow = BigNum.mt.pow
	BigNum.mt.__unm = BigNum.mt.unm
	BigNum.mt.__eq = BigNum.mt.eq
	BigNum.mt.__le = BigNum.mt.le
	BigNum.mt.__lt = BigNum.mt.lt
	var_83_4 = {} --to find out the contents of this table look inside the lua file
	setmetatable(BigNum.mt, var_83_4)
	local randomFunction23 = function() end -- starts at  test.lua:0
	BigNum.add = randomFunction23
	local randomFunction24 = function() end -- starts at  test.lua:0
	BigNum.sub = randomFunction24
	local randomFunction25 = function() end -- starts at  test.lua:0
	BigNum.mul = randomFunction25
	local randomFunction26 = function() end -- starts at  test.lua:0
	BigNum.div = randomFunction26
	local randomFunction27 = function() end -- starts at  test.lua:0
	BigNum.pow = randomFunction27
	BigNum.exp = BigNum.pow
	local randomFunction28 = function() end -- starts at  test.lua:0
	BigNum.gcd = randomFunction28
	BigNum.mmc = BigNum.gcd
	local randomFunction29 = function() end -- starts at  test.lua:0
	BigNum.eq = randomFunction29
	local randomFunction30 = function() end -- starts at  test.lua:0
	BigNum.lt = randomFunction30
	local randomFunction31 = function() end -- starts at  test.lua:0
	BigNum.le = randomFunction31
	local randomFunction32 = function() end -- starts at  test.lua:0
	BigNum.compareAbs = randomFunction32
	local randomFunction33 = function() end -- starts at  test.lua:0
	BigNum.compare = randomFunction33
	local randomFunction34 = function() end -- starts at  test.lua:0
	BigNum.copy = randomFunction34
	local randomFunction35 = function() end -- starts at  test.lua:0
	BigNum.change = randomFunction35
	local randomFunction36 = function() end -- starts at  test.lua:0
	BigNum.put = randomFunction36
	local randomFunction37 = function() end -- starts at  test.lua:0
	printraw = randomFunction37
	local randomFunction38 = function() end -- starts at  test.lua:0
	max = randomFunction38
	local randomFunction39 = function() end -- starts at  test.lua:0
	decr = randomFunction39
	var_83_2 = "ETKdgxteV6FHLzDCwmaVb9pYU5kSV6paNicOnO/w" --strings longer than 40 characters get cut off, so check to see if there's more!
	dstRes = var_83_2
	newn = BigNum.new
	e29d3db5 = BigNum.div
	ntos = BigNum.mt.tostring
	local randomFunction40 = function() end -- starts at  test.lua:0
	n2n = randomFunction40
	bexp = BigNum.exp
	until false or (previous if statement is true) --location 0242
	local randomFunction41 = function() end -- starts at  test.lua:0
	bb719acbea2f65d7 = randomFunction41
	local randomFunction42 = function() end -- starts at  test.lua:0
	bb719acbb8ffa3c2 = randomFunction42
	local randomFunction43 = function() end -- starts at  test.lua:0
	bb719acbe37f48a6 = randomFunction43
	local randomFunction44 = function() end -- starts at  test.lua:0
	bb719acbd56265d9 = randomFunction44
	local randomFunction45 = function() end -- starts at  test.lua:0
	bb719acbb0cd87ba = randomFunction45
	local randomFunction46 = function() end -- starts at  test.lua:0
	bb719acbff577802 = randomFunction46
	local randomFunction47 = function() end -- starts at  test.lua:0
	bb719acba0e82ad9 = randomFunction47
	local randomFunction48 = function() end -- starts at  test.lua:0
	bb719acbd791738e = randomFunction48
	local randomFunction49 = function() end -- starts at  test.lua:0
	bb719acbfcb1e160 = randomFunction49
	local randomFunction50 = function() end -- starts at  test.lua:0
	bb719acba5b5e6d2 = randomFunction50
	local randomFunction51 = function() end -- starts at  test.lua:0
	bb719acbe17da653 = randomFunction51
	local randomFunction52 = function() end -- starts at  test.lua:0
	rshift = randomFunction52
	local randomFunction53 = function() end -- starts at  test.lua:0
	band = randomFunction53
	local randomFunction54 = function() end -- starts at  test.lua:0
	file2array = randomFunction54
	local randomFunction55 = function() end -- starts at  test.lua:0
	str2array = randomFunction55
	local randomFunction56 = function() end -- starts at  test.lua:0
	dump_table = randomFunction56
	local randomFunction57 = function() end -- starts at  test.lua:0
	dumpTable = randomFunction57
	local randomFunction58 = function() end -- starts at  test.lua:0
	call_func_2 = randomFunction58
	local randomFunction59 = function() end -- starts at  test.lua:0
	LOG = randomFunction59
	local randomFunction60 = function() end -- starts at  test.lua:0
	LOGPH = randomFunction60
	var_83_2 = nil --var_83_2 PRIMITIVE-PRIMITIVE
	plainBs = var_83_2
	var_83_2 = nil --var_83_2 PRIMITIVE-PRIMITIVE
	encryptBs = var_83_2
	local randomFunction61 = function() end -- starts at  test.lua:0
	getByte = randomFunction61
	local randomFunction62 = function() end -- starts at  test.lua:0
	getFinish = randomFunction62
	local randomFunction63 = function() end -- starts at  test.lua:0
	stringsub = randomFunction63
	local randomFunction64 = function() end -- starts at  test.lua:0
	dw2Byte = randomFunction64
	local randomFunction65 = function() end -- starts at  test.lua:0
	putDword = randomFunction65
	local randomFunction66 = function() end -- starts at  test.lua:0
	putByte = randomFunction66
	local randomFunction67 = function() end -- starts at  test.lua:0
	saveEncrypt = randomFunction67
	var_83_2 = 0 --var_83_2 NUMBER-NUMBER
	dd2c3116 = var_83_2
	var_83_2 = 1 --var_83_2 NUMBER-NUMBER
	b5827525 = var_83_2
	var_83_2 = 2 --var_83_2 NUMBER-NUMBER
	Ud791738e = var_83_2
	var_83_2 = 3 --var_83_2 NUMBER-NUMBER
	c9011a8e = var_83_2
	var_83_2 = 4 --var_83_2 NUMBER-NUMBER
	ea2f65d7 = var_83_2
	var_83_2 = 5 --var_83_2 NUMBER-NUMBER
	ff577802 = var_83_2
	var_83_2 = 6 --var_83_2 NUMBER-NUMBER
	a0e82ad9 = var_83_2
	var_83_2 = 7 --var_83_2 NUMBER-NUMBER
	e17da653 = var_83_2
	var_83_2 = 8 --var_83_2 NUMBER-NUMBER
	fcb1e160 = var_83_2
	var_83_2 = 9 --var_83_2 NUMBER-NUMBER
	a5b5e6d2 = var_83_2
	var_83_2 = 10 --var_83_2 NUMBER-NUMBER
	fe825de6 = var_83_2
	var_83_2 = 11 --var_83_2 NUMBER-NUMBER
	b8ffa3c2 = var_83_2
	var_83_2 = 12 --var_83_2 NUMBER-NUMBER
	d56265d9 = var_83_2
	var_83_2 = 13 --var_83_2 NUMBER-NUMBER
	dd59703d = var_83_2
	var_83_2 = 14 --var_83_2 NUMBER-NUMBER
	e37f48a6 = var_83_2
	var_83_2 = 15 --var_83_2 NUMBER-NUMBER
	d791738e = var_83_2
	var_83_2 = 16 --var_83_2 NUMBER-NUMBER
	b0cd87ba = var_83_2
	var_83_2 = 17 --var_83_2 NUMBER-NUMBER
	ba82e6cd = var_83_2
	var_83_2 = {}
	VM = var_83_2
	var_83_2 = {}
	funcTable = var_83_2
	VM.opf = funcTable
	local randomFunction68 = function() end -- starts at  test.lua:0
	VM.new = randomFunction68
	local randomFunction69 = function() end -- starts at  test.lua:0
	VM.exec = randomFunction69
	local randomFunction70 = function() end -- starts at  test.lua:0
	VM.b61531b9 = randomFunction70
	local randomFunction71 = function() end -- starts at  test.lua:0
	VM.e5a13297 = randomFunction71
	local randomFunction72 = function() end -- starts at  test.lua:0
	VM.a115183a = randomFunction72
	local randomFunction73 = function() end -- starts at  test.lua:0
	VM.set = randomFunction73
	local randomFunction74 = function() end -- starts at  test.lua:0
	VM.c30c39a5 = randomFunction74
	local randomFunction75 = function() end -- starts at  test.lua:0
	VM.e9dcc004 = randomFunction75
	local randomFunction76 = function() end -- starts at  test.lua:0
	VM.b8eb468b = randomFunction76
	local randomFunction77 = function() end -- starts at  test.lua:0
	VM.e29d3db5 = randomFunction77
	local randomFunction78 = function() end -- starts at  test.lua:0
	VM.ue9dcc004 = randomFunction78
	local randomFunction79 = function() end -- starts at  test.lua:0
	VM.fb6ea852 = randomFunction79
	local randomFunction80 = function() end -- starts at  test.lua:0
	VM.ddbe0eb4 = randomFunction80
	funcTable[c9011a8e] = VM.ddbe0eb4
	funcTable[ba82e6cd] = VM.fb6ea852
	funcTable[fe825de6] = VM.b61531b9
	funcTable[dd2c3116] = VM.e5a13297
	funcTable[dd59703d] = VM.a115183a
	funcTable[b5827525] = VM.set
	var_83_4 = call_func_2(bb719acba0e82ad9, "a0e82ad9")
	funcTable[a0e82ad9] = var_83_4
	var_83_4 = call_func_2(bb719acbd791738e, "a0e82ad9")
	funcTable[d791738e] = var_83_4
	var_83_4 = call_func_2(bb719acbfcb1e160, "a0e82ad9")
	funcTable[fcb1e160] = var_83_4
	var_83_4 = call_func_2(bb719acba5b5e6d2, "a0e82ad9")
	funcTable[a5b5e6d2] = var_83_4
	funcTable[Ud791738e] = VM.ue9dcc004
	var_83_4 = call_func_2(bb719acbe17da653, "e17da653")
	funcTable[e17da653] = var_83_4
	var_83_4 = call_func_2(bb719acbea2f65d7, "ea2f65d7")
	funcTable[ea2f65d7] = var_83_4
	var_83_4 = call_func_2(bb719acbb8ffa3c2, "b8ffa3c2")
	funcTable[b8ffa3c2] = var_83_4
	var_83_4 = call_func_2(bb719acbe37f48a6, "e37f48a6")
	funcTable[e37f48a6] = var_83_4
	var_83_4 = call_func_2(bb719acbd56265d9, "d56265d9")
	funcTable[d56265d9] = var_83_4
	var_83_4 = call_func_2(bb719acbb0cd87ba, "b0cd87ba")
	funcTable[b0cd87ba] = var_83_4
	var_83_4 = call_func_2(bb719acbff577802, "ff577802")
	funcTable[ff577802] = var_83_4
	local randomFunction81 = function() end -- starts at  test.lua:0
	encrypt2file = randomFunction81
	local randomFunction82 = function() end -- starts at  test.lua:0
	check = randomFunction82
	return
end


