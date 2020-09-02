local ADDON_NAME = GetAddOnMetadata(..., 'Title')
local addon = LibStub('AceAddon-3.0'):NewAddon(ADDON_NAME)
local Init = addon:NewModule('Init')

function Init:getDefaultSettings()
    return {
        VERSION = 1,
    }
end

function Init:OnInitialize()
    self.DEFAULT_SETTINGS = self:getDefaultSettings()
end


