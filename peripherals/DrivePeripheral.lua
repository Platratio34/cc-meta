---@meta

---@class DrivePeripheral CC's disk drive peripheral
local DrivePeripheral = {}

---Returns whether a disk is currently inserted in the drive.
---@return boolean present Whether a disk is currently inserted in the drive.
function DrivePeripheral.isDiskPresent() end

---Returns the label of the disk in the drive if available.
---@return string|nil label The label of the disk, or `nil` if either no disk is inserted or the disk doesn't have a label.
function DrivePeripheral.getDiskLabel() end

---Sets or clears the label for a disk.
---
---If no label or `nil` is passed, the label will be cleared.
---
---If the inserted disk's label can't be changed (for example, a record), an error will be thrown.
---
---@param label string? The new label of the disk, or nil to clear.
function DrivePeripheral.setDiskLabel(label) end

---Returns whether a disk with data is inserted.
---@return boolean data Whether a disk with data is inserted.
function DrivePeripheral.hasData() end

---Returns the mount path for the inserted disk.
---@return string|nil path The mount path for the disk, or `nil` if no data disk is inserted.
function DrivePeripheral.getMountPath() end

---Returns whether a disk with audio is inserted.
---@return boolean audio Whether a disk with audio is inserted.
function DrivePeripheral.hasAudio() end

---Returns the title of the inserted audio disk.
---@return string|false|nil title The title of the audio, `false` if no disk is inserted, or `nil` if the disk has no audio.
function DrivePeripheral.getAudioTitle() end

---Plays the audio in the inserted disk, if available.
function DrivePeripheral.playAudio() end

---Stops any audio that may be playing.
function DrivePeripheral.stopAuido() end

---Ejects any disk that may be in the drive.
function DrivePeripheral.ejectDisk() end

---Returns the ID of the disk inserted in the drive.
---@return integer|nil id The ID of the disk in the drive, or `nil` if no disk with an ID is inserted.
function DrivePeripheral.getDiskId() end