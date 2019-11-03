g=imread('sepeda.jpg');
g=rgb2gray(g);
[m n]=size(g);
g=double(g);
total=0;
for i=1:m
    for j=1:n
        total=total+g(i,j);
    end
end
jum=m*n;
rata=fix(total/jum);
for k=1:m
    for l=1:n
        if(g(k,l)<rata)
            f(k,l)=0;
        else
            f(k,l)=1;
        end
    end
end
imwrite(f,'Mean/sepeda.jpg');
figure, imshow(f);
%figure,imshow(g);