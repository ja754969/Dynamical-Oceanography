% NTOU海洋動力學1091_W5_HW1
clear;
clc;
clf
cd('C:\Users\user\Google 雲端硬碟\海大1091\海洋動力學_1091\homework')
depth = 1:3700;
% rho = den_CTD(35,25,0) %test
t = linspace(-2,30,length(depth));
s = linspace(20,40,length(depth));
[SS,TT] = meshgrid(s,t);
rho_p0 = den_CTD(SS,TT,zeros(1,length(depth))); % function (p=0)
% rho = den_CTD(SS,TT,1.01325+depth*(1.01325*1/10)); % function (p change with depth)
sigma_t = rho_p0-1000;
% sigma = rho-1000;
level1 = 12:2:32;
% ax1_1 = plotyy(depth,avg1_T,dep11,avg1_S)
% set(gca,'View',[90 90]) % 調整雙y圖的方位角、仰角
% set(get(ax1_1(1),'Ylabel'),'String','Temperature (^oC)');
% set(get(ax1_1(2),'Ylabel'),'String','Salinity (psu)');
% xlabel('depth (m)');
[c1,h1] = contour(SS,TT,sigma_t,level1,'ShowText','on',...
    'DisplayName','density (\sigma_t) - kg\cdotm^{-3}');
clabel(c1,h1,'FontSize',10,'Color','black','FontAngle','normal')
hold on;
level2 = -200:200:600;
delta_st = ((1000./(1000+sigma_t))-0.97266).*10^(-3);
delta_st_display = delta_st.*10^(8);
[c2,h2] = contour(SS,TT,delta_st_display,level2,'ShowText','on',...
    'LineStyle','--','LineColor','k','DisplayName','Thermosteric Anomaly (\Delta_{s,T}) - \times10^{-8}m^{3}/kg');
clabel(c2,h2,'FontSize',8,'Color','blue','FontAngle','normal')
hold off;
legend('Location','northoutside')
ylabel('Temperture (^oC)');
xlabel('Salinity (psu)');
xticks(s(1):5:s(end))
yticks(t(1):5:t(end))
% ax = gca;
% ax.GridLineStyle = '-';
grid minor;
cd('C:\Users\user\Google 雲端硬碟\海大1091\海洋動力學_1091\homework\image')
print('DOCNG_W5_hw1_00781035','-djpeg')
cd('C:\Users\user\Google 雲端硬碟\海大1091\海洋動力學_1091\homework')