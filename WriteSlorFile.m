% Function to create a text file for conversion to sLORETA format to plot
% various sources onto the cortical view
% Author - Navdeep Ahuja
% AIIMS, New Delhi


function [temp]=WriteSlorFile(sourceData,sourceGrid)
ext='.txt';
    a=strcat('slor',ext);
    b=fopen(a,'w');

    
    for m=1:66    
    
        for n=1:245
            if sourceGrid(m,n)~=0
            temp(sourceGrid(m,n))=sourceData(m);
            end
        end
        
    end
    
        
        for j=1:6239
     
      fprintf(b,'%4.2f ',temp(j));
       
        
        end
    
        for j=1:52
             fprintf(b,'%4.2f ',0);
        end

fclose(b);        
     
end