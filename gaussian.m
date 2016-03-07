N = 2.5; 
sigma = 2.5;
I = imread('ct_scan.pnm');

% N is grid size, sigma speaks for itself
 [x y]=meshgrid(round(-N/2):round(N/2), round(-N/2):round(N/2));
 f=exp(-x.^2/(2*sigma^2)-y.^2/(2*sigma^2));
 f=f./sum(f(:));
 G_I = uint8(conv2(I, f));
figure,
subplot(2,1,1);title('Original Image'); imshow(I);
subplot(2,1,2);title('Gaussian Agerage Filter'); imshow(G_I);
