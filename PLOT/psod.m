	figure (3)

%for i=1:nt
%	plot (r(:,i),P(:,i),'r',"linewidth",2,ri(:,i),Pi(:,i),'b',"linewidth",2)
%	plot (r(:,i),rho(:,i),'bx',r(:,i),alpha(:,i),'rx')
%,r(:,i),u(:,i),'gx',r(:,i),P(:,i),'kx')
%	axis ([r(1,1) r(nr,1) 999.99 1000.01]);
%	xlabel ("Radius (m)")
%	legend ("normalised density","level set","northeast")
%	trm = t(i);
%	vrb = sprintf("time = %e seconds",trm);
%	title (vrb)
%	nam = num2str(i);
%	print ('-dpng',nam)
%	plot (r(:,i),alpha(:,i),'r',"linewidth",2)
%	axis ([0 0.1 0 1]) 
%	pause (0.05)
%	b = num2str(i);
%	print ('-dsvg',"%s.svg",b)
	
%endfor

%   max(PovPinf(1,1),PovPinf(nr,1))+1

%	axis ([r(1,1) r(nr,1) 0 max(PovPinf(1,1),PovPinf(nr,1))+1]);
if (false) 
	rsolver
else
	x=0;
	rhog=0;
	pg=0;
	ug=0;
	eg=0;
endif

subplot(4,1,1),plot(r(:,nt),rho(:,nt),'rx',x,rhog,'k',"linewidth",1.5)
trm = t(nt);
vrb = sprintf("time = %e seconds",trm);
title (vrb)
legend("numerical","analytical")
grid
ylabel("density")
axis([r(1,nt) r(nr,nt) 0 1100]); axis "autoy";
subplot(4,1,2),plot(r(:,nt),u(:,nt),'rx',x,ug,'k',"linewidth",1.5)
grid
ylabel("velocity")
axis([r(1,nt) r(nr,nt) 0 40]); axis "autoy";
subplot(4,1,3),plot(r(:,nt),E(:,nt),'rx',x,eg,'k',"linewidth",1.5)
grid
ylabel("energy")
axis([r(1,nt) r(nr,nt) 0 1]); axis "autoy";
subplot(4,1,4),plot(r(:,nt),P(:,nt),'rx',x,pg,'k',"linewidth",1.5)
grid
ylabel("pressure")
axis([r(1,nt) r(nr,nt) 1e5 9e9]); axis "autoy";
