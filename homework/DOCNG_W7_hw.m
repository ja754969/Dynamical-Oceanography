% NTOU海洋動力學1091_W7_HW
% 318C7D.CNV
clear;
clc;
close all;
cd('C:\Users\user\Google 雲端硬碟\海大1091\海洋動力學_1091\homework')
%%
a = dir('318*');

% load('318C7D.CNV')
filename='318C7D.CNV';

fid = fopen(filename, 'r');

Data = textscan(fid, [repmat('%f',1,6)], 'headerLines', 69);

fclose(fid);
Data= cell2mat(Data);
%%
pressure_db = Data(:,1);
% 海下壓力 : p = 1.01325+depth*(1.01325*1/10) (bar)
% 深度 : depth = (p-1.01325)/(1.01325*1/10) (m)
t068 = Data(:,2);
conductivity = Data(:,3);
salinity = Data(:,4);
sigma_theta = Data(:,5);
pressure_bar = pressure_db/10 + 1.01325;
%%
% rho = den_CTD(35,25,0) %test
s = linspace(min(salinity),max(salinity),length(pressure_bar));
t = linspace(min(t068),max(t068),length(pressure_bar));
[SS,TT] = meshgrid(s,t);
rho_p0 = den_CTD(SS,TT,pressure_bar);
% rho = den_CTD(SS,TT,1.01325+depth*(1.01325*1/10)); % function (p change with depth)
sigma_t = rho_p0-1000;
% sigma = rho-1000;
% level1 = min(round(sigma_t,0)):2:max(round(sigma_t,0));
% ax1_1 = plotyy(depth,avg1_T,dep11,avg1_S)
% set(gca,'View',[90 90]) % 調整雙y圖的方位角、仰角
% set(get(ax1_1(1),'Ylabel'),'String','Temperature (^oC)');
% set(get(ax1_1(2),'Ylabel'),'String','Salinity (psu)');
% xlabel('depth (m)');
figure(1)
[c1,h1] = contour(SS,TT,sigma_t,'ShowText','on',...
    'DisplayName','density (\sigma_t) - kg\cdotm^{-3}');
clabel(c1,h1,'FontSize',10,'Color','black','FontAngle','normal')
hold on;
p1 = plot(salinity,t068,'.k','MarkerSize',10,'MarkerFaceColor','k','DisplayName','T-S diagram');
hold off;
legend('Location','northoutside')
ylabel('Temperture (^oC)');
xlabel('Salinity (psu)');
% xlim([min(salinity) max(salinity)]);ylim([min(t068) max(t068)]);
% xticks(s(1):5:s(end))
% yticks(t(1):5:t(end))
% ax = gca;
% ax.GridLineStyle = '-';
grid minor;
cd('C:\Users\user\Google 雲端硬碟\海大1091\海洋動力學_1091\homework\image')
print('DOCNG_W7_hw1_00781035','-djpeg')
cd('C:\Users\user\Google 雲端硬碟\海大1091\海洋動力學_1091\homework')
%%
figure(2)
sigma_gradient = gradient(sigma_theta);
Bf = 9.8.*(-1./(sigma_theta + 1000).*sigma_gradient);
depth = (pressure_bar-1.01325)/(1.01325*1/10);
p2 = plot(Bf,pressure_db);
set(gca,'Ydir','reverse')
set(gca,'XAxisLocation','top')
ylabel('Depth (db)');
xlabel('Stability Frequency (cycles per hour)');
cd('C:\Users\user\Google 雲端硬碟\海大1091\海洋動力學_1091\homework\image')
print('DOCNG_W7_hw2_00781035','-djpeg')
cd('C:\Users\user\Google 雲端硬碟\海大1091\海洋動力學_1091\homework')