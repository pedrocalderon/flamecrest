
require "nova.table"
require "button"

module ("layout", package.seeall) do

  top = 96
  left = 32
  middle = 512 + 32

  buttons = nova.table:new {
    -- quit button
    button:new {
      pos = vec2:new { 928, 32 },
      size = vec2:new { 64, 32 },
      text = "QUIT",
      action = function () love.event.push "quit" end
    },
    -- reset all to initial state
    button:new {
      pos = vec2:new { 32, 32 },
      size = vec2:new { 128, 32 },
      text = "RESET ALL",
      action = function () end
    },
    --
  }

end

