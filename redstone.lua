---@meta

redstone = {} --- CC's Redstone module

---Returns a table containing the six sides of the computer. Namely, "top", "bottom", "left", "right", "front" and "back".
---@return string[] sides A table of valid sides.
function redstone.getSides() end

---Turn the redstone signal of a specific side on or off.
---@param side side The side to set.
---@param on boolean Whether the redstone signal should be on or off. When on, a signal strength of 15 is emitted.
function redstone.setOutput(side, on) end

---Get the current redstone output of a specific side.
---@param side side The side to get
---@return boolean on Whether the redstone output is on or off.
function redstone.getOutput(side) end

---Get the current redstone input of a specific side.
---@param side side The side to get
---@return boolean on Whether the redstone input is on or off.
function redstone.getInput(side) end

---Set the redstone signal strength for a specific side.
---@param side side The side to set
---@param value integer The signal strength between 0 and 15.
function redstone.setAnalogOutput(side, value) end

---Get the redstone output signal strength for a specific side.
---@param side side The side to get
---@return integer value The output signal strength, between 0 and 15.
function redstone.getAnalogOutput(side) end

---Get the redstone input signal strength for a specific side.
---@param side side The side to get
---@return integer value The input signal strength, between 0 and 15.
function redstone.getAnalogInput(side) end

---Set the bundled cable output for a specific side.
---@param side side The side to set
---@param output integer The color bitmask to set.
function redstone.setBundledOutput(side, output) end

---Get the bundled cable output for a specific side.
---@param side side The side to get
---@return integer output The bundle cable's output.
function redstone.getBundledOutput(side) end

---Get the bundled cable input for a specific side.
---@param side side The side to get
---@return integer input The bundle cable's input.
function redstone.getBundledInput(side) end

---Determine if a specific combination of colors are on for the given side.
---@param side side The side to test
---@param mask integer THe mask to test
---@return boolean on If the colors are on.
function redstone.testBundledInput(side, mask) end