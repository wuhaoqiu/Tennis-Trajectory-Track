function I=GetBackground(name,numberofframe)
    videoReader = vision.VideoFileReader(name);
    for i = 1:numberofframe
        frame = step(videoReader);
        nframes(:,:,i) = im2double(rgb2gray(frame));
    end
    Background = mean(nframes,3); 
    I=Background;
    release(videoReader);
end
