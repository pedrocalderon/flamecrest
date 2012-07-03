
function combat (unit1, unit2)
  strike(unit1, unit2)
  if (unit2:isdead()) then
    return
  end
  strike(unit2, unit1)
  if (unit1:isdead()) then
    return
  end
  faster, slower = muchfaster(unit1, unit2)
  if (faster) then
    print("moreattack")
    strike(faster, slower)
  end
end

function muchfaster (unit1, unit2)
  if (unit1.spd -4 >= unit2.spd) then
    return unit1, unit2
  end
  if (unit2.spd -4 >= unit1.spd)  then
    return unit2, unit1
  end
  return false, false
end

function strike (unit1, unit2)
  hitbonus = 80
  hit = 2 * unit1.skl + unit1.lck + hitbonus
  evade = 2 * unit2.spd + unit2.lck
  hitchance = hit - evade
  damage = unit1.str - unit2.def
  rand1 = math.random(100)
  rand2 = math.random(100)
  if ((rand1 + rand2) / 2 <= hitchance) then --Double RNG as seen in the games!
    crit = unit1.skl / 2
    dodge = unit2.lck
    critchance = crit - dodge
    rand1 = math.random(100)
    if (rand1 <= critchance) then
      print("crits")
      damage = damage * 3
    end
    unit2:takedamage(damage)
  end
end