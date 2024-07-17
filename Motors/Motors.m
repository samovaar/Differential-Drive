classdef Motors
    %MOTORS Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        % Motor Parameters
        GearRatio

        % Wheel Parameters
        WheelRadius_mm

        % Motor Driver Parameters
        STBY
        
        % Encoder Parameters
        CountsPerRev
        
        DIRECTION
    end

    properties (Dependent)
        PPR
    end

    methods
        function ppr = get.PPR(obj)
            ppr = obj.CountsPerRev * obj.GearRatio;
        end
    end
end

