function showTrajectory(I,position,events)
        position1 = position;
        x = position1(:,1) + position1(:,3)/2;
        y = position1(:,2) + position1(:,4)/2;
        position1(:,1) = x;
        position1(:,2) = y;
        position1(:,3)=4;
        position1(:,4)=4;
        Trajectory=insertShape(I, 'FilledRectangle', position1(:,1:4), 'Color', 'red');
        %add events
        for i=1:1:length(events)
            pos = getCandidate(position,events(i));
            x = pos(1,1) + pos(1,3)/2;
            y = pos(1,2) + pos(1,4)/2;
            pos(1,1) = x;
            pos(1,2) = y;
            pos(1,3)=7;
            pos(1,4)=7;
            Trajectory = insertShape(Trajectory,'FilledRectangle',pos(1,1:4),'Color', 'green');
        end

        imshow(Trajectory);
end

function candidates = getCandidate(positionMatrix,frame)
    indexes = positionMatrix(:,5)==frame;
    a = positionMatrix .* indexes;
    candidates = a(any(a,2),:);
end