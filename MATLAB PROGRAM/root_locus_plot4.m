clf % This creates a root locus plot for G(s)=1/s(s^2/2600 + s/26 1) and
%H(s)=1/(0.04s+1)
num=[1];
den1=[1 0];
den2=[1/2600 1/26 1];
den3=[0.04 1];
den=conv(conv(den1, den2),den3);
k=0:0.5:50.0;
r=rlocus(num, den, k);
rr=real(r); % Finding real parts of the roots
for i=1:length(k)
if rr(i)>0
k_u=k(i) % Gain that would just make the system unstable
r_u=r(i) % Corresponding root with positive real part
break;
end
end
plot(r, '*');
grid;
title('Root locus');
xlabel('Real parts of the roots');
ylabel('Imaginary parts of the roots');