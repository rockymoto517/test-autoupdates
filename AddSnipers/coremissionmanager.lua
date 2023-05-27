core:module("CoreMissionManager")
core:import("CoreTable")

local level = Global.level_data and Global.level_data.level_id or ""

if level == "run" then
    Hooks:PreHook(MissionManager, "_add_script", "_eclipse_add_script",
    function(self, data)
        for _,element in pairs(data.elements) do
            if element.id == 103582 then
                element.values.difficulty_easy_wish = true
                element.values.difficulty_overkill_290 = true
                element.values.difficulty_sm_wish = true
            end
        end
    end)
end