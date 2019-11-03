a=imread('sepeda.jpg');
a=rgb2gray(a);
[M N]=size(a);
jumlah=M*N;
a=double(a);
total=0;
for i=1:M
    for j=1:N
        total=total+a(i,j);
    end
end
T0=fix(total/jumlah);
jum_u1=0;
jum_u2=0;
total_u1=0;
total_u2=0;
while true
 for k=1:M
     for l=1:N
         if(a(k,l)<=T0)
             jum_u1=jum_u1+1;
             total_u1=total_u1+a(k,l);
         else
             jum_u2=jum_u2+1;
             total_u2=total_u2+a(k,l);
         end
     end
 end
 T_u1=fix(total_u1/jum_u1);
 T_u2=fix(total_u2/jum_u2);
 T1=fix((T_u1+T_u2)/2);
 if((T0-T1)<1)
     break;
 end
 T0=T1;
end
for x=1:M
    for y=1:N
        if(a(x,y)<T0)
            g(x,y)=0;
        else
            g(x,y)=1;
        end
    end
end
imwrite(g,'Iterative/sepeda.jpg');
figure,imshow(g);