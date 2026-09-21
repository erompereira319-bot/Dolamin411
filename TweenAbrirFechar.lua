-- Tween — Abrir e Fechar Frame
-- Coloca dentro do LocalScript na Gui

local TweenService = game:GetService("TweenService")
local Botao = script.Parent:FindFirstChild("BotaoAbrir")
local Frame = script.Parent:FindFirstChild("Frame")

local abrir = {Size = UDim2.new(0, 300, 0, 400)}
local fechar = {Size = UDim2.new(0, 0, 0, 0)}
local rapidez = TweenInfo.new(0.3)

local aberto = false

Botao.MouseButton1Click:Connect(function()
    if aberto then
        TweenService:Create(Frame, rapidez, fechar):Play()
        aberto = false
    else
        TweenService:Create(Frame, rapidez, abrir):Play()
        aberto = true
    end
end)
