gg.alert("Doflamingo Mod Loaded!")

function showMenu()
    menu = gg.choice({"🔴 Layla", "🔴 Miya", "🔴 Nana", "Exit"}, nil, "Doflamingo Mod - Select Hero")
    if menu == 1 then 
        modHero("Layla")
    elseif menu == 2 then 
        modHero("Miya")
    elseif menu == 3 then 
        modHero("Nana")
    elseif menu == 4 then 
        showCredits()
    end
end

function modHero(hero)
    local searchValues = {
        ["Layla"] = "240;133;2250",
        ["Miya"] = "240;115;2225",
        ["Nana"] = "250;115;2380"
    }
    
    local refineValues = {
        ["Layla"] = 133,
        ["Miya"] = 115,
        ["Nana"] = 115
    }
    
    local changeValue = {
        ["Layla"] = 200000,
        ["Miya"] = 200000,
        ["Nana"] = 200000
    }
    
    local secondSearch = {
        ["Layla"] = "240;200000;2250",
        ["Miya"] = "240;200000;2225",
        ["Nana"] = "250;200000;2380"
    }
    
    local refineSecond = {
        ["Layla"] = 240,
        ["Miya"] = 240,
        ["Nana"] = 250
    }
    
    local finalChange = {
        ["Layla"] = 2500,
        ["Miya"] = 2500,
        ["Nana"] = 2500
    }
    
    gg.clearResults()
    gg.searchNumber(searchValues[hero], gg.TYPE_DWORD)
    gg.refineNumber(refineValues[hero], gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll(changeValue[hero], gg.TYPE_DWORD)
    
    gg.clearResults()
    gg.searchNumber(secondSearch[hero], gg.TYPE_DWORD)
    gg.refineNumber(refineSecond[hero], gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll(finalChange[hero], gg.TYPE_DWORD)
    
    gg.toast(hero .. " Mod Activated!")
end

function showCredits()
    gg.alert("Terima kasih telah menggunakan Doflamingo Mod!")
    os.exit()
end

while true do
    if gg.isVisible(true) then
        gg.setVisible(false)
        showMenu()
    end
end
