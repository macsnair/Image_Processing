% READ IMAGE OF ANY GIVEN EXTENSION (say, 'ext')


fid = fopen(fullfile(image_path,'image_name.ext')); %read the image data file
% img_file==textscan(fid,'%s');
data = fread(fid,image_size); % e.g. fread(3,[240,320])
fclose(fid); 
% data = fread(fid,image_size,imagePrecision); 
figure,imshow(data); % display image
data2=data(2:num_rows,:); % removes original header of the image data
imwrite(data2,'output_image.ext2'); % writes the image file to a desired extension "ext2"
