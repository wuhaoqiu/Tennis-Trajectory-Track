function [I,posi]=detectobject(BW,COL,minsize)
La=bwlabel(BW);
regi=regionprops(La);
areas=cat(2,regi(:).Area);
obj=find(areas>minsize);
RE=regi(obj);
m=numel(RE);
pos=[0,0,0,0];
if m>=1
    pos=RE(1).BoundingBox;
    for i=2:m
        pos=cat(1,pos,RE(i).BoundingBox);
    end
    I=insertShape(COL,'Rectangle',pos,'Color','red');
    posi=pos;
else
    I=insertShape(COL,'Rectangle',pos,'Color','red');
    posi=pos;
end
    
end
