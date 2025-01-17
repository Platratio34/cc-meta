---@meta

io = {}

---Closes the provided file handle.
---@param file? io.Handle The file handle to close, defaults to the current output file.
function io.close(file) end

---Flushes the current output file.
function io.flush() end

---Get or set the current input file.
---@param file string|io.Handle The new input file, either as a file path or pre-existing handle.
---@return io.Handle file The current input file.
---@diagnostic disable-next-line: redundant-parameter
function io.input(file) end

---Opens the given file name in read mode and returns an iterator that, each time it is called, returns a new line from the file.
---
---This can be used in a for loop to iterate over all lines of a file
---
---Once the end of the file has been reached, nil will be returned.
---The file is automatically closed.
---
---If no file name is given, the current input will be used instead.
---In this case, the handle is not used.
---
---@param filename? string The name of the file to extract lines from
---@param ... any The argument to pass to `Handle:read` for each line.
---@return nil|fun():string lines The line iterator.
function io.lines(filename, ...) end

---Open a file with the given mode, either returning a new file handle or `nil`, plus an error message.
---
---The `mode` string can be any of the following:
---
--- - `"r"`: Read mode.
--- - `"w"`: Write mode.
--- - `"a"`: Append mode.
--- - `"r+"`: Update mode (allows reading and writing), all data is preserved.
--- - `"w+"`: Update mode, all data is erased.
---
---The mode may also have a `b` at the end, which opens the file in "binary mode".
---This has no impact on functionality.
---
---@param filename string The name of the file to open.
---@param mode? "a"|"a+"|"a+b"|"ab"|"r"|"r+"|"r+b"|"rb"|"w"|"w+"|"w+b"|"wb" The mode to open the file with. This defaults to `r`.
---@return io.Handle|nil file The opened file. **OR** `nil` In case of an error.
---@return string|nil error The reason the file could not be opened.
function io.open(filename, mode) end

---Get or set the current output file.
---@param file string|io.Handle The new output file, either as a file path or pre-existing handle.
---@return io.Handle file The current output file.
---@diagnostic disable-next-line: redundant-parameter
function io.output(file) end

---Read from the currently opened input file.
---
---This is equivalent to `io.input():read(...)`.
---See the documentation there for full details.
---
---@param ... string The formats to read, defaulting to a whole line.
---@return nil|string... data The data read, or `nil` if nothing can be read.
function io.read(...) end

---Checks whether `handle` is a given file handle, and determine if it is open or not.
---@param obj any The value to check
---@return "file"|"closed file"|nil `"file"` if this is an open file, `"closed file"` if it is a closed file handle, or `nil` if not a file handle.
function io.type(obj) end

---Write to the currently opened output file.
---
---This is equivalent to `io.output():write(...)`. See the documentation there for full details.
---
---@param ... string The strings to write
function io.write(...) end

---@class io.Handle
local Handle = {}

---Close this file handle, freeing any resources it uses.
---@return true|nil closed If this handle was successfully closed. **OR** If this file handle could not be closed.
---@return string|nil reason The reason it could not be closed.
function Handle.close() end

---Flush any buffered output, forcing it to be written to the file
function Handle.flush() end

---Returns an iterator that, each time it is called, returns a new line from the file.
---
---This can be used in a for loop to iterate over all lines of a file
---
---Once the end of the file has been reached, nil will be returned.
---The file is not automatically closed.
---
---@param ... any The argument to pass to `Handle:read` for each line.
---@return nil|fun():string lines The line iterator.
function Handle.lines(...) end

---Reads data from the file, using the specified formats.
---For each format provided, the function returns either the data read, or `nil` if no data could be read.
---
---The following formats are available:
---
--- - `l`: Returns the next line (without a newline on the end).
--- - `L`: Returns the next line (with a newline on the end).
--- - `a`: Returns the entire rest of the file.
---
---These formats can be preceded by a `*` to make it compatible with Lua 5.1.
---
---If no format is provided, `l` is assumed.
---
---@param ... any The formats to use.
---@return nil|string... data The data read from the file.
function Handle.read(...) end

---Seeks the file cursor to the specified position, and returns the new position.
---
---`whence` controls where the seek operation starts, and is a string that may be one of these three values:
---
--- - `set`: base position is 0 (beginning of the file)
--- - `cur`: base is current position
--- - `end`: base is end of file
---
---The default value of `whence` is `cur`, and the default value of `offset` is 0.
---This means that `file:seek()` without arguments returns the current position without moving.
---
---@param whence? string The place to set the cursor from.
---@param offset? number The offset from the start to move to
---@return number location The new location of the file cursor.
function Handle.seek(whence, offset) end

---Write one or more values to the file
---@param ... string|number The values to write.
---@return io.Handle|nil file The current file, allowing chained calls. **OR** `nil` If the file could not be written to.
---@return string|nil error The error message which occurred while writing.
function Handle.write(...) end