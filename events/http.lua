---@meta

---@class HTTPCheckEvent : Event
---@field [1] "http_check"
---@field [2] string The URL requested to be checked.
---@field [3] boolean Whether the check succeeded.
---@field [4] string|nil If the check failed, a reason explaining why the check failed.

---@class HTTPFailureEvent : Event
---@field [1] "http_failure"
---@field [2] string The URL of the site requested.
---@field [3] string An error describing the failure.
---@field [4] http.Response|nil A response handle if the connection succeeded, but the server's response indicated failure.

---@class HTTPSuccessEvent : Event
---@field [1] "http_success"
---@field [2] string The URL of the site requested.
---@field [3] http.Response The successful HTTP response.