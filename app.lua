local ADDON_NAME = GetAddOnMetadata(..., 'Title')
local addon = LibStub('AceAddon-3.0'):GetAddon(ADDON_NAME)
local infos = addon:GetModule('Constants'):GetInfos()
local Actions = addon:GetModule('Actions')


function addon:OnInitialize()
end

function addon:OnEnable()
end
