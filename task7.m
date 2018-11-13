clc,clf, clear all, close all;
img = kloss256;
t = [1,4,16,64,256]; %as t increases, our gaussian kernel gets smaller which can be seen as a contraction
         % in spatial domain --> expansion in fourier domain.

pic = deltafcn(128,128);
for x=1:length(t)
    psf = gaussfft(img,t(x));
    
    variance(psf) %variance gets exactly what we expect except for t= 0.1 and 0.3
    disp (eye(2)*t(x));
    
    subplot(3,3,x);
    %mesh(psf);
    showgrey(psf); %visualize how the filter works on a real pic
   
    title (sprintf('t: %d',t(x)));
end


