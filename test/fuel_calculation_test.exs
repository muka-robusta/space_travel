defmodule FuelCalculationTest do
	use ExUnit.Case
	doctest FuelCalculation

	test "landing Apollo 11 on Earth" do
		assert FuelCalculation.calculate_fuel_mass(:land, 28801, 9.807) == 13447
	end
end