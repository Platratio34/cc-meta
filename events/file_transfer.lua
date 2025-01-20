---@meta

---@class FileTransferEvent : Event
---@field [1] "file_transfer"
---@field [2] FileTransferEvent.TransferdFiles The list of transferred files.

---@class FileTransferEvent.TransferdFiles Collection of transferd files
local TransferdFiles = {}

---All the files that are being transferred to this computer.
---@return FileTransferEvent.TransferredFile[] files The list of files.
function TransferdFiles.getFiles() end

---@class FileTransferEvent.TransferredFile : fs.ReadHandle A binary file handle for the transferd file
local TransferredFile = {}

---Get the name of this file being transferred.
function TransferredFile.getName() end