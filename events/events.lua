---@meta

---@class Event
---@field [1] string The event name.

---@class AlarmEvent : Event
---@field [1] "alarm"
---@field [2] integer The ID of the alarm that finished.

---@class ComputerCommandEvent : Event
---@field [1] "computer_command"
---@field [2] string The arguments passed to the command.

---@class ModemMessageEvent : Event
---@field [1] "modem_message"
---@field [2] string The side of the modem that received the message.
---@field [3] integer The channel that the message was sent on.
---@field [4] integer The reply channel set by the sender.
---@field [5] any The message as sent by the sender.
---@field [6] number|nil The distance between the sender and the receiver in blocks, or `nil` if the message was sent between dimensions.

