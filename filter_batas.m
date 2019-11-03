a=imread('bola.jpg');
gray=rgb2gray(a);
[m n]=size(gray);
for i=2:m-1
    for j=2:n-1
        minim(i,j)=min([gray(i,j+1) gray(i-1,j+1) gray(i-1,j) gray(i-1,j-1) gray(i,j-1) gray(i+1,j-1) gray(i+1,j) gray(i+1,j+1)]);
        maksi(i,j)=max([gray(i,j+1) gray(i-1,j+1) gray(i-1,j) gray(i-1,j-1) gray(i,j-1) gray(i+1,j-1) gray(i+1,j) gray(i+1,j+1)]);
        if(gray(i,j)<minim(i,j))
            baru(i,j)=minim(i,j);
        else
            if(gray(i,j)>maksi(i,j))
                baru(i,j)=maksi(i,j);
            else
                baru(i,j)=gray(i,j);
            end
        end
    end
end
figure,imshow(gray);
figure,imshow(baru);