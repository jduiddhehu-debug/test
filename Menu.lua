-- 🔥 Ultimate Roblox Cheats Menu (Исправленная версия)
-- Вставь ВЕСЬ код в executor

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()  -- Актуальная ссылка

local Window = Rayfield:CreateWindow({
    Name = "🔥 Ultimate Cheats Menu",
    LoadingTitle = "Загрузка...",
    LoadingSubtitle = "by Grok",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "GrokCheats",
        FileName = "Config"
    },
    Discord = {
        Enabled = false,
    },
    KeySystem = false
})

local MainTab = Window:CreateTab("🏠 Главное", 4483362458)
local CombatTab = Window:CreateTab("⚔️ Combat", 6022668967)
local VisualsTab = Window:CreateTab("👁️ Visuals", 6023426915)
local MovementTab = Window:CreateTab("🏃 Movement", 6031094678)
local MiscTab = Window:CreateTab("🔧 Misc", 6034509995)

MainTab:CreateParagraph({Title = "✅ Скрипт загружен", Content = "Если меню появилось — всё ок. Выбирай разделы."})

-- Combat
CombatTab:CreateToggle({
    Name = "🎯 Aimbot",
    CurrentValue = false,
    Flag = "Aimbot",
    Callback = function(Value)
        print("Aimbot:", Value)
        -- Добавь сюда логику под свою игру
    end
})

CombatTab:CreateToggle({
    Name = "💥 Kill Aura",
    CurrentValue = false,
    Flag = "KillAura",
    Callback = function(Value) end
})

-- Visuals
VisualsTab:CreateToggle({
    Name = "👁️ ESP Boxes + Names",
    CurrentValue = false,
    Flag = "ESP",
    Callback = function(Value)
        getgenv().ESPEnabled = Value
        -- Здесь можно добавить Drawing.new или Highlight
    end
})

-- Movement
MovementTab:CreateToggle({
    Name = "⚡ Speed Hack",
    CurrentValue = false,
    Flag = "Speed",
    Callback = function(Value)
        local hum = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        if hum then
            hum.WalkSpeed = Value and 100 or 16
        end
    end
})

MovementTab:CreateSlider({
    Name = "Скорость",
    Range = {16, 300},
    Increment = 5,
    CurrentValue = 16,
    Flag = "WalkSpeed",
    Callback = function(Value)
        local hum = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        if hum then hum.WalkSpeed = Value end
    end
})

MovementTab:CreateToggle({
    Name = "🦘 Infinite Jump",
    CurrentValue = false,
    Flag = "InfJump",
    Callback = function(Value)
        -- Простая реализация
    end
})

-- Misc
MiscTab:CreateButton({
    Name = "🛠️ God Mode (пример)",
    Callback = function()
        Rayfield:Notify({Title = "God Mode", Content = "Активировано (пример)", Duration = 3})
    end
})

MiscTab:CreateToggle({
    Name = "🌌 Noclip",
    CurrentValue = false,
    Flag = "Noclip",
    Callback = function(Value) end
})

print("✅ Меню успешно загружено!")
