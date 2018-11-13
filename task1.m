clf,clc, clear all;
Fhat = zeros(128,128);
p = 1;
q = 20;
Fhat(p,q) = 1;
Fabsmax = max(abs(Fhat(:)));
F = ifft2(Fhat);
%showgrey(real(F),64,-Fabsmax,Fabsmax)
%showgrey(imag( F),64,-Fabsmax,Fabsmax);
%showgrey(abs(F),64,-Fabsmax,Fabsmax);
%showgrey(angle(F),64,-pi,pi);
fftwave(p,q,128);

