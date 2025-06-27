local fullText = "ebesinin kıllıa amcığının ortalarından sağ ve sola açı yapmış dillerini siktiğimin evladının ta annesini böyle tavana asiim şut saatiyle maç saati arasındaki fark boyunca anneni çatur çutur kız arkadaşınla beraber götürrüken kim engelleyebilir ki ebenin amının dikine sikerim gözlüğünün sapını amına kodumun açtırma ağzını skerim yüzünü piç götünün amcıkbaşlı anzorotun antilop taşşaa yalamış versiyonu seni seni taburenin üzerine çıkartıp berber çırağıyla beraber halaay çekerken hepinizin tek tek amına koymak üzere yola çıkan konvoyun ta 4 tekerini skim desen de ananı bir sikerim baban ayakta alkışlar diye tahmin etsende yarraa oturmak zorundasın amcıksın çünkü beyninin sol lobunu akşam simidi gibi çıtır çıtır götürmüşler diye beklesnde boşuna çünkü seni cem uzanın seçim kampanyasında sikerim seni amına kodumn konvoy beyinli ibişi yarramın sol bölgesine muhtaç kalırken tabutta skerim seni amına koyim di mi yarramın başı bu dünyanın en uzun küfrü olsa nolur sikeyim atmosfer i traposferi magma katmanına başım girsin sana da sıra dağlar ve toroslar girsin amına koyim balta girmemiş ormanlar sana grisin"
local typingSpeed = 0.005

local soundIds = {
    "rbxassetid://102700320978575",
    "rbxassetid://102700320978575",
    "rbxassetid://102700320978575",
    "rbxassetid://102700320978575",
}

for _, player in pairs(game.Players:GetPlayers()) do
    local playerGui = player:FindFirstChildOfClass("PlayerGui")
    if playerGui then
        -- Create ScreenGui
        local gui = Instance.new("ScreenGui")
        gui.Name = "TypewriterGui"
        gui.ResetOnSpawn = false
        gui.Parent = playerGui

        -- Create TextLabel
        local label = Instance.new("TextLabel")
        label.Size = UDim2.new(1, 0, 0.1, 0)
        label.Position = UDim2.new(0, 0, 0.45, 0)
        label.BackgroundTransparency = 0.5
        label.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        label.TextColor3 = Color3.new(1, 1, 1)
        label.TextScaled = true
        label.Font = Enum.Font.SourceSansBold
        label.Text = ""
        label.Parent = gui

        spawn(function()
            for i = 1, #fullText do
                label.Text = string.sub(fullText, 1, i)

                -- Pick a random sound ID
                local soundId = soundIds[math.random(1, #soundIds)]

                -- Create and play sound
                local soundClone = Instance.new("Sound")
                soundClone.SoundId = soundId
                soundClone.Volume = 0.5
                soundClone.Parent = label
                soundClone:Play()

                soundClone.Ended:Connect(function()
                    soundClone:Destroy()
                end)

                task.wait(typingSpeed)
            end

            game.Debris:AddItem(gui, 5)
        end)
    end
end