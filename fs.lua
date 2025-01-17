---@meta

fs = {} --- CC's filesystem module

---Provides completion for a file or directory name, suitable for use with `_G.read`.
---
---When a directory is a possible candidate for completion, two entries are included - one with a trailing slash (indicating that entries within this directory exist) and one without it (meaning this entry is an immediate completion candidate).
---`include_dirs` can be set to false to only include those with a trailing slash.
---
---@param path string The path to complete.
---@param location string The location where paths are resolved from.
---@param include_files? boolean When `false`, only directories will be included in the returned list. Defaults to `true`
---@param include_dirs? boolean When false, "raw" directories will not be included in the returned list. Defaults to `true`
---@return string[] candidates A list of possible completion candidates.
---@diagnostic disable-next-line: duplicate-set-field
function fs.complete(path, location, include_files, include_dirs) return {} end

---Provides completion for a file or directory name, suitable for use with `_G.read`.
---
---When a directory is a possible candidate for completion, two entries are included - one with a trailing slash (indicating that entries within this directory exist) and one without it (meaning this entry is an immediate completion candidate).
---`include_dirs` can be set to false to only include those with a trailing slash.
---
---@param path string The path to complete.
---@param location string The location where paths are resolved from.
---@param options table `{ include_dirs? = boolean, include_files? = boolean, include_hidden? = boolean }`
---
---@return string[] candidates A list of possible completion candidates.
---@diagnostic disable-next-line: duplicate-set-field
function fs.complete(path, location, options) return {} end

---Searches for files matching a string with wildcards.
---
---This string looks like a normal path string, but can include wildcards, which can match multiple paths:
---
--- - `"?"` matches any single character in a file name.
--- - `"*"` matches any number of characters.
---
---For example, `rom/*/command*` will look for any path starting with `command` inside any subdirectory of `/rom`.
---
---Note that these wildcards match a single segment of the path. For instance `rom/*.lua` will include `rom/startup.lua` but not include `rom/programs/list.lua.`
---
---@param path string The wildcard-qualified path to search for.
---@return string[] paths A list of paths that match the search string.
function fs.find(path) return {} end

---Returns `true` if a path is mounted to the parent filesystem.
---
---The root filesystem `"/"` is considered a mount, along with disk folders and the rom folder.
---
---@param path string The path to check.
---@return boolean mounted If the path is mounted, rather than a normal file/folder.
function fs.isDriveRoot(path) return false end

---Returns a list of files in a directory.
---@param path string The path to list.
---@return string[] list A table with a list of files in the directory.
function fs.list(path) return {} end

---Combines several parts of a path into one full path, adding separators as needed.
---@param path string The first part of the path. For example, a parent directory path.
---@param ... string Additional parts of the path to combine.
---@return string path The new path, with separators added between parts as needed.
function fs.combine(path, ...) return '' end

---Returns the file name portion of a path.
---@param path string The path to get the name from.
---@return string name The final part of the path (the file name).
function fs.getName(path) return '' end

---Returns the parent directory portion of a path.
---@param path string The path to get the directory from.
---@return string dir The path with the final part removed (the parent directory).
function fs.getDir(path) return '' end

---Returns the size of the specified file.
---@param path string The file to get the file size of.
---@return integer size The size of the file, in bytes.
function fs.getSize(path) return 0 end

---Returns whether the specified path exists.
---@param path string The path to check the existence of.
---@return boolean exists Whether the path exists.
function fs.exists(path) return false end

---Returns whether the specified path is a directory.
---@param path string The path to check.
---@return boolean isDir Whether the path is a directory.
function fs.isDir(path) return false end

---Returns whether a path is read-only.
---@param path string The path to check.
---@return boolean readOnly Whether the path cannot be written to.
function fs.isReadOnly(path) return false end

---Creates a directory, and any missing parents, at the specified path.
---@param path string The path to the directory to create.
function fs.makeDir(path) end

---Moves a file or directory from one path to another.
---
---Any parent directories are created as needed.
---
---@param path string The file or directory to move.
---@param dest string The path to the destination file or directory.
function fs.move(path, dest) end

---Copies a file or directory to a new path.
---
---Any parent directories are created as needed.
---
---@param path string The file or directory to copy.
---@param dest string The path to the destination file or directory.
function fs.copy(path, dest) end

---Deletes a file or directory.
---
---If the path points to a directory, all of the enclosed files and subdirectories are also deleted.
---
---@param path string The path to the file or directory to delete.
function fs.delete(path) end

