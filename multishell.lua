---@meta

multishell = {} --- CC's Multishell module

---Get the currently visible process. This will be the one selected on the tab bar.
---
---Note, this is different to `getCurrent`, which returns the process which is currently executing.
---
---@return number n The currently visible process's index.
function multishell.getFocus() end

---Change the currently visible process.
---@param n number The process index to switch to.
---@return boolean success If the process was changed successfully. This will return `false` if there is no process with this id.
function multishell.setFocus(n) end

---Get the title of the given tab.
---
---This starts as the name of the program, but may be changed using `multishell.setTitle`.
---
---@param n number The process index.
---@return string|nil title The current process title, or `nil` if the process doesn't exist.
function multishell.getTitle(n) end

---Set the title of the given process.
---@param n number The process index.
---@param title string The new process title.
function multishell.setTitle(n, title) end

---Get the index of the currently running process.
---@return number n The currently running process.
function multishell.getCurrent() end

---Start a new process, with the given environment, program and arguments.
---
---The returned process index is not constant over the program's run.
---It can be safely used immediately after launching (for instance, to update the title or switch to that tab).
---However, after your program has yielded, it may no longer be correct.
---
---@param tProgramEnv table The environment to load the path under.
---@param sProgramPath string The path to the program to run.
---@param ... any  Additional arguments to pass to the program.
---@return number n The index of the created process.
function multishell.launch(tProgramEnv, sProgramPath, ...) end

---Get the number of processes within this multishell.
---@return number count The number of processes.
function multishell.getCount() end