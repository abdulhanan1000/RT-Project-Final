classdef initialization
    methods(Static)
        
        function MaskInitialization(maskInitContext)
            MotorType = maskInitContext.MaskObject.getParameter('MotorType').Value;
            
            switch MotorType
                case 'Small Motor (100W, 24V, 3A, 4-pole, 3000 RPM)'
                    R = 2; L = 0.005; Kt = 0.05;
                    J = 0.001; P = 4; Imax = 3; RatedRPM = 3000;
                    
                case 'Medium Motor (500W, 48V, 10A, 6-pole, 2500 RPM)'
                    R = 0.8; L = 0.003; Kt = 0.12;
                    J = 0.005; P = 6; Imax = 10; RatedRPM = 2500;
                    
                case 'Large Motor (2kW, 96V, 20A, 8-pole, 2000 RPM)'
                    R = 0.2; L = 0.0015; Kt = 0.25;
                    J = 0.02; P = 8; Imax = 20; RatedRPM = 2000;
            end
            
            SpeedRef_RadS = RatedRPM * 2 * pi / 60;
            ElecToMech = 2 / P;
            
            % Update display parameters
            maskInitContext.MaskObject.getParameter('Display_R').Value = sprintf('%.2f', R);
            maskInitContext.MaskObject.getParameter('Display_L').Value = sprintf('%.4f', L);
            maskInitContext.MaskObject.getParameter('Display_Kt').Value = sprintf('%.3f', Kt);
            maskInitContext.MaskObject.getParameter('Display_Imax').Value = sprintf('%.1f', Imax);
            maskInitContext.MaskObject.getParameter('Display_Speed').Value = sprintf('%.0f', RatedRPM);
            
            % Export to workspace
            assignin('base', 'CurrentMotor_R', R);
            assignin('base', 'CurrentMotor_L', L);
            assignin('base', 'CurrentMotor_Kt', Kt);
            assignin('base', 'CurrentMotor_J', J);
            assignin('base', 'CurrentMotor_P', P);
            assignin('base', 'CurrentMotor_Imax', Imax);
            assignin('base', 'CurrentMotor_RatedRPM', RatedRPM);
            assignin('base', 'CurrentMotor_SpeedRef', SpeedRef_RadS);
            assignin('base', 'CurrentMotor_ElecToMech', ElecToMech);
            assignin('base', 'CurrentMotor_InitialSpeed', 0);
        end

        function MotorType(callbackContext)
            maskObj = Simulink.Mask.get(callbackContext.BlockHandle);
            MotorType = maskObj.getParameter('MotorType').Value;
            
            switch MotorType
                case 'Small Motor (100W, 24V, 3A, 4-pole, 3000 RPM)'
                    maskObj.getParameter('Display_R').Value = '2.50';
                    maskObj.getParameter('Display_L').Value = '0.0050';
                    maskObj.getParameter('Display_Kt').Value = '0.050';
                    maskObj.getParameter('Display_Imax').Value = '3.0';
                    maskObj.getParameter('Display_Speed').Value = '3000';
                    
                case 'Medium Motor (500W, 48V, 10A, 6-pole, 2500 RPM)'
                    maskObj.getParameter('Display_R').Value = '0.80';
                    maskObj.getParameter('Display_L').Value = '0.0030';
                    maskObj.getParameter('Display_Kt').Value = '0.120';
                    maskObj.getParameter('Display_Imax').Value = '10.0';
                    maskObj.getParameter('Display_Speed').Value = '2500';
                    
                case 'Large Motor (2kW, 96V, 20A, 8-pole, 2000 RPM)'
                    maskObj.getParameter('Display_R').Value = '0.20';
                    maskObj.getParameter('Display_L').Value = '0.0015';
                    maskObj.getParameter('Display_Kt').Value = '0.250';
                    maskObj.getParameter('Display_Imax').Value = '20.0';
                    maskObj.getParameter('Display_Speed').Value = '2000';
            end
        end
    end
end