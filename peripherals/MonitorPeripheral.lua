---@meta

---@class MonitorPeripheral : Redirect CC's monitor peripheral
local MonitorPeripheral = {}

---Set the scale of this monitor.
---A larger scale will result in the monitor having a lower resolution, but display text much larger.
---
---@param scale number The monitor's scale. This must be a multiple of 0.5 between 0.5 and 5.
function MonitorPeripheral.setTextScale(scale) end

---Get the monitor's current text scale.
---@return number scale The monitor's current scale.
function MonitorPeripheral.getTextScale() end