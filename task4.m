clf,clc
G = [zeros(60, 128); ones(8, 128); zeros(60, 128)];
H = [zeros(128, 48) ones(128, 32) zeros(128, 48)];
F = G .* H;
subplot (3,3,1);
showgrey(G);
title('G');
subplot (3,3,2);
showgrey(H);
title('H');
subplot (3,3,3);
showgrey(F);
title('F');

Ghat = fft2(G);
subplot (3,3,4);
showfs(Ghat);
title ('Ghat');
Hhat = fft2(H);
subplot (3,3,5);
showfs(Hhat);
title ('Hhat');

Fhat = fft2(F);
subplot (3,3,6);
showfs(Fhat);
title ('Fhat');