---Opens a file for reading or writing at a path.
---
---The mode string can be any of the following:
---
--- - `"r"`: Read mode.
--- - `"w"`: Write mode.
--- - `"a"`: Append mode.
--- - `"r+"`: Update mode (allows reading and writing), all data is preserved.
--- - `"w+"`: Update mode, all data is erased.
---
---The mode may also have a `"b"` at the end, which opens the file in "binary mode".
---This changes `fs.ReadHandle.read and fs.WriteHandle.write to read/write single bytes as numbers rather than strings.
---
---@param path string The path to the file to open.
---@param mode "r"|"w"|"a"|"r+"|"w+"|"rb"|"wb"|"ab"|"r+b"|"w+b" The path to the file to open.
---@return fs.ReadWriteHandle|fs.ReadHandle|fs.WriteHandle|nil handle A file handle object for the file. **OR** `nil` if the file does not exist, or cannot be opened.
---@return string? error A message explaining why the file cannot be opened.
function fs.open(path, mode) return nil end

---Returns the name of the mount that the specified path is located on.
---@param path string The path to get the drive of.
---@return string? drive The name of the drive that the file is on; e.g. `hdd` for local files, or `rom` for ROM files.
function fs.getDrive(path) return '' end

---Returns the amount of free space available on the drive the path is located on
---@param path string The path to check the free space for.
---@return integer|"unlimited" space The amount of free space available, in bytes, or `"unlimited"`.
function fs.getFreeSpace(path) return 0 end

---Returns the capacity of the drive the path is located on.
---@param path string The path of the drive to get.
---@return integer? capacity This drive's capacity. This will be `nil` for "read-only" drives, such as the ROM or treasure disks.
function fs.getCapacity(path) return 0 end

---Get attributes about a specific file or folder.
---
---The returned attributes table contains information about the size of the file, whether it is a directory, when it was created and last modified, and whether it is read only.
---
---The creation and modification times are given as the number of milliseconds since the UNIX epoch.
---This may be given to os.date in order to convert it to more usable form.
---
---@param path string The path to get attributes for.
---@return table attributes `{ size = number, isDir = boolean, isReadOnly = boolean, created = number, modified = number }` The resulting attributes.
function fs.attributes(path) return {} end

-- +++++++++++
--   CLASSES
-- +++++++++++

---@class fs.ReadWriteHandle : fs.WriteHandle, fs.ReadHandle  CC FS file read and write handle
local ReadWriteHandle = {}

---@class fs.ReadHandle CC FS file read handle
local ReadHandle = {}

---Read a number of bytes from this file.
---@param count? number The number of bytes to read. This may be 0 to determine we are at the end of the file. When absent, a single byte will be read.
---@return nil|integer|string rt `nil` If we are at the end of the file. **OR** `number` The value of the byte read. This is returned if the file is opened in binary mode and count is absent. **OR** The bytes read as a string. This is returned when the `count` is given.
function ReadHandle.read(count) return nil end

---Read the remainder of the file.
---@return string file The remaining contents of the file, or nil in the event of an error.
function ReadHandle.readAll() end

---Read a line from the file.
---@param withTrailing? boolean Whether to include the newline characters with the returned string. Defaults to `false`.
---@return string? line The read line or `nil` if at the end of the file.
function ReadHandle.readLine(withTrailing) return nil end

---Seek to a new position within the file, changing where bytes are written to.
---The new position is an offset given by `offset`, relative to a start position determined by `whence`:
---
--- - `"set"`: offset is relative to the beginning of the file.
--- - `"cur"`: Relative to the current position. This is the default.
--- - `"end"`: Relative to the end of the file.
---
---In case of success, seek returns the new file position from the beginning of the file.
---
---@param whence? string Where the offset is relative to.
---@param offset? number The offset to seek to.
---@return number|nil position The new position **OR** `nil` on failure
---@return string? error The reason seeking failed.
function ReadHandle.seek(whence, offset) end

---Close this file, freeing any resources it uses.
---
---Once a file is closed it may no longer be read or written to.
function ReadWriteHandle.close() end


---@class fs.WriteHandle CC FS file write handle
local WriteHandle = {}

---Seek to a new position within the file, changing where bytes are written to.
---The new position is an offset given by `offset`, relative to a start position determined by `whence`:
---
--- - `"set"`: offset is relative to the beginning of the file.
--- - `"cur"`: Relative to the current position. This is the default.
--- - `"end"`: Relative to the end of the file.
---
---In case of success, seek returns the new file position from the beginning of the file.
---
---@param whence? string Where the offset is relative to.
---@param offset? number The offset to seek to.
---@return number|nil position The new position **OR** `nil` on failure
---@return string? error The reason seeking failed.
function WriteHandle.seek(whence, offset) end

---Write a string or byte to the file.
---@param contents string|number The string to write. **OR** The byte to write, if the file was opened in binary mode.
function WriteHandle.write(contents) end

---Write a string of characters to the file, following them with a new line character.
---@param text string The text to write to the file.
function WriteHandle.writeLine(text) end

---Save the current file without closing it.
function WriteHandle.flush() end

---Close this file, freeing any resources it uses.
---
---Once a file is closed it may no longer be read or written to.
function WriteHandle.close() end