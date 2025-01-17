---@meta

colors = { --- CC's color module
    white = 0x1, ---@type color
    orange = 0x2, ---@type color
    magenta = 0x4, ---@type color
    lightBlue = 0x8, ---@type color
    yellow = 0x10, ---@type color
    lime = 0x20, ---@type color
    pink = 0x40, ---@type color
    gray = 0x80, ---@type color
    lightGray = 0x100, ---@type color
    cyan = 0x200, ---@type color
    purple = 0x400, ---@type color
    blue = 0x800, ---@type color
    brown = 0x1000, ---@type color
    green = 0x2000, ---@type color
    red = 0x4000, ---@type color
    black = 0x000 ---@type color
}

---Combines a set of colors (or sets of colors) into a larger set.
---Useful for Bundled Cables.
---
---@param ... color The colors to combine.
---@return integer color The union of the color sets given in `...`
function colors.combine(...) return 0 end

---Removes one or more colors (or sets of colors) from an initial set.
---Useful for Bundled Cables.
---
---Each parameter beyond the first may be a single color or may be a set of colors (in the latter case, all colors in the set are removed from the original set).
---@param colors integer The color from which to subtract.
---@param ... color The colors to subtract.
---@return integer color The resulting color.
function colors.subtract(colors, ...) return 0 end

---Tests whether `color` is contained within `colors`.
---Useful for Bundled Cables.
---
---@param colors integer A color, or color set
---@param color integer A color or set of colors that `colors` should contain.
---@return boolean inSet If `colors` contains all colors within `color`.
function colors.test(colors, color) return false end

---Combine a three-color RGB value into one hexadecimal representation.
---@param r number The red channel, should be between 0 and 1
---@param g number The green channel, should be between 0 and 1
---@param b number The blue channel, should be between 0 and 1
---@return integer The combined hexadecimal color.
function colors.packRGB(r, g, b) return 0 end

---Separate a hexadecimal RGB color into its three constituent channels.
---@param color integer The combined hexadecimal color.
---@return integer r The red channel, will be between 0 and 1.
---@return integer g The green channel, will be between 0 and 1.
---@return integer b The blue channel, will be between 0 and 1.
function colors.unpackRGB(color) return 0, 0, 0 end

---Converts the given color to a paint/blit hex character (0-9a-f).
---
---This is equivalent to converting floor(log_2(color)) to hexadecimal.
---Values outside the range of a valid color will error.
---
---@param color color The color to convert.
---@return string hex The blit hex code of the color.
function colors.toBlit(color) return '0' end

---Converts the given paint/blit hex character (0-9a-f) to a color.
---
---This is equivalent to converting the hex character to a number and then 2 ^ decimal
---
---@param hex string The paint/blit hex character to convert
---@return color color The color
function colors.fromBlit(hex) return 0 end

---@diagnostic disable-next-line: duplicate-doc-alias
---@alias color integer