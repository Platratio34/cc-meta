---@meta

---@class MonitorResizeEvent : Event
---@field [1] "monitor_resize"
---@field [2] string The side or network ID of the monitor that was resized.

---@class MonitorTouchEvent : Event
---@field [1] "monitor_touch"
---@field [2] string The side or network ID of the monitor that was touched.
---@field [3] integer The X coordinate of the touch, in characters.
---@field [4] integer The Y coordinate of the touch, in characters.