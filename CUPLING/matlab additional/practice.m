clc
clear
close all

%% Read file 

fid = fopen('text.txt','r','n','UTF_8'); % text should be in UTF-8 format 
fseek(fid,0,'bof');

text_origin = fread(fid,[1,inf],'*char'); 
text_originCell = textscan(text_origin,'%s','delimiter',sprintf('\n'));
text_originCell = text_originCell{1};
fclose(fid);

fid = fopen('text.txt','w','n','UTF_8'); % text should be in UTF-8 format 
fseek(fid,0,'bof');

%% Algorithm

X = [1.42 1.065 0.71 0.355 0 -0.355 -0.71 -1.065 -1.42 ];

Str = 'XXP';
LStr = length(Str);

n=length(text_originCell);

text_origin2 = blanks(0);
j=1;
for i=1:n
   if strcmp(text_originCell{i},Str)
      text_originCell{i}=num2str(X(j));
      j = j+1;
   end
   text_origin2 = [text_origin2,sprintf('%s\n',text_originCell{i})]; %#ok
   fprintf(fid,'%s\n',text_originCell{i});
end

fclose(fid);

