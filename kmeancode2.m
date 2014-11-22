function [a2,b,c]= kmeancode2(he)
cform = makecform('srgb2lab');
lab_he = applycform(he,cform);

ab = double(lab_he(:,:,2:3));
nrows = size(ab,1);
ncols = size(ab,2);
ab = reshape(ab,nrows*ncols,2);

nColors = 3;
%repeat the clustering 3 times to avoid local minima
[cluster_idx, cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean', ...
                                   'Replicates',3,'start','cluster','emptyaction','singleton');
                                  
pixel_labels = reshape(cluster_idx,nrows,ncols);

segmented_images = cell(1,3);
rgb_label = repmat(pixel_labels,[1 1 3]);

for k = 1:nColors
    color = he;
    color(rgb_label ~= k) = 255;
    segmented_images{k} = color;
end

a2=segmented_images{1};
b=segmented_images{2};
c=segmented_images{3};
he(:,:,1)=0;
he(:,:,3)=0;

end