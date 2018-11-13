clear all,clc,clf


F = [ zeros(56, 128); ones(16, 128); zeros(56, 128)];
G = F';
H = F + 2 * G;

Fhat = fft2(F);
Ghat = fft2(G);
Hhat = fft2(H);

Fabsmax = max(abs(F(:)));
subplot (3,2,1);
showgrey(F);
title ('F');

Gabsmax = max(abs(G(:)));
subplot (3,2,3);
showgrey (G,64,-Gabsmax,Gabsmax);
title ('G');

Habsmax = max(abs(H(:)));
subplot(3,2,5);
showgrey(H,64,-Habsmax,Habsmax);
title("H");
subplot (3,2,6);

subplot(3,2,2);
showgrey(log(1 + abs(Fhat)));
title ("Fhat");

subplot (3,2,4);
title ("Ghat");
showgrey(log(1 + abs(Ghat)));

subplot (3,2,6);
title("Hhat");
showgrey(log(1 + abs(Hhat)));

showfs(Hhat);