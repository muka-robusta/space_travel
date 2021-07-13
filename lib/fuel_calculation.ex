defmodule FuelCalculation do

	def calculate_fuel_mass(_action, 0, _gravity), do: 0

	def calculate_fuel_mass(action, mass, gravity) 
	when is_atom(action) do
		fuel_weight = 
			case action do
				:launch -> mass * gravity * 0.042 - 33
				:land   -> mass * gravity * 0.033 - 42
			end
			|> positive_floor

		fuel_weight + calculate_fuel_mass(action, fuel_weight, gravity)
	end

	# Private

	defp positive_floor(number) do
		cond do
			number > 0 	-> Float.floor(number, 0)
			true  			-> 0 
		end
	end
end