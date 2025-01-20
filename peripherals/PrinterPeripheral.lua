---@meta

---@class PrinterPeripheral CC's printer peripheral
local PrinterPeripheral = {}

---Writes text to the current page.
---@param text string The value to write to the page.
function PrinterPeripheral.write(text) end

---Returns the current position of the cursor on the page.
---@return integer x The X position of the cursor.
---@return integer y The Y position of the cursor.
function PrinterPeripheral.getCursorPos() end

---Sets the position of the cursor on the page.
---@param x integer The X coordinate to set the cursor at.
---@param y integer The Y coordinate to set the cursor at.
function PrinterPeripheral.setCursorPos(x, y) end

---Returns the size of the current page.
---@return integer width The width of the page.
---@return integer height The height of the page.
function PrinterPeripheral.getPageSize() end

---Starts printing a new page.
---@return boolean started Whether a new page could be started.
function PrinterPeripheral.newPage() end

---Finalizes printing of the current page and outputs it to the tray.
---@return boolean ended Whether the page could be successfully finished.
function PrinterPeripheral.endPage() end

---Sets the title of the current page.
---@param title string|nil The title to set for the page.
function PrinterPeripheral.setPageTitle(title) end

---Returns the amount of ink left in the printer.
---@return number level The amount of ink available to print with.
function PrinterPeripheral.getInkLevel() end

---Returns the amount of paper left in the printer.
---@return integer level The amount of paper available to print with.
function PrinterPeripheral.getPaperLevel() end