function [L] = calc_L(array)
L = zeros(1,length(array));
for i=1:length(array)
    L(i) = power((array(1,i)*array(1,i)+array(2,i)*array(2,i)+array(3,i)*array(3,i)),1.5)/(array(1,i)*array(1,i)+array(2,i)*array(2,i));
end
end