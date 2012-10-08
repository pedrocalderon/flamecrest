
require "ui.layout"
require "battle.hexpos"
require "vec2"

local ui      = ui
local vec2    = vec2
local floor   = math.floor
local print   = print
local unpack  = unpack

module "battle" do

  layout = ui.layout:new {
    map     = nil,
    origin  = vec2:new {512,0},
    focus = hexpos:new{1,1},
    tileset = {}
  }

  function layout:load (graphics)
    self.tileset.plains = graphics.newImage "resources/images/hextile.png"
  end
  
  function layout:draw (graphics)
    graphics.push()
    graphics.translate(self.origin.x, self.origin.y)
    for i = 1,self.map.height do
      for j = 1,self.map.width do
        local tile  = self.map.tiles[i][j]
        if tile then
          local pos   = vec2:new{96*j-96*i, 32*j+32*i}
          local image = self.tileset[tile.type]
          if i == self.focus.i and j == self.focus.j then
            graphics.setColor(255,0,0,255)
          else
            graphics.setColor(255,255,255,255)
          end
          graphics.draw(image, pos.x, pos.y, 0, 1, 1, 64, 32)
        end
      end
    end
    graphics.pop()
    ui.layout.draw(self, graphics)
  end

  function layout:released (button, pos)
    if button == 'l' then
      local relpos = pos-self.origin
      local focus = hexpos:new {}
      relpos = relpos.x/192*vec2:new{1,-1} + relpos.y/64*vec2:new{1,1}
      focus.i = floor(relpos.y+0.5)
      focus.j = floor(relpos.x+0.5)
      local x,y = relpos.x-focus.j+0.5, relpos.y-focus.i+0.5
      if y > 2*x + 0.5 or y > x/2 + 0.75 then
        if x + y < 1 then
          focus.j = focus.j-1
        else
          focus.i = focus.i+1
        end
      elseif x > 2*y + 0.5 or x > y/2 + 0.75 then
        if x + y < 1 then
          focus.i = focus.i-1
        else
          focus.j = focus.j+1
        end
      end
      self.focus:set(focus:get())
    end
  end

  --local final_pos = origin + vec2:new{96*man_pos.x, 63*man_pos.y+32*man_pos.x}
  --love.graphics.draw(stickman, final_pos.x, final_pos.y, 0, 1, 1, 32, 84)
  
end