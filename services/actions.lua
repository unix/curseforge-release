local ADDON_NAME = GetAddOnMetadata(..., 'Title')
local addon = LibStub('AceAddon-3.0'):GetAddon(ADDON_NAME)
local Actions = addon:NewModule('Actions')


function Actions:OnInitialize()
    self:initSlash()
    self:toggleErrors()
    SetSortBagsRightToLeft(false)
    SetInsertItemsLeftToRight(false)
end

function Actions:toggleErrors(t)
    if t then UIErrorsFrame:Show() return end
    UIErrorsFrame:Hide()
end


function Actions:initSlash()
    SLASH_ACTIONS1 = "/actions"
    local slash = {
        ['show_error'] = function(s)
            s:toggleErrors(true)
        end,
        ['hide_error'] = function(s)
            s:toggleErrors(false)
        end,
    }
    SlashCmdList['ACTIONS'] = function(param)
        param = string.lower(param)
        if slash[param] then
            return slash[param](self)
        end

        self:log('TIPS:')
        self:log('show / show_raid -- 切换错误显示')
        self:log('show / hide_error -- 切换错误显示')
    end
end

function Actions:log(text)
    local prefix = format("|CFF00FFFF%s: |r", ADDON_NAME)
    SendSystemMessage(prefix..text)
end

