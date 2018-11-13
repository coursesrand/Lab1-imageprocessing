function pixels = gaussfft(pic,t)
%GAUSSIANFFT Summary of this function goes here
%   Detailed explanation goes here
sz = length(pic);

i = 0; %indices for matrix
j = 0;

for x=-sz/2:1:sz/2-1 %correct pixels
    i = i+1;
    for y=-sz/2:1:sz/2-1
        j = j+1;
        G(i,j) = (1/(2*pi*t))*exp(-((x^2+y^2)/(2*t))); %gaussian kernel from equation (8)
    end
    j = 0;
end

Phat = fft2(pic);
%subplot(1,2,1);
%showgrey(G);
%subplot (1,2,2);
%showfs(fft2(G));
Ghat = fft2(fftshift(G)); % shift G before since matlabgrid makes the matrix wrong otherwise.

pixels = ifft2(Phat.*Ghat);
end