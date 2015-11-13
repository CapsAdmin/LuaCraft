--[[
	Please do not edit this file, it will get updated on startup
	If you want a function to be added here, post it on the forums
	
	Thanks!
]]

function math.Bin2Int(bin)
	return tonumber(bin, 2)
end

function math.Int2Bin(int)
	local str = string.format("%o", int)
	
	local a = {
		["0"] = "000",
		["1"] = "001",
		["2"] = "010",
		["3"] = "011",
		["4"] = "100",
		["5"] = "101",
		["6"] = "110",
		["7"] = "111"
	}
		
	return string.gsub(str, "(.)", function(d) return a[d] end)
end

function math.Clamp(num, low, high)
	if (num < low) then return low end
	if (num > high) then return high end
	return num
end

function math.Round(num, idp)
	local mul = 10^(idp or 0)
	return math.floor(num * mul + 0.5) / mul
end

function math.Truncate(num, idp)
	local mul = 10^(idp or 0)
	local truncfunc = num < 0 and math.ceil or math.floor
	return truncfunc(num * mult) / mul
end