clf,clc
F1 = [zeros(60, 128); ones(8, 128); zeros(60, 128)];
F2 = [zeros(128, 48) ones(128, 32) zeros(128, 48)];
F = F1.*F2;
alpha = 90;

Fhat = fft2(F);
figure(1);
showfs(Fhat);
title ('Fhat');

figure(2);
G = rot(F, alpha);
subplot(1,3,1);
showgrey(G)
title('G');
axis on

subplot(1,3,2);
Ghat = fft2(G);
showfs(Ghat);
title ('Ghat');

subplot (1,3,3);
Hhat = rot(fftshift(Ghat), -alpha );
showgrey(log(1 + abs(Hhat)))
title ('Hhat');


