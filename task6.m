clf, clc
img1 = phonecalc128;
img2 = few128;
img3 = nallo128;
img1 = img1;
a = 1E-10;

figure (1);
subplot (1,3,1);
showgrey(img1);
title ('original pic');

subplot(1,3,2);
showgrey (pow2image(img1,a));
title('pow2');

subplot (1,3,3);
showgrey(randphaseimage(img1));
title ('rand. phase distribution');