function dense = den_CTD(s,t,p)
% reference : http://w3.oc.ntu.edu.tw/chap3/node3.htm
% ���������A��{��
% dw:�¤��K��(�Q��S=0)
% dense0:���������K�ףl(S,T,0)�A���OP=0�A��쬰bar
% depth : �����`�� (���:m)
% ���U���O : p = 1.01325+depth*(1.01325*1/10) (bar)
% Kw
% K_s_t_0 
% K_s_t_p
% dense:���O��P bar�ɪ������K��=dense0./(1-(p./K_s_t_p))   ���:kg/(m^3)
dw = 999.842594 + 6.793952*(10^(-2)).*t-9.095290*(10^(-3)).*(t.^2)...
    +1.001685*(10^(-4)).*(t.^3)-1.120083*(10^-6).*(t.^4)+6.536332*(10^-9).*(t.^5);
dense0 = dw+s.*(0.824493-4.0899*10^(-3).*t+7.6438*10^(-5).*(t.^2)...
    -8.2467*10^(-7).*(t.^3)+5.3875*10^(-9).*(t.^4))+s.^(1.5).*(-5.72466*10^(-3)...
    +1.0227*10^(-4).*t-1.6546*10^(-6)*t.^2)+4.8314*10^(-4).*(s.^2);

Kw = 19652.21 + 148.4206.*t - 2.327105.*(t.^2)+ 1.360477*(10^-2).*(t.^3)...
    -5.155288*(10^-5).*(t.^4);
K_s_t_0 = Kw + s.*(54.6746 - 0.603459.*t + 1.09987*(10^-2).*(t.^2)...
    -6.1670*(10^-5).*(t.^3)) + (s.^1.5).*(7.944*(10^-2)+1.6483*(10^-2).*t...
    -5.3009*(10^-4).*(t.^2));
K_s_t_p = K_s_t_0 + p.*(3.239908 + 1.43713*(10^-3).*t...
    +1.16092*(10^-4).*(t.^2)- 5.77905*(10^-7).*(t.^3)) +p.*s.*(2.2838*(10^-3)...
    -1.0981*(10^-5).*t - 1.6078*(10^-6).*(t.^2)) + 1.91075*(10^-4).*(p.*s.^1.5)...
    +(p.^2).*(8.50935*(10^-5)- 6.12293*(10^-6).*t +5.2787*(10^-8).*(t.^2))...
    +(p.^2).*s.*((-9.9348)*(10^-7)+ 2.0816*(10^-8).*t + 9.1697*(10^-10).*(t.^2));

dense=dense0./(1-(p./K_s_t_p));
% sigma = dense*1000-1000;
end