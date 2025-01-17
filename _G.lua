---@meta

local _G = { --- CC's Global table
    _HOST = "ComputerCraft X.XX.X (Minecraft 1.X.X)", --- Stores the current ComputerCraft and Minecraft versions.
    _CC_DEFAULT_SETTINGS = {} --- The default computer settings as defined in the ComputerCraft configuration.
}

---Pauses execution for the specified number of seconds.
---
---As it waits for a fixed amount of world ticks, `time` will automatically be rounded up to the nearest multiple of 0.05 seconds.
---If you are using coroutines or the parallel API, it will only pause execution of the current thread, not the whole program.
---
---@param time number The number of seconds to sleep for, rounded up to the nearest multiple of 0.05.
function _G.sleep(time) end
sleep = _G.sleep

---Writes a line of text to the screen without a newline at the end, wrapping text if necessary.
---@param text string The text to write to the string
---@return integer lines The number of lines written
function _G.write(text) end
write = _G.write

---Prints the specified values to the screen separated by spaces, wrapping if necessary.
---After printing, the cursor is moved to the next line.
---
---@param ... any  The values to print on the screen
---@return integer lines The number of lines written
function _G.print(...) end
print = _G.print

---Prints the specified values to the screen in red, separated by spaces, wrapping if necessary.
---After printing, the cursor is moved to the next line.
---
---@param ... any The values to print on the screen
function _G.printError(...) end
printError = _G.printError

---Reads user input from the terminal.
---This automatically handles arrow keys, pasting, character replacement, history scrollback, auto-completion, and default values.
---
---@param replaceChar? string A character to replace each typed character with. This can be used for hiding passwords, for example.
---@param history? table A table holding history items that can be scrolled back to with the up/down arrow keys. The oldest item is at index 1, while the newest item is at the highest index.
---@param completeFn? fun(partial: string):string[] | nil A function to be used for completion. This function should take the partial text typed so far, and returns a list of possible completion options.
---@param default? string Default text which should already be entered into the prompt.
---@return string text The text typed in.
function _G.read(replaceChar, history, completeFn, default) end
read = _G.read