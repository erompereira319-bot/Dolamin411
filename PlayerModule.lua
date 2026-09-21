local PlayerModule = {}

local Players = game:GetService("Players")

function PlayerModule.GetLocalPlayer()
    return Players.LocalPlayer
end

function PlayerModule.GetPlayerByName(name)
    return Players:FindFirstChild(name)
end

function PlayerModule.GetCharacter(player)
    return player and player.Character
end

function PlayerModule.GetHumanoid(player)
    local character = PlayerModule.GetCharacter(player)
    return character and character:FindFirstChild("Humanoid")
end

function PlayerModule.GetPosition(player)
    local character = PlayerModule.GetCharacter(player)
    if character then
        local root = character:FindFirstChild("HumanoidRootPart")
        return root and root.Position
    end
    return nil
end

function PlayerModule.Teleport(player, newPosition)
    local character = PlayerModule.GetCharacter(player)
    if character then
        local root = character:FindFirstChild("HumanoidRootPart")
        if root then
            root.CFrame = CFrame.new(newPosition)
        end
    end
end

function PlayerModule.Kill(player)
    local humanoid = PlayerModule.GetHumanoid(player)
    if humanoid then
        humanoid.Health = 0
    end
end

function PlayerModule.GiveMoney(player, amount)
    local leaderstats = player:FindFirstChild("leaderstats")
    if leaderstats then
        local money = leaderstats:FindFirstChild("Money")
        if money then
            money.Value += amount
        end
    end
end

return PlayerModule
