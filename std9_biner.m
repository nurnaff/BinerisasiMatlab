a=imread('sepeda.jpg');
a=rgb2gray(a);
a=double(a);
st=std(std(a));
k=0.5;
rt=mean(mean(a));
T=rt+(k*st);
[m n]=size(a);
for i=1:m
for j=1:n
if(a(i,j)<T)
g(i,j)=0;
else
g(i,j)=1;
end
end
end
imwrite(g,'9Std/sepeda.jpg');
figure,imshow(uint8(a));
figure,imshow(g);