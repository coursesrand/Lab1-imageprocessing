clc,clf
F = [ zeros(56, 128); ones(16, 128); zeros(56, 128)];
G = F';

%showgrey(F .* G);
subplot(1,2,1)
%title
showfs(fft2(F.*G));
title ('multiplication in spatial domain');

Fhat = fft2(F); %creating Fhat/Ghat, entering fourier domain
Ghat = fft2(G);

convad = conv2(Fhat,Ghat); %convolve Fhat/Ghat, convolution theorem
convad = convad(1:128,1:128); %reshape result, "error" because of conv2 

subplot(1, 2, 2);
%title
showfs(convad/20000);% scaling
title('convolution in fourier domain');
% multipl in spatial and then fft2
%convolution in fourier

