
require "unit"
require "combat"
require "weapon"
require "button"

module ("game", package.seeall) do

  unit1 = unit:new {
    name = "Juaum",
    maxhp = 20,
    str = 12,
    spd = 14,
    def = 6,
    lck = 0,
    weapon = weapon:new{
      weapontype = "lance"
    }
  }

  unit2 = unit:new {
    name = "Leeroy",
    maxhp = 20,
    skl = 20,
    lck = 20,
    weapon = weapon:new {
      hit = 40
    }
  }

  keyactions = {}

  function keyactions.a ()
    if unit1:isdead() or unit2:isdead() then return end
    combat(unit1, unit2)
  end
  
  function keyactions.s ()
    if unit1:isdead() or unit2:isdead() then return end
    combat(unit2, unit1)
  end
  
  function keyactions.x ()
    unit1:gainexp(30)
  end
  
  function keyactions.c ()
    unit2:gainexp(30)
  end

end
