# CC Ore Processor

Ein automatisiertes Lua-Programm für [ComputerCraft](https://www.curseforge.com/minecraft/mc-mods/computercraft) + [Refined Storage](https://www.curseforge.com/minecraft/mc-mods/refined-storage), das automatisch alle gängigen Overworld-Erze verarbeitet (mit Thermal Expansion Pulverizer + Electric Furnace).

## 🔧 Voraussetzungen

- ComputerCraft-Computer
- RS Bridge direkt angeschlossen (z. B. oben)
- Unter dem Computer: RS Crafter oder Interface, verbunden mit dem Pulverizer
- Maschinen sind über Importer mit dem RS-System rückgekoppelt

## ⚙️ Funktionsweise

- Durchsucht dauerhaft das RS-System nach Eisen-, Gold- und Kupfererz
- Sobald ≥16 Stück eines Erzes vorhanden sind, werden diese automatisch zur Weiterverarbeitung übergeben
- Pulverizer → Furnace → fertiges Metall → zurück ins System
- Vollautomatisch ohne Benutzereingriff

## 📜 Installation

1. Kopiere `auto_ore_processor.lua` auf deinen ComputerCraft-Computer
2. Erstelle eine `startup.lua`, um es beim Boot automatisch zu starten
3. Genieße die automatische Erzverarbeitung 🚀

## 🧱 Erweiterung

Du kannst in der `oresToProcess`-Tabelle beliebig weitere Erze ergänzen, z. B.:

```lua
"minecraft:deepslate_iron_ore",
"create:zinc_ore",
"immersiveengineering:aluminum_ore"
```

## 👤 Autor

Bernhard Danner – Automatisierungsfan 😊
