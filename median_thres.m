gambar=imread('sepeda.jpg');
gambar=rgb2gray(gambar);
[brs klm]=size(gambar);
total=brs*klm;
urut=1;
for i=1:brs
for j=1:klm
f(urut)=gambar(i,j);
urut=urut+1;
end
end
f=sort(f);
f=double(f);
med=median(f,2);
for x=1:brs
for y=1:klm
if(gambar(x,y)<med)
hasil(x,y)=0;
else
hasil(x,y)=1;
end
end
end
imwrite(hasil,'Media/sepeda.jpg');
figure,imshow(hasil);