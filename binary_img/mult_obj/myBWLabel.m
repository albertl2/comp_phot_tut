function out_img = myBWLabel(img,method)
%{ 
Takes a binary image, and returns a labeled image.
%}

    if strcmp(method,'4c')
        out_img = my_4c(img);
    elseif strcmp(method,'6c')
        out_img = my_6c(img);
    elseif strcmp(method,'8c')
        out_img = my_8c(img);
    else % The method argument is incorrect.
        out_img = [];
    end
end

%%%%%%%%%%%%%%%%%%%%%%% YOUR CODE STARTS HERE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Sequential method.

function out_img = my_4c(img)
    out_img = img;
end

function out_img = my_6c(img)
    out_img = img;
end

function out_img = my_8c(img)
    out_img = img;
end

%% Iterative method.

%{
function out_img = my_4c(img)
    out_img = img;
end

function out_img = my_6c(img)
    out_img = img;
end

function out_img = my_8c(img)
    out_img = img;
end
%}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%