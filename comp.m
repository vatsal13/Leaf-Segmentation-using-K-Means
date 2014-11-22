function [] = comp( f )
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
for n=1:6
	a= start2(f{n});
    x=improve(a);
    n1=final(x);
    imwrite(n1,sprintf('C:/Users/s/Desktop/pap5/res%04d.jpg',n),'jpg');

end
end

