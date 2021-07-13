defmodule SpaceTravel do

	def count_flight_fuel_volume(ship_mass, route_list) do
		handle_route_element(ship_mass, Enum.reverse(route_list)) - ship_mass
	end

	# Private

	defp handle_route_element(overall_mass, []), do: overall_mass 
	
	defp handle_route_element(overall_mass, [{action, gravity} | other_route]) do

		fuel_mass = FuelCalculation.calculate_fuel_mass(action, overall_mass, gravity)
		handle_route_element(fuel_mass + overall_mass, other_route)
	end

end
