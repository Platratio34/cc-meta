---@meta

---@class RedstoneRelayPeripheral CC's Redstone relay peripheral
local RedstoneRelayPeripheral = {}

---Turn the redstone signal of a specific side on or off.
---@param side side The side to set.
---@param on boolean Whether the redstone signal should be on or off. When on, a signal strength of 15 is emitted.
function RedstoneRelayPeripheral.setOutput(side, on) end

---Get the current redstone output of a specific side.
---@param side side The side to get.
---@return boolean on Whether the redstone output is on or off.
function RedstoneRelayPeripheral.getOutput(side) end

---Get the current redstone input of a specific side.
---@param side side The side to get.
---@return boolean on Whether the redstone input is on or off.
function RedstoneRelayPeripheral.getInput(side) end

---Set the redstone signal strength for a specific side.
---@param side side The side to set.
---@param value integer The signal strength between 0 and 15.
function RedstoneRelayPeripheral.setAnalogOutput(side, value) end

---Get the redstone output signal strength for a specific side.
---@param side side The side to get.
---@return integer value The output signal strength, between 0 and 15.
function RedstoneRelayPeripheral.getAnalogOutput(side) end

---Get the redstone input signal strength for a specific side.
---@param side side The side to get.
---@return integer value The input signal strength, between 0 and 15.
function RedstoneRelayPeripheral.getAnalogInput(side) end

---Set the bundled cable output for a specific side.
---@param side side The side to set.
---@param output integer The colour bitmask to set.
function RedstoneRelayPeripheral.setBundledOutput(side, output) end

---Get the bundled cable output for a specific side.
---@param side side The side to get.
---@return integer output The bundle cable's output.
function RedstoneRelayPeripheral.getBundledOutput(side) end

---Get the bundled cable input for a specific side.
---@param side side The side to get.
---@return integer input The bundle cable's input.
function RedstoneRelayPeripheral.getBundledInput(side) end

---Determine if a specific combination of colours are on for the given side.
---@param side side The side to test.
---@param mask integer The mask to test.
---@return boolean on If the colours are on.
function RedstoneRelayPeripheral.testBundledInput(side, mask) end