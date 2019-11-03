a=imread('bola.jpg');
gray=rgb2gray(a);
[m n]=size(gray);
for i=2:m-1
    for j=2:n-1
	    matriks=[gray(i,j+1) gray(i-1,j+1) gray(i-1,j) gray(i-1,j-1) gray(i,j-1) gray(i+1,j-1) gray(i+1,j) gray(i+1,j+1)];
		array=[gray(i,j) gray(i,j+1) gray(i-1,j+1) gray(i-1,j) gray(i-1,j-1) gray(i,j-1) gray(i+1,j-1) gray(i+1,j) gray(i+1,j+1)];
        minim(i,j)=min(matriks);
        maksi(i,j)=max(matriks);
		rata(i,j)=fix(mean(array));
		medi(i,j)=median(array);
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
figure,imshow(uint8(rata));
figure,imshow(medi);