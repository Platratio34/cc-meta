---@meta

http = {} --- CC's HTTP module

---Make a HTTP GET request to the given url.
---@param url string The url to request
---@param headers? { string: string } Additional headers to send as part of this request.
---@param binary? boolean Whether the response handle should be opened in binary mode. Defaults to `false`
---@return http.Response|nil rsp The resulting http response, which can be read from. **OR** `nil` When the http request failed, such as in the event of a 404 error or connection timeout.
---@return string? message A message detailing why the request failed.
---@return http.Response? errorRsp The failing http response, if available.
function http.get(url, headers, binary) end

---Make a HTTP GET request to the given url.
---@param request table `{ url = string, headers? = { [string] = string }, binary? = boolean, method? = string, redirect? = boolean, timeout? = number }` Options for the request. See `http.request` for details on how these options behave.
---@return http.Response|nil rsp The resulting http response, which can be read from. **OR** `nil` When the http request failed, such as in the event of a 404 error or connection timeout.
---@return string? message A message detailing why the request failed.
---@return http.Response? errorRsp The failing http response, if available.
function http.get(request) end

---Make a HTTP POST request to the given url.
---@param url string The url to request
---@param body string The body of the POST request.
---@param headers? { string: string } Additional headers to send as part of this request.
---@param binary? boolean Whether the response handle should be opened in binary mode. Defaults to `false`
---@return http.Response|nil rsp The resulting http response, which can be read from. **OR** `nil` When the http request failed, such as in the event of a 404 error or connection timeout.
---@return string? message A message detailing why the request failed.
---@return http.Response? errorRsp The failing http response, if available.
function http.post(url, body, headers, binary) end

---Make a HTTP POST request to the given url.
---@param request table `{ url = string, body? = string, headers? = { [string] = string }, binary? = boolean, method? = string, redirect? = boolean, timeout? = number }` Options for the request. See `http.request` for details on how these options behave.
---@return http.Response|nil rsp The resulting http response, which can be read from. **OR** `nil` When the http request failed, such as in the event of a 404 error or connection timeout.
---@return string? message A message detailing why the request failed.
---@return http.Response? errorRsp The failing http response, if available.
function http.post(request) end

---Asynchronously make a HTTP request to the given url.
---
---This returns immediately, a `http_success` or `http_failure` will be queued once the request has completed.
---
---@param url string The url to request
---@param body? string An optional string containing the body of the request. If specified, a `POST` request will be made instead.
---@param headers? { string: string } Additional headers to send as part of this request.
---@param binary? boolean Whether the response handle should be opened in binary mode. Defaults to `false`
function http.request(url, body, headers, binary) end

---Asynchronously make a HTTP request to the given url.
---
---This returns immediately, a http_success or http_failure will be queued once the request has completed.
---
---#### Options for the request.
---
---This table form is an expanded version of the previous syntax.
---All arguments from above are passed in as fields instead (for instance, `http.request("https://example.com")` becomes `http.request { url = "https://example.com" }`).
---This table also accepts several additional options:
---
--- - `method`: Which HTTP method to use, for instance `"PATCH"` or `"DELETE"`.
--- - `redirect`: Whether to follow HTTP redirects. Defaults to `true`.
--- - `timeout`: The connection timeout, in seconds.
---
---@param request table `{ url = string, body? = string, headers? = { [string] = string }, binary? = boolean, method? = string, redirect? = boolean, timeout? = number }` Options for the request.
function http.request(request) end

---Asynchronously determine whether a URL can be requested.
---
---If this returns `true`, one should also listen for `http_check` which will container further information about whether the URL is allowed or not.
---
---@param url string The URL to check.
---@return boolean valid If the URL was valid (not necessarily allowed)
---@return string? message A reason why this URL is not valid (for instance, if it is malformed, or blocked).
function http.checkURLAsync(url) end

---Determine whether a URL can be requested.
---
---If this returns `true`, one should also listen for `http_check` which will container further information about whether the URL is allowed or not.
---@param url string The URL to check.
---@return boolean valid If this URL is valid and can be requested via `http.request`.
---@return string? message A reason why this URL is not valid (for instance, if it is malformed, or blocked).
function http.checkURL(url) end

---Asynchronously open a websocket.
---
---This returns immediately, a `websocket_success` or `websocket_failure` will be queued once the request has completed.
---@param url string The websocket url to connect to. This should have the ws:// or wss:// protocol.
---@param headers? { string: string } Additional headers to send as part of the initial websocket connection.
function http.websocketAsync(url, headers) end

---Asynchronously open a websocket.
---
---This returns immediately, a `websocket_success` or `websocket_failure` will be queued once the request has completed.
---@param request table `{ url = string, headers? = { [string] = string }, timeout? = number }` Options for the websocket. See `http.websocket` for details on how these options behave.
function http.websocketAsync(request) end

---Open a websocket.
---
---This returns immediately, a `websocket_success` or `websocket_failure` will be queued once the request has completed.
---@param url string The websocket url to connect to. This should have the ws:// or wss:// protocol.
---@param headers? { string: string } Additional headers to send as part of the initial websocket connection.
---@return http.Websocket|`false` websocket The websocket connection. **OR** `false` If the websocket connection failed.
---@return string? error An error message describing why the connection failed.
function http.websocket(url, headers) end

---Open a websocket.
---
---This returns immediately, a `websocket_success` or `websocket_failure` will be queued once the request has completed.
---@param request table `{ url = string, headers? = { [string] = string }, timeout? = number }` Options for the websocket. See `http.websocket` for details on how these options behave.
---@return http.Websocket|`false` websocket The websocket connection. **OR** `false` If the websocket connection failed.
---@return string? error An error message describing why the connection failed.
function http.websocket(request) end

-- +++++++++++
--   CLASSES
-- +++++++++++

---@class http.Response : fs.ReadHandle
local Response = {}

---Returns the response code and response message returned by the server.
---@return integer code The response code (i.e. 200)
---@return string message The response message (i.e. "OK")
function Response.getResponseCode() end

---Get a table containing the response's headers, in a format similar to that required by `http.request`.
---If multiple headers are sent with the same name, they will be combined with a comma.
---
---@return { string: string } headers The response's headers.
function Response.getResponseHeaders() end

---@class http.Websocket
local Websocket = {}

---Wait for a message from the server.
---@param timeout? number The number of seconds to wait if no message is received.
---@return string|nil message The received message. **OR** `nil` If the websocket was closed while waiting, or if we timed out.
---@return boolean? binary If this was a binary message.
function Websocket.recive(timeout) end

---Send a websocket message to the connected server.
---@param message string The message to send.
---@param binary? boolean Whether this message should be treated as a binary message. Defaults to false
function Websocket.send(message, binary) end

---Close this websocket.
---This will terminate the connection, meaning messages can no longer be sent or received along it.
function Websocket.close() end