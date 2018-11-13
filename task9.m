clc, clf, clear all;
img = phonecalc256;
smoothimg = img;
N=5;
t = 1;
cutoff = sqrt(0.1);
for i=1:N
    if i>1
        % generate subsampled versions
        img = rawsubsample(img); 
        smoothimg = gaussfft(smoothimg,t); % <call_your_filter_here>(smoothimg, <params>);
        smoothimg = rawsubsample(smoothimg);
        
    end
    subplot(2, N, i)
    showgrey(img)
    subplot(2, N, i+N)
    showgrey(smoothimg)
end