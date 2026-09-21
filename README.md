-- Coloca isso DENTRO do LocalScript (dentro do Frame ou Gui)
local TweenService = game:GetService("TweenService")
local Botao = script.Parent:FindFirstChild("BotaoAbrir") -- seu botão
local Frame = script.Parent:FindFirstChild("Frame")       -- sua tela

-- Configuração do movimento
local configAbrir = {Size = UDim2.new(0, 300, 0, 400)}  -- tamanho aberto
local configFechar = {Size = UDim2.new(0, 0, 0, 0)}     -- tamanho fechado
local info = TweenInfo.new(0.3) -- velocidade: 0.3 segundos

local aberto = false

-- Botão funciona!
Botao.MouseButton1Click:Connect(function()
    if aberto then
        TweenService:Create(Frame, info, configFechar):Play()
        aberto = false
    else
        TweenService:Create(Frame, info, configAbrir):Play()
        aberto = true
    end
end)
