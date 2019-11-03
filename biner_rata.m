g=imread('sepeda.jpg');
g=rgb2gray(g);
[m n]=size(g);
T=fix(mean(mean(g,2)));
for i=1:m
    for j=1:n
        if(g(i,j)<T)
            f(i,j)=0;
        else
            f(i,j)=1;
        end
    end
end
f=uint8(f);
figure, imshow(f);
figure,imshow(g);