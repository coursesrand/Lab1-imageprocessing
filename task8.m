clc,clf,clear all, close all;

office = office256;
t = 10; 
cutoff = sqrt(0.009);
windowsize = 16;

add =gaussnoise(office,16); %adds white uncorrelated gaussian noise with some SD
sap = sapnoise(office,0.1,255); %salt-and-peppar noise to the picture

figure(1);
subplot (1,3,1);
showgrey(office);

subplot(1,3,2);
showgrey(add);

subplot(1,3,3);
showgrey(sap);

figure(2);
%add2 = gaussfft(add,t); %add looks alrigh with t = 10 and but sap needs t >20 to not look noisy.
%sap2 = gaussfft(sap,t); 

add2 = medfilt(add,windowsize); %a higher windowsize (20 for example) gets rid of more noise but makes objects melt
sap2 = medfilt (sap,windowsize); %together into a big blob. 10 seems like a good value since noise is gone but we can still distinguish objects.
                           %also, bigger windowsize takes up too much space and calculation time

%add2 = ideal(add,cutoff); %cutoff is a value that we use to check if a frequency is going to stay in the picture. 
%sap2 = ideal(sap,cutoff); %values that works are small (smaller than sqrt(0.1)). Drawbacks with smaller values are that it seems to create new
                          %lines that should not be on the picture.

addmax = max(abs(add(:)));
subplot (2,2,1);
showgrey(add);
subplot(2,2,2);
showgrey(add2)

subplot(2,2,3);
showgrey(sap);
subplot(2,2,4);
showgrey(sap2);