---@meta

pocket = {} --- CC's pocket computer module

---Search the player's inventory for another upgrade, replacing the existing one with that item if found.
---
---This inventory search starts from the player's currently selected slot, allowing you to prioritize upgrades.
---@return boolean equipped If an item was equipped.
---@return string|nil reason The reason an item was not equipped.
function pocket.equipBack() end

---Remove the pocket computer's current upgrade.
---@return boolean unequipped If the upgrade was unequipped.
---@return string|nil reason The reason an upgrade was not unequipped.
function pocket.unequipBack() end