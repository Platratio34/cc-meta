---@meta

---@class ComputerPeripheral CC's Computer block peripheral
local ComputerPeripheral = {}

---Turn the other computer on.
function ComputerPeripheral.turnOn() end

---Shutdown the other computer.
function ComputerPeripheral.shutdown() end

---Reboot or turn on the other computer.
function ComputerPeripheral.reboot() end

---Get the other computer's ID.
---@return integer id The computer's ID.
function ComputerPeripheral.getId() end

---Determine if the other computer is on.
---@return boolean on Determine if the other computer is on.
function ComputerPeripheral.isOn() end

---Get the other computer's label.
---@return string|nil The computer's label.
function ComputerPeripheral.getLable() end