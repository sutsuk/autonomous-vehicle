Library IEEE;
Use IEEE.Std_Logic_1164.All;
Use IEEE.Std_Logic_Arith.All;
Use IEEE.Std_Logic_Unsigned.All;

Entity AutonomousVehicle is
  Port (
    sw : in  Std_Logic_Vector(3 Downto 0);
    led: out Std_Logic_Vector(3 Downto 0)
  );
End AutonomousVehicle;

Architecture Main of AutonomousVehicle is
Begin
  led <= sw;
End Main;
