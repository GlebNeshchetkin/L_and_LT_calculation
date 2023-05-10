function [LT] = calc_LT(array)
LT = zeros(1,length(array));
for i=1:length(array)
    y = array(2,i);
    x = array(1,i);
    angle = atand(abs(array(2,i))/abs(array(1,i)));
    if y>0 && x<0
        angle = 360 - angle;
    end
    if x>0 && y>0
        angle = 180 + angle;
    end
    if x>0 && y<0
        angle = 180 - angle;
    end
    LT(i) = 24*(angle/360);
end
end