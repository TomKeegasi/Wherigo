------------------------------------------------------------------------
-- Include core wherigo API
------------------------------------------------------------------------
require "Wherigo"


------------------------------------------------------------------------
--- createClass(...)
------------------------------------------------------------------------
-- Creates a new class object, which is essentially a lua-table
-- with some special meta-table
-- @param ... List of classes to inherit from
-- @return class The derived class object
------------------------------------------------------------------------
function createClass(...)
	-- This is going to be the class object
	local class = {}

	-- The new class will be using methods given by ... classes
	setmetatable(class, {
		-- Called when method can't be found
		__index = function (tbl, key)
			for i = 1, #arg do
				-- Find in ... classes
				local value = arg[i][key]
				
				-- Add to this class
				if value then 
					tbl[key] = value
					return value
				end
			end
		end
	})
	class.__index = class

	-- Allows to create a new instance of our class
	-- Note: Every modification to the class object will be "applied"
	-- to its instances!
	function class:New(obj)
		obj = obj or {}
		setmetatable(obj, class)
		return obj
	end

	return class
end


------------------------------------------------------------------------
-- Derive some more "sane" classes from the default whereigo stuff
------------------------------------------------------------------------
Player = createClass(Wherigo.Player)
Distance = createClass(Wherigo.Distance)
ZonePoint = createClass(Wherigo.ZonePoint)
