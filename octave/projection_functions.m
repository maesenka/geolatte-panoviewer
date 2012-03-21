1;

## assume phi1 = 0, lambda0 = 0;
function [x,y] = rect2lin (phi, lambda)
    R = 2400 / (2*pi);    
    x = R*tan(lambda);
    y = R*tan(phi)/cos(lambda) ;
endfunction

function [phi, lam] = lin2rect(x,y)
    R = 2400 / (2*pi);
    ro = sqrt(x*x + y*y);
    c = atan2(ro,R);
    phi = asin( y*sin(c)/ro);
    lam = atan2(x*sin(c) , ro*cos(c));
endfunction

function r = rad(deg)
    r = pi*deg/180;
endfunction

function d = deg(rad)
    d = 180*rad/pi;
endfunction
