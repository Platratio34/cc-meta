---@meta

gps = { --- CC's GPS module
    CHANNEL_GPS = 65534 ---The channel which GPS requests and responses are broadcast on.
}

---Tries to retrieve the computer or turtles own location.
---@param timeout? number The maximum time in seconds taken to establish our position. Defaults to `2`
---@param debug? boolean Print debugging messages.
function gps.locate(timeout, debug) end