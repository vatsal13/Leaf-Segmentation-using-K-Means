function [ret]= start2(i)
[a,b,c]=kmeancode2(i);

[m,n,l]=size(i);
a=uint16(a);
b=uint16(b);
c=uint16(c);
A=0;
B=0;
C=0;
for i=1:m
    for j=1:n
        
        
        if(abs(a(i,j,2)-a(i,j,3))>10 && abs(a(i,j,2)-a(i,j,1))>10)
            A=A+1;
        end
        if(abs(b(i,j,2)-b(i,j,3))>10 && abs(b(i,j,2)-b(i,j,1))>10)
            B=B+1;
        end
        if(abs(c(i,j,2)-c(i,j,3))>10 && abs(c(i,j,2)-c(i,j,1))>10)
            C=C+1;
      
        end
    end
end
max=A;
if(max>B)
ret=a;
else
    ret=b;
    max=B;
end

if(max<C)
ret=c;
end
ret=uint8(ret);

end