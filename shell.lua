---@meta
shell = {}

function shell.execute(command, ...) end
function shell.run(...) end
function shell.exit() end
function shell.dir() end
function shell.setDir(dir) end
function shell.path() end
function shell.setPath(path) end
function shell.resolve(path) end
function shell.resolveProgram(path) end
function shell.programs(include_hidden) end
function shell.complete(sLine) end
function shell.completeProgram(program) end
function shell.setCompletionFunction(program, complete) end
function shell.getCompletionInfo() end
function shell.getRunningProgram() end
function shell.setAlias(command, alias) end
function shell.clearAlias(command) end
function shell.aliases() end
function shell.openTab(...) end
function shell.switchTab(id) end