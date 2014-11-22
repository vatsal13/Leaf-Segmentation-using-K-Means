function [n1]=final(x)
[m,n,l]=size(x);
gray=rgb2gray(x);
t=graythresh(gray);
BW=im2bw(gray,t);
BW=1-BW;
k=BW;
CC = bwconncomp(BW);
numPixels = cellfun(@numel,CC.PixelIdxList);
[biggest,idx] = max(numPixels);
BW(CC.PixelIdxList{idx}) = 0;
 res=x;
for i=1:m
    for j=1:n
        if(BW(i,j)==k(i,j))
            res(i,j,1)=255;
            res(i,j,2)=255;
            res(i,j,3)=255;
        end
    end
end
n1=res;

end
