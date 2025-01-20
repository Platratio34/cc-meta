---@meta

---@class CommandPeripheral CC's Command block peripheral
local CommandPeripheral = {}

---Get the command this command block will run.
---@return string command The current command.
function CommandPeripheral.getCommand() end

---Set the command block's command.
---@param command string The new command.
function CommandPeripheral.setCommand(command) end

---Execute the command block once.
---@return boolean success If the command completed successfully.
---@return string|nil message A failure message.
function CommandPeripheral.runCommand() end