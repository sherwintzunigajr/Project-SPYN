
javaclasspath('C:\Program Files\MATLAB\R2020b\toolbox\EV3');
brick = Brick('ioType','wifi','wfAddr','127.0.0.1','wfPort',5555,'wfSN','0016533dbaf5');

global key
InitKeyboard();

brick.SetColorMode (3, 2);
distance = brick.UltrasonicDist(4);
    color = brick.ColorCode (3);
    display(color);
    display(distance);


brick.MoveMotor('AB', -1000);
                pause(6);
                brick.StopMotor('AB');
brick.MoveMotor('B', 1000);
                pause(2.2);
                brick.StopMotor('B');
brick.MoveMotor ('AB', 1000);
                pause(5);
                brick.StopMotor('AB');
brick.MoveMotor('A', 1000);
                pause(2.2);
                brick.StopMotor('A');
brick.MoveMotor('AB', 1000);
                pause(2);
brick.StopAllMotors;
                pause(3);
brick.MoveMotor('AB', 1000);
                pause(8.2);
                brick.StopMotor('AB');

while 1
    color = brick.ColorCode (3);
    display(color);
    pause(0.1);
    switch key
        
        case 'b'
            break;
        case 's'
            brick.StopAllMotors();
            
        case 'u'
            brick.MoveMotorAngleAbs ('C', 80, 60, 'brake');
            pause(0.1);
        case 'd'
            brick.StopMotor ('C');
            brick.MoveMotorAngleAbs ('C', -70, 0, 'brake');
            pause(0.1);
  
        case 'uparrow'
            brick.MoveMotor('AB', 1000);
            pause(0.4);
            brick.StopMotor('AB');
            disp('Up Arrow Pressed!');
        
        case 'downarrow'
            brick.MoveMotor('AB', -1000);
            pause(0.6);
            brick.StopMotor('AB');
            disp('Down Arrow Pressed!');
            
        case 'leftarrow'
            brick.MoveMotor('B', 1000);
            pause(0.2);
            brick.StopMotor('B');
            disp('Left Arrow Pressed!');
        case 'rightarrow'
            brick.MoveMotor('A', 1000);
            pause(0.2);
            brick.StopMotor('A');
            disp('Right Arrow Pressed!');
            
        case 0
            disp('No Key Pressed!');
            display(color);
      
    end
end

brick.MoveMotor('AB', 1000);
                pause(7.7);
                brick.StopMotor('AB');
brick.StopAllMotors;
                pause(3);
brick.MoveMotor('AB', 1000);
                pause(3);
                brick.StopMotor('AB');                
brick.MoveMotor('B', 1000);
                pause(2.2);
                brick.StopMotor('B');                
brick.MoveMotor('AB', 1000);
                pause(11);
                brick.StopMotor('AB');                
brick.MoveMotor('B', 1000);
                pause(2.2);
                brick.StopMotor('B');
brick.MoveMotor('AB', 1000);
                pause(12);
                brick.StopMotor('AB');
brick.MoveMotor('B', 1000);
                pause(2.2);
                brick.StopMotor('B');                
brick.MoveMotor('AB', 1000);
                pause(2);
                brick.StopMotor('AB');                
while 1
    color = brick.ColorCode (3);
    display(color);
    pause(0.1);
    switch key
        
        case 'b'
            break;
        case 's'
            brick.StopAllMotors();
            
        case 'u'
            brick.MoveMotorAngleAbs ('C', 80, 90, 'brake');
            pause(0.1);
        case 'd'
            brick.StopMotor ('C');
            brick.MoveMotorAngleAbs ('C', -70, 0, 'brake');
            pause(0.1);
  
        case 'uparrow'
            brick.MoveMotor('AB', 1000);
            pause(0.4);
            brick.StopMotor('AB');
            disp('Up Arrow Pressed!');
        
        case 'downarrow'
            brick.MoveMotor('AB', -1000);
            pause(0.6);
            brick.StopMotor('AB');
            disp('Down Arrow Pressed!');
            
        case 'leftarrow'
            brick.MoveMotor('B', 1000);
            pause(0.2);
            brick.StopMotor('B');
            disp('Left Arrow Pressed!');
        case 'rightarrow'
            brick.MoveMotor('A', 1000);
            pause(0.2);
            brick.StopMotor('A');
            disp('Right Arrow Pressed!');
            
        case 0
            disp('No Key Pressed!');
            display(color);
      
    end
end                
                