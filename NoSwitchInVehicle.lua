--
-- NoSwitchInVehicle
--
-- @author  nilBrain
-- @date    04/01/20
-- @node    Remove the Tabbed Binding in Vehicles

NoSwitchInVehicle = {
	info = {
        Author = "nilBrain",
        buildID = "04012020:0445.47.A",
        title = " NoSwitchInVehicle",
        notes = " Remove the Bindings to tabbed Vehicles",
        date = " 04.01.2020",
	}
};

print((" ++ %s V.%s (by %s)"):format(NoSwitchInVehicle.info.title, NoSwitchInVehicle.info.buildID, NoSwitchInVehicle.info.Author));

NoSwitchInVehicle.removedEventNames = {
    "SWITCH_VEHICLE",
    "SWITCH_VEHICLE_BACK"
}

BaseMission.registerActionEvents = Utils.appendedFunction(BaseMission.registerActionEvents, function(self)
	for _, name in pairs(NoSwitchInVehicle.removedEventNames) do
		if InputAction[name] ~= nil then
			g_inputBinding:removeActionEventsByActionName(name);
		end;
	end;
end);