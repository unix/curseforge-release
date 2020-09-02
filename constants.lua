local ADDON_NAME = GetAddOnMetadata(..., 'Title')
local ADDON_VERSION = GetAddOnMetadata(..., 'Version')
local addon = LibStub('AceAddon-3.0'):GetAddon(ADDON_NAME)
local Constants = addon:NewModule('Constants')

local infos = {
    ADDON_BASE_NAME = ADDON_NAME,
    VERSION = ADDON_VERSION,
}

function Constants:GetInfos()
    return infos
end
