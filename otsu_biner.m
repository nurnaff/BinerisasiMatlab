a=imread('bola.jpg');
a=rgb2gray(a);
b=im2bw(a,graythresh(a));
imwrite(b,'Otsu/bola.jpg');
figure,imshow(b);