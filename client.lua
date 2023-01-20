--//-----------------------------------------\\
--|| [SCAR] Anti Vehicle Aircontrol
--|| meuntouchable#5555 (655378313514057759)
--\\-----------------------------------------//

CreateThread(function()
	while true do
	
		Wait(0);
		
		local PlayerVehicle=GetVehiclePedIsIn(PlayerPedId(),false)
		if(DoesEntityExist(PlayerVehicle)and not IsEntityDead(PlayerVehicle))then
			local PlayerVehicleModel=GetEntityModel(PlayerVehicle);
			if(not IsThisModelABoat(PlayerVehicleModel)and not IsThisModelAHeli(PlayerVehicleModel)and not IsThisModelAPlane(PlayerVehicleModel)and IsEntityInAir(PlayerVehicle))then
				if(ScarAntiVehicleAirControl.Settings.UpDown)then
					DisableControlAction(0,60)--leaning up/down
				end
				if(ScarAntiVehicleAirControl.Settings.LeftRight)then
					DisableControlAction(0,59)--leaning left/right
				end
				if(ScarAntiVehicleAirControl.Settings.ForwardBackward)then
					DisableControlAction(0,77)--leaning forward/backward
				end
			end
		end
	end
end)
