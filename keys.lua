---@meta

keys = {} --- CC Keycode module

---Translates a numerical key code to a human-readable name.
---The human-readable name is one of the constants in the keys API.
---
---@param key integer The key code to look up.
---@return string? name The name of the key, or `nil` if not a valid key code.
function keys.getName(key) return '' end