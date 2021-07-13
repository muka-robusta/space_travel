defmodule SpaceTravelTest do
  use ExUnit.Case
  doctest SpaceTravel
  
  test "Apollo 11 flight" do
    assert SpaceTravel.count_flight_fuel_volume(28801, 
      [{:launch, 9.807}, {:land, 1.62}, {:launch, 1.62}, {:land, 9.807}]) == 51898
  end  

  test "Mission on Mars" do
    assert SpaceTravel.count_flight_fuel_volume(14606,
      [{:launch, 9.807}, {:land, 3.711}, {:launch, 3.711}, {:land, 9.807}]) == 33388
  end

  test "Passenger ship test" do
    assert SpaceTravel.count_flight_fuel_volume(75432,
      [
        {:launch, 9.807},
        {:land, 1.62},
        {:launch, 1.62},
        {:land, 3.711},
        {:launch, 3.711},
        {:land, 9.807}
      ]) == 212161
  end

end
