---@meta

window = {}

---Returns a terminal object that is a space within the specified parent terminal object.
---This can then be used (or even redirected to) in the same manner as eg a wrapped monitor.
---Refer to the term API for a list of functions available to it.
---
---`term` itself may not be passed as the parent, though `term.native` is acceptable.
---Generally, `term.current` or a wrapped monitor will be most suitable, though windows may even have other windows assigned as their parents.
---@param parent Redirect The parent terminal redirect to draw to.
---@param nX integer The x coordinate this window is drawn at in the parent terminal
---@param nY integer The y coordinate this window is drawn at in the parent terminal
---@param nWidth integer The width of this window
---@param nHeight integer The height of this window
---@param bStartVisible? boolean Whether this window is visible by default. Defaults to `true`.
---@return Window window The constructed window
function window.create(parent, nX, nY, nWidth, nHeight, bStartVisible) end

---@class Window : Redirect
local Window = {}

---Get the buffered contents of a line in this window.
---@param y integer The y position of the line to get.
---@return string text The textual content of this line.
---@return string textColor The text colors of this line, suitable for use with `term.blit`.
---@return string backgroundColor The background colors of this line, suitable for use with `term.blit`.
function Window.getLine(y) end

---Set whether this window is visible.
---Invisible windows will not be drawn to the screen until they are made visible again.
---
---Making an invisible window visible will immediately draw it.
---
---@param visible boolean Whether this window is visible.
function Window.setVisible(visible) end

---Get whether this window is visible.
---Invisible windows will not be drawn to the screen until they are made visible again.
---
---@return boolean visible Whether this window is visible.
function Window.isVisible() end

---Draw this window. This does nothing if the window is not visible.
function Window.redraw() end

---Set the current terminal's cursor to where this window's cursor is.
---This does nothing if the window is not visible.
function Window.restoreCursor() end

---Get the position of the top left corner of this window.
---@return number x The x position of this window
---@return number y The y position of this window
function Window.getPosition() end

---Reposition or resize the given window.
---
---This function also accepts arguments to change the size of this window.
---It is recommended that you fire a `term_resize` event after changing a window's, to allow programs to adjust their sizing.
---
---@param new_x integer The new x position of this window.
---@param new_y integer The new y position of this window.
---@param new_width? integer The new width of this window.
---@param new_height? integer The new height of this window.
---@param new_parent? Redirect The new redirect object this window should draw to.
function Window.reposition(new_x, new_y, new_width, new_height, new_parent) end