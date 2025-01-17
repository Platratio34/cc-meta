---@meta

paintutils = {} --- CC's Terminal paint utility module

---Parses an image from a multi-line string
---@param image string The string containing the raw-image data.
---@return Image image The parsed image data, suitable for use with `paintutils.drawImage`.
function paintutils.parseImage(image) return {} end

---Loads an image from a file.
---
---You can create a file suitable for being loaded using the `paint` program.
---
---@param path string The file to load.
---@return Image image The parsed image data, suitable for use with `paintutils.drawImage`.
function paintutils.loadImage(path) return {} end

---Draws a single pixel to the current term at the specified position.
---
---Be warned, this may change the position of the cursor and the current background color.
---You should not expect either to be preserved.
---
---@param xPos number The x position to draw at, where 1 is the far left.
---@param yPos number The y position to draw at, where 1 is the very top.
---@param color? color The color of this pixel. This will be the current background color if not specified.
function paintutils.drawPixel(xPos, yPos, color) end

---Draws a straight line from the start to end position.
---
---Be warned, this may change the position of the cursor and the current background color.
---You should not expect either to be preserved.
---
---@param startX number The starting x position of the line.
---@param startY number The starting y position of the line.
---@param endX number The end x position of the line.
---@param endY number The end y position of the line.
---@param color? color The color of the line. This will be the current background color if not specified.
function paintutils.drawLine(startX, startY, endX, endY, color) end

---Draws the outline of a box on the current term from the specified start position to the specified end position.
---
---Be warned, this may change the position of the cursor and the current background color.
---You should not expect either to be preserved.
---
---@param startX number The starting x position of the box.
---@param startY number The starting y position of the box.
---@param endX number The end x position of the box.
---@param endY number The end x position of the box.
---@param color? color The color of the box. This will be the current background color if not specified.
function paintutils.drawBox(startX, startY, endX, endY, color) end

---Draws a filled box on the current term from the specified start position to the specified end position.
---
---Be warned, this may change the position of the cursor and the current background color.
---You should not expect either to be preserved.
---
---@param startX number The starting x position of the box.
---@param startY number The starting y position of the box.
---@param endX number The end x position of the box.
---@param endY number The end x position of the box.
---@param color? color The color of the box. This will be the current background color if not specified.
function paintutils.drawFilledBox(startX, startY, endX, endY, color) end

---Draw an image loaded by `paintutils.parseImage` or `paintutils.loadImage`.
---@param image Image The parsed image data.
---@param xPos number The x position to start drawing at.
---@param yPos number The y position to start drawing at.
function paintutils.drawImage(image, xPos, yPos) end

---@class Image