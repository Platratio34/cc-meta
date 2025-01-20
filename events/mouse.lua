---@meta

---@class MouseClickEvent : Event
---@field [1] "mouse_click"
---@field [2] integer The mouse button that was clicked.
---@field [3] integer The X-coordinate of the click.
---@field [4] integer The Y-coordinate of the click.

---@class MouseDragEvent : Event
---@field [1] "mouse_drag"
---@field [2] integer The mouse button that is being pressed.
---@field [3] integer The X-coordinate of the mouse.
---@field [4] integer The Y-coordinate of the mouse.

---@class MouseScrollEvent : Event
---@field [1] "mouse_scroll"
---@field [2] integer The direction of the scroll. (-1 = up, 1 = down)
---@field [3] integer The X-coordinate of the mouse when scrolling.
---@field [4] integer The Y-coordinate of the mouse when scrolling.

---@class MouseUpEvent : Event
---@field [1] "mouse_up"
---@field [2] integer The mouse button that was released.
---@field [3] integer The X-coordinate of the mouse.
---@field [4] integer The Y-coordinate of the mouse.