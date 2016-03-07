
%Reading a grayscale image

H=imread('building.pnm');

figure,imshow(H);


% Range of an output image
Range=255;

% Finding histogram
Val=reshape(H,[],1);
Val=double(Val);
I=hist(Val,0:Range);


%Dividing the final result by total number of pixels
Output=I/numel(H);


%Calculatiing the Cumlative sum
CSum=cumsum(Output);



% Image transformation 
Image=CSum(H+1);


%Converting the image into uint8(unsigned integer)
Image=uint8(Image*Range);


% Plotting a histogram 
figure,imshow(Image);
figure,
subplot(2,1,1);title('Before Histogram Equalization:'); imhist(H);
subplot(2,1,2);title('After Histogram Equalization:'); imhist(Image);

