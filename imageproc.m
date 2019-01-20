%I = imread('elenapic.jpg');
jpgFiles = dir('*.jpg'); 
numfiles = length(jpgFiles);
mydata = cell(1, numfiles);
waldo = imread('Waldo.png');
[waldoheight, waldowidth] = size(waldo);
for k = 1:numfiles 
  I = imread(jpgFiles(k).name); 
  I = imresize(I, 1.5);
  [height, width] = size(I);
  waldo = imresize(waldo, [height/4, width/20]);
  inf=imfuse(I,waldo,'blend','Scaling','joint');
  imwrite(inf,['findwaldo' num2str(k) '.jpg']);
end
imshow(waldo);
