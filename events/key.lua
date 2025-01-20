---@meta

---@class CharEvent : Event
---@field [1] "char"
---@field [2] string The string representing the character that was pressed.

---@class KeyEvent : Event
---@field [1] "key"
---@field [2] integer The numerical key value of the key pressed.
---@field [3] boolean Whether the key event was generated while holding the key (`true`), rather than pressing it the first time (`false`).

---@class KeyUpEvent : Event
---@field [1] "key_up"
---@field [2] integer The numerical key value of the key pressed.