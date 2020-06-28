--
-- NoSwitchInVehicle
--
-- @author  nilBrain
-- @date    22/01/20
-- @node    Remove the Tabbed Binding in Vehicles
-- Changelog:
--		
-- 	v0.1.0.0 (04.01.2020 04:45):
-- 		- initial fs19
--
-- 	v1.0.0.0 (22.01.2020 22:31):
-- 		- adaptations for the Modhub
--
-- 	v1.0.0.1 (11.05.2020 18:15):
-- 		- add "Universal Passenger" support

NoSwitchInVehicle = {
	info = {
        Author = "nilBrain",
        buildID = "22012020:2231.47.A",
        title = " NoSwitchInVehicle",
        notes = " Remove the Bindings to tabbed Vehicles",
        date = " 22.01.2020",
	}
};


NoSwitchInVehicle.removedEventNames = {
    "SWITCH_VEHICLE",
    "SWITCH_VEHICLE_BACK",
    "NEXT_PASSENGER_VEHICLE"
}

BaseMission.registerActionEvents = Utils.appendedFunction(BaseMission.registerActionEvents, function(self)
	for _, name in pairs(NoSwitchInVehicle.removedEventNames) do
		if InputAction[name] ~= nil then
			g_inputBinding:removeActionEventsByActionName(name);
		end;
	end;
end);