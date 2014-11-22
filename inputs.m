function [ images ] = inputs( )
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here

 for n=1:186
     if(n<10)
     images{n} = imread(sprintf('image_%04d.jpg',n));
     elseif(n<100)
     images{n} = imread(sprintf('image_%04d.jpg',n));
     else
     images{n} = imread(sprintf('image_%04d.jpg',n));
     end;

     
end

