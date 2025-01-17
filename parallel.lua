---@meta

parallel = {} --- CC's "parallel" module

---Switches between execution of the functions, until any of them finishes.
---If any of the functions errors, the message is propagated upwards from the `parallel.waitForAny` call.
---@param ... function The functions this task will run
function parallel.waitForAny(...) end

---Switches between execution of the functions, until all of them are finished.
---If any of the functions errors, the message is propagated upwards from the `parallel.waitForAll` call.
---@param ... function The functions this task will run
function parallel.waitForAll(...) end