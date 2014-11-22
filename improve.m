function x=improve(res)
[m,n,l]=size(res);
 gray=rgb2gray(res);
 gray=medfilt2(gray,[10,10]);
   e = edge(gray,'prewitt');
   
    se = strel('disk',0);
x = imclose(e,se);

for i=1:m
    for j=1:n
        if(x(i,j)==1)
            res(i,j,1)=255;
            res(i,j,2)=255;
            res(i,j,3)=255;
        end
    end
end
x=res;
end