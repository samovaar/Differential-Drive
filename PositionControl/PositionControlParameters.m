Motor = struct;
Motor.GearRatio = 15.25;
Motor.GearRatioTest = 51.45;
Motor.DesiredSpeed_rps = 1;
Motor.DesiredSpeed_rpm = 120;
Motor.DesiredPosition = 1*617;


Encoder = struct;
Encoder.CountsPerRev = 12;
Encoder.RightChannelA = 25;
Encoder.RightChannelB = 26;
Encoder.LeftChannelA = 18;
Encoder.LeftChannelB = 5;


MotorDriver = struct;
MotorDriver.STBY.Pin = 4;
MotorDriver.STBY.On = 1;
MotorDriver.STBY.Off = 0;
MotorDriver.PWM.PinA = 23; 
MotorDriver.AIN.Pin1 = 17;
MotorDriver.AIN.Pin2 = 22;
MotorDriver.AIN.Forward = [0 1];
MotorDriver.AIN.Reverse = [1 0];
MotorDriver.BIN.Forwared = [0 1];
MotorDriver.BIN.Reverse = [1 0];

Wheel = struct;
Wheel.WheelRadius_mm = 14;
Wheel.PointerRadius_cm = 2;



Controller.Parameters.P = 0.1;
Controller.Parameters.I = 0.08;
Controller.Parameters.D = 0.2;
Controller.Parameters.Filter = 0.1;


%% Notes
% For 15.25:1 Gear Ratio, One Wheel revolution is 182 encoder pulses
% For 51.45:1 Gear Ratio, One Wheel revolution is 617 encoder pulses
 