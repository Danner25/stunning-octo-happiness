-- auto_ore_processor.lua
-- Automatisiert Erzverarbeitung mit Refined Storage + Thermal Expansion
-- by Bernhard Danner

local rs = peripheral.find("rsBridge")

if not rs then
  print("RS Bridge nicht gefunden!")
  return
end

-- Liste der Erze, die verarbeitet werden sollen
local oresToProcess = {
  "minecraft:iron_ore",
  "minecraft:gold_ore",
  "minecraft:copper_ore",
  "minecraft:redstone_ore",
  "minecraft:lapis_ore",
  "minecraft:nether_gold_ore",
  "minecraft:nether_quartz_ore",
  "thermal:tin_ore",
  "thermal:lead_ore",
  "thermal:silver_ore",
  "thermal:nickel_ore",
  "thermal:apatite_ore",
  "thermal:sulfur_ore",
  "thermal:cinnabar_ore",
  "ic2:ore_copper",
  "ic2:ore_tin",
  "ic2:ore_lead",
  "ic2:ore_uranium",
  "bigreactors:yellorite_ore",
  "buildcraft:silicon_ore",
  "buildcraft:oil_ore"
}

-- Wie viele Items pro Durchlauf?
local batchSize = 16

while true do
  for _, oreName in ipairs(oresToProcess) do
    local available = rs.getItem({ name = oreName })
    
    if available and available.amount >= batchSize then
      print("Verarbeite: " .. oreName)

      local success = rs.extractItem({
        name = oreName,
        count = batchSize,
        direction = "down" -- Crafter oder Interface unter dem Computer
      })

      if success then
        print("→ " .. batchSize .. "x " .. oreName .. " an Maschine gesendet.")
      else
        print("→ Fehler beim Senden von " .. oreName)
      end

      sleep(1.5)
    else
      print("Nicht genug " .. oreName .. " verfügbar.")
    end
  end

  -- Wartezeit zwischen Durchläufen
  sleep(10)
end
