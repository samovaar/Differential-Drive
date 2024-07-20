Motor = struct;
Motor.GearRatio = 15.25;

Wheel = struct;
Wheel.WheelRadius_mm = 14;


MotorDriver = struct;
MotorDriver.STBY_ON = 1;
MotorDriver.STBY_OFF = 0;
MotorDriver.AIN.FORWARD = [0 1];
MotorDriver.AIN.REVERSE = [1 0];
MotorDriver.BIN.FORWARD = [0 1];
MotorDriver.BIN.REVERSE = [1 0];


Encoder = struct;
Encoder.CountsPerRev = 12;
Encoder.RightChannelA = 26;
Encoder.RightChannelB = 25;
Encoder.LeftChannelA = 0;
Encoder.LeftChannelB = 0;
Encoder.DesiredPosition = 183;

