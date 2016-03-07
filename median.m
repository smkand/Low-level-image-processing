I = imread('child.pnm');
figure, imshow(I);
kernel = ones(3, 3) / 9; % 3x3 mean kernel
J = uint8(conv2(I, kernel, 'same')); % Convolve keeping size of I
figure, imshow(J);
