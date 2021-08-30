%       Program inertial
% ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
% c     solves inertial motion on a sphere
% ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
% 	double precision pxi,delpxi,upxi
% ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
% c	variables:
% c
% c	cpsd   = the constant speed of the parcel 
% c	re     = earth's radius
% c	sigma  = c/re
% c	omega  = earth's angular speed
% c	pxi1   = minimum latitude
% c	pxi2   = maximum latitude
% c	gamma  = constant of angular momentum
% c     ulam   = d(lambda)/d(t) 
% c     upxi   = d(theta)/d(t)
% cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
% 	open ( 6, file='inertial.out')
% c
% 	write(*,*)'Enter the constant speed C'
% 	read(*,*) cspd
% 	write(*,*)'Enter the latitude pxi2'
% 	read(*,*) pxi2 
% 	write(*,*)'Enter duration hours'
% 	read(*,*) hrs
% c
% 	pi = 3.14159265
% 	omega=2.*pi/86164.
% 	re=6371000.
% 	sigma=cspd/re
% 	pxi2=pxi2*pi/180.
% 	gamma=omega*cos(pxi2)*cos(pxi2) + sigma*cos(pxi2)
% c
% 	arg = cos(pxi2) + sigma/omega
% 	if (arg .gt. 1.) then 
% 	  pxi1 = - pxi2
% 	  go to 2
% 	end if
% 	pxi1 = acos(arg)
% 2	continue
% 	if (pxi1 .gt. 0) then
%         gamma1= omega*cos(pxi1)*cos(pxi1) - sigma*cos(pxi1)
% 	else
% 	  gamma1= omega*cos(pxi1)*cos(pxi1) + sigma*cos(pxi1)
% 	end if
% 	write(6,100) pxi1*180./pi, pxi2*180/pi, sigma, gamma, gamma1
% 100	format (' pxi1=',e14.7,' pxi2=',e14.7,' sigma=',e14.7,' gam=',
%      *        e14.7,' gam1=',e14.7)
% 	pxi = pxi2
% 	pxit = pxi
% 	xlamda = 0.
% 	delt= 30.
% 	mstep = hrs*60.*60./delt
% 	write(6,101) xlamda*180./pi, pxi*180./pi,0.,0.
% 101	format (4e14.7)
% c
% 	do 10 i=1, mstep
% 	 ulam=gamma/cos(pxi)/cos(pxi) - omega
% c
%  	if (pxit .lt. pxi .or. abs(pxi-pxi1).lt.1.e-5) then 
% 	  if( abs(pxi-pxi2) .lt. 1.e-5) go to 3
% 	  upxi=sqrt(abs(sigma**2 - (gamma/cos(pxi)-omega*cos(pxi))**2))
% 	  go to 4
%       end if
% 3	continue
%         upxi=-sqrt(abs(sigma**2 - (gamma/cos(pxi)-omega*cos(pxi))**2))
% 4	continue
% c
% 	delam = ulam*delt
% 	delpxi = upxi*delt
% 	xlamda = xlamda + delam
% 	pxit = pxi
% 	pxi = pxi + delpxi
% 	write(6, 101) xlamda*180./pi, pxi*180./pi,ulam,upxi
% 10	continue
% 	end
%%
% NTOU海洋動力學1091_W7_HW
% inertial.f
clear;
clc;
close all;
cd('C:\Users\user\Google 雲端硬碟\海大1091\海洋動力學_1091\homework')
pi = 3.14159265;
omega = 2.*pi/86164;
re = 6371000;
sigma = cspd/re;
pxi2 = pxi2*pi/180;
gamma = omega*cos(pxi2)*cos(pxi2) + sigma*cos(pxi2);
% c
% 	arg = cos(pxi2) + sigma/omega
% 	if (arg .gt. 1.) then 
% 	  pxi1 = - pxi2
% 	  go to 2
% 	end if
% 	pxi1 = acos(arg)
% 2	continue
% 	if (pxi1 .gt. 0) then
%         gamma1= omega*cos(pxi1)*cos(pxi1) - sigma*cos(pxi1)
% 	else
% 	  gamma1= omega*cos(pxi1)*cos(pxi1) + sigma*cos(pxi1)
% 	end if
% 	write(6,100) pxi1*180./pi, pxi2*180/pi, sigma, gamma, gamma1
% 100	format (' pxi1=',e14.7,' pxi2=',e14.7,' sigma=',e14.7,' gam=',
%      *        e14.7,' gam1=',e14.7)
% 	pxi = pxi2
% 	pxit = pxi
% 	xlamda = 0.
% 	delt= 30.
% 	mstep = hrs*60.*60./delt
% 	write(6,101) xlamda*180./pi, pxi*180./pi,0.,0.
% 101	format (4e14.7)
% c
% 	do 10 i=1, mstep
% 	 ulam=gamma/cos(pxi)/cos(pxi) - omega
% c
%  	if (pxit .lt. pxi .or. abs(pxi-pxi1).lt.1.e-5) then 
% 	  if( abs(pxi-pxi2) .lt. 1.e-5) go to 3
% 	  upxi=sqrt(abs(sigma**2 - (gamma/cos(pxi)-omega*cos(pxi))**2))
% 	  go to 4
%       end if
% 3	continue
%         upxi=-sqrt(abs(sigma**2 - (gamma/cos(pxi)-omega*cos(pxi))**2))
% 4	continue
% c
% 	delam = ulam*delt
% 	delpxi = upxi*delt
% 	xlamda = xlamda + delam
% 	pxit = pxi
% 	pxi = pxi + delpxi
% 	write(6, 101) xlamda*180./pi, pxi*180./pi,ulam,upxi
% 10	continue
% 	end