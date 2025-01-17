---@meta

commands = {} --- CC's MC Command module

---Execute a specific command.
---@param command string The command to execute.
---@return boolean success Whether the command executed successfully.
---@return string[] lines The output of this command, as a list of lines.
---@return number|nil effected The number of "affected" objects, or `nil` if the command failed. The definition of this varies from command to command.
function commands.exec(command) end

---Asynchronously execute a command.
---
---Unlike `exec`, this will immediately return, instead of waiting for the command to execute.
---This allows you to run multiple commands at the same time.
---
---When this command has finished executing, it will queue a `task_complete` event containing the result of executing this command (what `exec` would return).
---
---@param command string The command to execute.
---@return number id The "task id". When this command has been executed, it will queue a `task_complete` event with a matching id.
function commands.execAsync(command) end

---List all available commands which the computer has permission to execute.
---@param ... string The sub-command to complete.
---@return string[] commands A list of all available commands
function commands.list(...) end

---Get the position of the current command computer.
---@return integer x This computer's x position.
---@return integer y This computer's y position.
---@return integer z This computer's z position.
function commands.getBlockPosition() end

---Get information about a range of blocks.
---
---This returns the same information as `getBlockInfo`, just for multiple blocks at once.
---
---Blocks are traversed by ascending y level, followed by z and x - the returned table may be indexed using `x + z*width + y*width*depth + 1`.
---
---@param minX integer The start x coordinate of the range to query.
---@param minY integer The start y coordinate of the range to query.
---@param minZ integer The start z coordinate of the range to query.
---@param maxX integer The end x coordinate of the range to query.
---@param maxY integer The end y coordinate of the range to query.
---@param maxZ integer The end z coordinate of the range to query.
---@param dimension? string The dimension to query (e.g. `"minecraft:overworld"`). Defaults to the current dimension.
---@return table[] blocks A list of information about each block.
function commands.getBlockInfos(minX, minY, minZ, maxX, maxY, maxZ, dimension) end

---Get some basic information about a block.
---
---The returned table contains the current name, metadata and block state (as with `turtle.inspect`).
---If there is a block entity for that block, its NBT will also be returned.
---
---@param x integer The x position of the block to query.
---@param y integer The y position of the block to query.
---@param z integer The z position of the block to query.
---@param dimension? string The dimension to query (e.g. `"minecraft:overworld"`). Defaults to the current dimension.
---@return table block The given block's information.
function commands.getBlockInfo(x, y, z, dimension) end

commands.native = {}

commands.async = {}