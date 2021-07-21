function help2= f(i,v,C,U,t,o,q,l,b,a,W,N,bb,j,jj,oo,gg,ii,WW)
i=0;
v=1;
t=0;
o=0;
q=zeros(10,28);
l=0;
b=0;
a=0;
j=0;
jj=0;
oo=0;
gg=0;
ii=0;
WW=zeros(10,10);
W=zeros(10,10);
N=zeros(1,10);
bb=zeros(1,10);
clear all;
clc;
% format long
ii=input('please enter iteration number=');
for v=1:i
  cd('C:\MCNPX\RUN');
  % ejra kardane barname mcnpx
  [status,result]=dos('RUN.bat')
  % baz kardane khorooji
  fid=fopen('out1.o','r+');
  % khandane khorooji
      C=textscan(fid,'%s');
      % martice ra takstoone mikonim yani tamame dadeha zire ham
      U=C{1,1}(:);
      % tedade sotoone matrice u ya tedade character khorooji
      t=size(U,1);
      e=t;
      % ye halghe k az b tedade arayehaye matrice 
      % agar arayei peyda kone k ba 1tally barabar v khate badesh 14 bashe 
      % albate az akhare file b avale file az hlghe kharej mishe.
      for o=1:t
      if(strmatch('tally',U{e}))&(strmatch('1004',U{e+1}))&(strmatch('nps',U{e+2}))==1;
         % bayad tabdil b adad konim vagarna hichjoori enteghalesh nmide b
         % file dg
         l=e+99;
         q(10,10)=str2num(U{l,1});
         q(9,10)=str2num(U{e-8,1});
         q(8,10)=str2num(U{e-13,1});
         q(7,10)=str2num(U{e-18,1});
         q(6,10)=str2num(U{e-289,1});
         q(5,10)=str2num(U{e-294,1});
         q(4,10)=str2num(U{e-299,1});
      elseif(strmatch('tally',U{e}))&(strmatch('934',U{e+1}))&(strmatch('nps',U{e+2}))==1;
          b=e+253;
       
           q(3,10)=str2num(U{b,1});
         q(2,10)=str2num(U{b-5,1});
         q(1,10)=str2num(U{b-10,1});
           q(10,9)=str2num(U{b-278,1});
           q(9,9)=str2num(U{b-283,1});
           q(8,9)=str2num(U{b-288,1});
           q(7,9)=str2num(U{b-543,1}); 
           q(6,9)=str2num(U{b-548,1});
           q(5,9)=str2num(U{b-553,1});
      elseif(strmatch('tally',U{e}))&(strmatch('824',U{e+1}))
          m=e+273;
           q(4,9)=str2num(U{m,1});
           q(3,9)=str2num(U{m-5,1});
           q(2,9)=str2num(U{m-10,1});
          elseif(strmatch('tally',U{e}))&(strmatch('794',U{e+1}))
          m=e+273;
           q(1,9)=str2num(U{m,1});
           q(10,8)=str2num(U{m-5,1});
           q(9,8)=str2num(U{m-10,1});
          elseif(strmatch('tally',U{e}))&(strmatch('764',U{e+1}))
          m=e+273;
           q(8,8)=str2num(U{m,1});
           q(7,8)=str2num(U{m-5,1});
           q(6,8)=str2num(U{m-10,1});    
          elseif(strmatch('tally',U{e}))&(strmatch('734',U{e+1}))
          m=e+273;
           q(5,8)=str2num(U{m,1});
           q(4,8)=str2num(U{m-5,1});
           q(3,8)=str2num(U{m-10,1}); 
                     elseif(strmatch('tally',U{e}))&(strmatch('704',U{e+1}))
          m=e+273;
           q(2,8)=str2num(U{m,1});
           q(1,8)=str2num(U{m-5,1});
           q(10,7)=str2num(U{m-10,1});
           
     elseif(strmatch('tally',U{e}))&(strmatch('674',U{e+1}))
          m=e+273;
           q(9,7)=str2num(U{m,1});
           q(8,7)=str2num(U{m-5,1});
           q(7,7)=str2num(U{m-10,1});   
           
                     elseif(strmatch('tally',U{e}))&(strmatch('644',U{e+1}))
          m=e+273;
           q(6,7)=str2num(U{m,1});
           q(5,7)=str2num(U{m-5,1});
           q(4,7)=str2num(U{m-10,1});    
          elseif(strmatch('tally',U{e}))&(strmatch('614',U{e+1}))
          m=e+273;
           q(3,7)=str2num(U{m,1});
           q(2,7)=str2num(U{m-5,1});
           q(1,7)=str2num(U{m-10,1}); 
                     elseif(strmatch('tally',U{e}))&(strmatch('584',U{e+1}))
          m=e+273;
           q(10,6)=str2num(U{m,1});
           q(9,6)=str2num(U{m-5,1});
           q(8,6)=str2num(U{m-10,1});
           
     elseif(strmatch('tally',U{e}))&(strmatch('554',U{e+1}))
          m=e+273;
           q(7,6)=str2num(U{m,1});
           q(6,6)=str2num(U{m-5,1});
           q(5,6)=str2num(U{m-10,1});
           
        % for b=1:9
         %    l=l+16;
         %   q(b+1,1)=str2num(U{l,1});
        % end
        
       elseif(strmatch('tally',U{e}))&(strmatch('524',U{e+1}))
          m=e+273;
           q(4,6)=str2num(U{m,1});
           q(3,6)=str2num(U{m-5,1});
           q(2,6)=str2num(U{m-10,1});
           
     elseif(strmatch('tally',U{e}))&(strmatch('494',U{e+1}))
          m=e+273;
           q(1,6)=str2num(U{m,1});
           q(10,5)=str2num(U{m-5,1});
           q(9,5)=str2num(U{m-10,1});   
           
          elseif(strmatch('tally',U{e}))&(strmatch('464',U{e+1}))
          m=e+273;
           q(8,5)=str2num(U{m,1});
           q(7,5)=str2num(U{m-5,1});
           q(6,5)=str2num(U{m-10,1});    
          elseif(strmatch('tally',U{e}))&(strmatch('434',U{e+1}))
          m=e+273;
           q(5,5)=str2num(U{m,1});
           q(4,5)=str2num(U{m-5,1});
           q(3,5)=str2num(U{m-10,1}); 
                     elseif(strmatch('tally',U{e}))&(strmatch('404',U{e+1}))
          m=e+273;
           q(2,5)=str2num(U{m,1});
           q(1,5)=str2num(U{m-5,1});
           q(10,4)=str2num(U{m-10,1});
           
     elseif(strmatch('tally',U{e}))&(strmatch('374',U{e+1}))
          m=e+273;
           q(9,4)=str2num(U{m,1});
           q(8,4)=str2num(U{m-5,1});
           q(7,4)=str2num(U{m-10,1});
           
            elseif(strmatch('tally',U{e}))&(strmatch('344',U{e+1}))
          m=e+273;
           q(6,4)=str2num(U{m,1});
           q(5,4)=str2num(U{m-5,1});
           q(4,4)=str2num(U{m-10,1});    
          elseif(strmatch('tally',U{e}))&(strmatch('314',U{e+1}))
          m=e+273;
           q(3,4)=str2num(U{m,1});
           q(2,4)=str2num(U{m-5,1});
           q(1,4)=str2num(U{m-10,1}); 
                     elseif(strmatch('tally',U{e}))&(strmatch('284',U{e+1}))
          m=e+273;
           q(10,3)=str2num(U{m,1});
           q(9,3)=str2num(U{m-5,1});
           q(8,3)=str2num(U{m-10,1});
           
     elseif(strmatch('tally',U{e}))&(strmatch('254',U{e+1}))
          m=e+273;
           q(7,3)=str2num(U{m,1});
           q(6,3)=str2num(U{m-5,1});
           q(5,3)=str2num(U{m-10,1});         
                      elseif(strmatch('tally',U{e}))&(strmatch('224',U{e+1}))
          m=e+273;
           q(4,3)=str2num(U{m,1});
           q(3,3)=str2num(U{m-5,1});
           q(2,3)=str2num(U{m-10,1});
           
     elseif(strmatch('tally',U{e}))&(strmatch('194',U{e+1}))
          m=e+273;
           q(1,3)=str2num(U{m,1});
           q(10,2)=str2num(U{m-5,1});
           q(9,2)=str2num(U{m-10,1});
           
            elseif(strmatch('tally',U{e}))&(strmatch('164',U{e+1}))
          m=e+273;
           q(8,2)=str2num(U{m,1});
           q(7,2)=str2num(U{m-5,1});
           q(6,2)=str2num(U{m-10,1});    
          elseif(strmatch('tally',U{e}))&(strmatch('134',U{e+1}))
          m=e+273;
           q(5,2)=str2num(U{m,1});
           q(4,2)=str2num(U{m-5,1});
           q(3,2)=str2num(U{m-10,1}); 
       elseif(strmatch('tally',U{e}))&(strmatch('104',U{e+1}))
          m=e+273;
           q(2,2)=str2num(U{m,1});
           q(1,2)=str2num(U{m-5,1});
           q(10,1)=str2num(U{m-10,1});
           
 elseif(strmatch('tally',U{e}))&(strmatch('74',U{e+1}))&(strmatch('84',U{e+3}))==1;
           
             m=e+273;
           q(9,1)=str2num(U{m,1});
           q(8,1)=str2num(U{m-5,1});
           q(7,1)=str2num(U{m-10,1});        
           
   elseif(strmatch('tally',U{e}))&(strmatch('44',U{e+1}))&(strmatch('54',U{e+3}))==1;
           
             m=e+273;
           q(6,1)=str2num(U{m,1});
           q(5,1)=str2num(U{m-5,1});
           q(4,1)=str2num(U{m-10,1});
            elseif(strmatch('tally',U{e}))&(strmatch('14',U{e+1}))&(strmatch('24',U{e+3}))==1;
           
             m=e+273;
           q(3,1)=str2num(U{m,1});
           q(2,1)=str2num(U{m-5,1});
           q(1,1)=str2num(U{m-10,1});
           
          filename='Book1.xlsx';
          A=q;
          xlswrite(filename,A)
                 
           break
                
          end 
           e=e-1;      
      end
  fclose(fid); 
  
   
  cd('C:\Users\Mac\Desktop\DATA BANK\MCNPX\80');
   W=xlsread('Book1.xlsx');
   
   N=sum(W,1);
   bb=N./10;
  
for jj=1:10
   for j=1:10
  if W(j,jj)~=0
      W(j,jj)=W(j,jj)/bb(jj);
      % zarib tabdil
      W(j,jj)=W(j,jj)*2.817E+06;
  end
   j=j+1;
   filename='Book2.xlsx';
   A=W;
   xlswrite(filename,A)
   end  
  jj=jj+1; 
end
   
cd('C:\Users\Mac\Desktop\DATA BANK\COBRA'); 
fid=fopen('core.dat','r+');
C=textscan(fid,'%s');
sheetNum=1;
      U=C{1,1}(:);
      t=size(U,1);
      oo=t;
      for gg=1:oo
      if(strmatch('linear',U{oo}))&(strmatch('power',U{oo+1}))==1;
          
        ii=oo+30;
        % WW=xlsread('Book1.xlsx',sheetNum);
     WW=zeros(10,10);
cd('C:\Users\Mac\Desktop\DATA BANK\MCNPX\80'); 
fid=fopen('Book2.xlsx','r+');
X=[1.42 1.065 0.71 0.355 0 -0.355 -0.71 -1.065 -1.42 ];
   
   WW=xlsread('Book2.xlsx');
  % WW=strrep(WW,'E-0','E-');
   %  WW=strrep(WW,'E+0','E+'); 
   
     fprintf(fid,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\nXXP\n',WW);
    
   C=textscan(fid,'%s');
   U=C{1,1}(:);
   t=size(U,1);
  
  for e=1:t
      if(strmatch('XXP',U(e)))==1;
        fseek(fid,U(e),'cof');
     %   U(r)=X(1);
       fprintf(fid,'%s\n',X(1)); 
  % fwrite(fid,'GGG');
       end
       
      % if(strmatch('^t',U{e}))==1; 
          % fseek(fid,U(e),'bof');
       % fprintf(fid,'%s\n',0);
     %  end
      e=e+1; 
  end  
 
    
   fid = fopen('2.txt','r','n','UTF_8'); 
fseek(fid,0,'bof');

text_origin = fread(fid,[1,inf],'*char'); 
text_originCell = textscan(text_origin,'%s','delimiter',sprintf('\n'));
text_originCell = text_originCell{1};
fclose(fid);

fid = fopen('2.txt','w','n','UTF_8'); % text should be in UTF-8 format 
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
  
end
              
      end
      
     
cd('C:\Users\Mac\Desktop\DATA BANK\COBRA'); 
[status,result]=dos('RUN.bat')

cd('C:\Users\Mac\Desktop\DATA BANK\COBRA'); 

fid=fopen('mod.out','r+');
D=textscan(fid,'%s');
mn=D{1,1}(:);
for i=1:size(mn,1)
  if(strmatch('MEAN',mn{e}))&(strmatch('FUEL',mn{e+1}))&(strmatch('TEMPERATURE',mn{e+2}))==1;
         ty=e+5;
       tempF(op)=str2num(mn{ty,1});
  elseif(strmatch('MEAN',mn{e}))&(strmatch('COOLANT',mn{e+1}))&(strmatch('TEMPERATURE',mn{e+2}))==1;
      ty=e+5;
      tempC(op)=str2num(mn{ty,1});
      break;
  end
op=ii;  
end
for i=1:size(mn,1)
      if(strmatch('MEAN',mn{e}))&(strmatch('COOLANT',mn{e+1}))&(strmatch('DENSITY',mn{e+2}))==1;
      ty=e+5;
      %mn{ty}/1000;
      densC(op)=str2num(mn{ty,1})/1000;
      break;
  end
op=ii;  
end
  

% sakhte 10 ghsmatie tempc tempf den  

cd('C:\MCNPX\RUN');
 
  fid=fopen('hzp.i','r+');
      Cp=textscan(fid,'%s');
      Up=Cp{1,1}(:);
      tp=size(Up,1);
      e=tp;
      for o=1:tp
      if(strmatch('water',Up{e}))&(strmatch('as',Up{e+1}))&(strmatch('coolant',Up{e+2}))==1;
       ty=ep+12;
       ku=1;
       kuu=1;
    for iii=1:10
      tempcr(ku)=str2num(Up{ty,1});

          
      ty=ty+11;
      ku=ku+1;
    end    
      tyy=ep+7;
       kuu=1;
    for iii=1:10
      denscr(kuu)=str2num(Up{tyy,1});     
      tyy=ty+11;
      kuu=kuu+1;
    end         

      elseif(strmatch('fuel',Up{e}))&(strmatch('rod',Up{e+1}))&(strmatch('division',Up{e+2}))==1;

 tty=ep+12;
       kku=1;
       
    for iii=1:10
      tempcr(kku)=str2num(Up{tty,1});

          
      tty=tty+11;
      kku=kku+1;
    end    


      end
      
      end

filename='Book5.xlsx';
          A=tepmcr;
          xlswrite(filename,A)
                 
           break

filename='Book6.xlsx';
          A=denscr;
          xlswrite(filename,A)
                 
           break
filename='Book7.xlsx';
          A=tempfr;
          xlswrite(filename,A)
                 
           break
           
           
       cd('C:\Users\Mac\Desktop\DATA BANK\MCNPX\80');
   W=xlsread('Book5.xlsx');
   
   N=sum(W,1);
   bb=N./10;
  
for jj=1:10
   for j=1:10
  if W(j,jj)~=0
      W(j,jj)=W(j,jj)/bb(jj);
  end
   j=j+1;
   filename='Book5.xlsx';
   A=W;
   xlswrite(filename,A)
   end  
  jj=jj+1; 
end     
           
      W=xlsread('Book6.xlsx');
   
   N=sum(W,1);
   bb=N./10;
  
for jj=1:10
   for j=1:10
  if W(j,jj)~=0
      W(j,jj)=W(j,jj)/bb(jj);
  end
   j=j+1;
   filename='Book6.xlsx';
   A=W;
   xlswrite(filename,A)
   end  
  jj=jj+1; 
end  

   W=xlsread('Book7.xlsx');
   
   N=sum(W,1);
   bb=N./10;
  
for jj=1:10
   for j=1:10
  if W(j,jj)~=0
      W(j,jj)=W(j,jj)/bb(jj);
  end
   j=j+1;
   filename='Book7.xlsx';
   A=W;
   xlswrite(filename,A)
   end  
  jj=jj+1; 
end  
           
           
   
   W=xlsread('Book5.xlsx');
   
  
for jj=1:10
   for j=1:10
  if W(j,jj)~=0
      W(j,jj)=W(j,jj)*tempf(op);
  end
   j=j+1;
   filename='Book5.xlsx';
   A=W;
   xlswrite(filename,A)
   end  
  jj=jj+1; 
end     
           
      W=xlsread('Book6.xlsx');

for jj=1:10
   for j=1:10
  if W(j,jj)~=0
      W(j,jj)=W(j,jj)*tempc(op);
  end
   j=j+1;
   filename='Book6.xlsx';
   A=W;
   xlswrite(filename,A)
   end  
  jj=jj+1; 
end  

   W=xlsread('Book7.xlsx');
  
for jj=1:10
   for j=1:10
  if W(j,jj)~=0
      W(j,jj)=W(j,jj)*densc(op);
  end
   j=j+1;
   filename='Book7.xlsx';
   A=W;
   xlswrite(filename,A)
   end  
  jj=jj+1; 
end 

% ta inja tempf , c , denc jadid ro baraye 10 ghsmate axial darim
 
% gharar dadan d , t darr vorodi mcnp




 cd('C:\Users\Mac\Desktop\DATA BANK\MCNPX\80'); 
fid=fopen('hzp.i','r+');
C=textscan(fid,'%s');
      U=C{1,1}(:);
      t=size(U,1);
      oo=t;
      for gg=1:oo
      if(strmatch('water',U{oo}))&(strmatch('as',U{oo+1}))==1;
          
        ii=oo+7;
       
     WW=zeros(1,10);
cd('C:\Users\Mac\Desktop\DATA BANK\MCNPX\80'); 
fid=fopen('Book7.xlsx','r+');
%X=[1.42 1.065 0.71 0.355 0 -0.355 -0.71 -1.065 -1.42 ];
   
   WW=xlsread('Book7.xlsx');
  % WW=strrep(WW,'E-0','E-');
   %  WW=strrep(WW,'E+0','E+'); 
   
     fprintf(fid,'%s\nXXP\n',WW);
    
   C=textscan(fid,'%s');
   U=C{1,1}(:);
   t=size(U,1);
  
  for e=1:t
      if(strmatch('XXP',U(e)))==1;
        fseek(fid,U(e),'cof');
     %   U(r)=X(1);
       fprintf(fid,'%s\n',X(1)); 
  % fwrite(fid,'GGG');
       end
       
      e=e+1; 
  end  
 
    



% sakhte lib

   W=xlsread('Book5.xlsx');
    WW=xlsread('Book6.xlsx');
 cd('C:\Users\Mac\Desktop\DATA BANK\MCNPX\80'); 
fid=fopen('specs.i','r+');
C=textscan(fid,'%s');
      U=C{1,1}(:);
      t=size(U,1);
      oo=t;
      for gg=1:oo
      if(strmatch('8016.01c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,1}); 
      elseif(strmatch('92235.01c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,1}); 
  elseif(strmatch('92238.01c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,1}); 
    elseif(strmatch('92239.01c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,1}); 
     elseif(strmatch('93239.01c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,1}); 
     elseif(strmatch('94239.01c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,1}); 
     elseif(strmatch('92236.01c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,1}); 
     elseif(strmatch('54135.01c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,1}); 
     elseif(strmatch('54131.01c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,1}); 
     elseif(strmatch('55133.01c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,1}); 
     elseif(strmatch('94240.01c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,1}); 
     elseif(strmatch('94241.01c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,1}); 
 elseif(strmatch('92234.01c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,1}); 
 elseif(strmatch('93237.01c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,1});
     elseif(strmatch('62150.01c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,1}); 
     elseif(strmatch('62152.01c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,1}); 
     elseif(strmatch('55135.01c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,1}); 
     elseif(strmatch('62151.01c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,1}); 
     elseif(strmatch('62149.01c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,1}); 
     elseif(strmatch('36083.01c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,1}); 
    
      elseif(strmatch('8016.02c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,2}); 
      elseif(strmatch('92235.02c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,2}); 
  elseif(strmatch('92238.02c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,2}); 
    elseif(strmatch('92239.02c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,2}); 
     elseif(strmatch('93239.02c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,2}); 
     elseif(strmatch('94239.02c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,2}); 
     elseif(strmatch('92236.02c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,2}); 
     elseif(strmatch('54135.02c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,2}); 
     elseif(strmatch('54131.02c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,2}); 
     elseif(strmatch('55133.02c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,2}); 
     elseif(strmatch('94240.02c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,2}); 
     elseif(strmatch('94241.02c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,2}); 
 elseif(strmatch('92234.02c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,2}); 
 elseif(strmatch('93237.02c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,2});
     elseif(strmatch('62150.02c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,2}); 
     elseif(strmatch('62152.02c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,2}); 
     elseif(strmatch('55135.02c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,2}); 
     elseif(strmatch('62151.02c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,2}); 
     elseif(strmatch('62149.02c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,2}); 
     elseif(strmatch('36083.02c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,2}); 

    elseif(strmatch('8016.03c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,3}); 
      elseif(strmatch('92235.03c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,3}); 
  elseif(strmatch('92238.03c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,3}); 
    elseif(strmatch('92239.03c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,3}); 
     elseif(strmatch('93239.03c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,3}); 
     elseif(strmatch('94239.03c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,3}); 
     elseif(strmatch('92236.03c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,3}); 
     elseif(strmatch('54135.03c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,3}); 
     elseif(strmatch('54131.03c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,3}); 
     elseif(strmatch('55133.03c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,3}); 
     elseif(strmatch('94240.03c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,3}); 
     elseif(strmatch('94241.03c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,3}); 
 elseif(strmatch('92234.03c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,3}); 
 elseif(strmatch('93237.03c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,3});
     elseif(strmatch('62150.03c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,3}); 
     elseif(strmatch('62152.03c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,3}); 
     elseif(strmatch('55135.03c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,3}); 
     elseif(strmatch('62151.03c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,3}); 
     elseif(strmatch('62149.03c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,3}); 
     elseif(strmatch('36083.03c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,3}); 

elseif(strmatch('8016.04c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,4}); 
      elseif(strmatch('92235.04c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,4}); 
  elseif(strmatch('92238.04c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,4}); 
    elseif(strmatch('92239.04c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,4}); 
     elseif(strmatch('93239.04c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,4}); 
     elseif(strmatch('94239.04c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,4}); 
     elseif(strmatch('92236.04c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,4}); 
     elseif(strmatch('54135.04c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,4}); 
     elseif(strmatch('54131.04c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,4}); 
     elseif(strmatch('55133.04c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,4}); 
     elseif(strmatch('94240.04c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,4}); 
     elseif(strmatch('94241.04c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,4}); 
 elseif(strmatch('92234.04c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,4}); 
 elseif(strmatch('93237.04c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,4});
     elseif(strmatch('62150.04c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,4}); 
     elseif(strmatch('62152.04c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,4}); 
     elseif(strmatch('55135.04c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,4}); 
     elseif(strmatch('62151.04c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,4}); 
     elseif(strmatch('62149.04c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,4}); 
     elseif(strmatch('36083.04c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,4}); 

elseif(strmatch('8016.05c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,5}); 
      elseif(strmatch('92235.05c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,5}); 
  elseif(strmatch('92238.05c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,5}); 
    elseif(strmatch('92239.05c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,5}); 
     elseif(strmatch('93239.05c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,5}); 
     elseif(strmatch('94239.05c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,5}); 
     elseif(strmatch('92236.05c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,5}); 
     elseif(strmatch('54135.05c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,5}); 
     elseif(strmatch('54131.05c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,5}); 
     elseif(strmatch('55133.05c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,5}); 
     elseif(strmatch('94240.05c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,5}); 
     elseif(strmatch('94241.05c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,5}); 
 elseif(strmatch('92234.05c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,5}); 
 elseif(strmatch('93237.05c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,5});
     elseif(strmatch('62150.05c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,5}); 
     elseif(strmatch('62152.05c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,5}); 
     elseif(strmatch('55135.05c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,5}); 
     elseif(strmatch('62151.05c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,5}); 
     elseif(strmatch('62149.05c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,5}); 
     elseif(strmatch('36083.05c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,5}); 

elseif(strmatch('8016.06c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,6}); 
      elseif(strmatch('92235.06c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,6}); 
  elseif(strmatch('92238.06c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,6}); 
    elseif(strmatch('92239.06c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,6}); 
     elseif(strmatch('93239.06c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,6}); 
     elseif(strmatch('94239.06c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,6}); 
     elseif(strmatch('92236.06c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,6}); 
     elseif(strmatch('54135.06c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,6}); 
     elseif(strmatch('54131.06c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,6}); 
     elseif(strmatch('55133.06c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,6}); 
     elseif(strmatch('94240.06c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,6}); 
     elseif(strmatch('94241.06c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,6}); 
 elseif(strmatch('92234.06c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,6}); 
 elseif(strmatch('93237.06c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,6});
     elseif(strmatch('62150.06c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,6}); 
     elseif(strmatch('62152.06c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,6}); 
     elseif(strmatch('55135.06c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,6}); 
     elseif(strmatch('62151.06c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,6}); 
     elseif(strmatch('62149.06c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,6}); 
     elseif(strmatch('36083.06c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,6}); 

elseif(strmatch('8016.07c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,7}); 
      elseif(strmatch('92235.07c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,7}); 
  elseif(strmatch('92238.07c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,7}); 
    elseif(strmatch('92239.07c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,7}); 
     elseif(strmatch('93239.07c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,7}); 
     elseif(strmatch('94239.07c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,7}); 
     elseif(strmatch('92236.07c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,7}); 
     elseif(strmatch('54135.07c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,7}); 
     elseif(strmatch('54131.07c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,7}); 
     elseif(strmatch('55133.07c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,7}); 
     elseif(strmatch('94240.07c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,7}); 
     elseif(strmatch('94241.07c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,7}); 
 elseif(strmatch('92234.07c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,7}); 
 elseif(strmatch('93237.07c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,7});
     elseif(strmatch('62150.07c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,7}); 
     elseif(strmatch('62152.07c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,7}); 
     elseif(strmatch('55135.07c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,7}); 
     elseif(strmatch('62151.07c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,7}); 
     elseif(strmatch('62149.07c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,7}); 
     elseif(strmatch('36083.07c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,7}); 

elseif(strmatch('8016.08c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,8}); 
      elseif(strmatch('92235.08c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,8}); 
  elseif(strmatch('92238.08c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,8}); 
    elseif(strmatch('92239.08c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,8}); 
     elseif(strmatch('93239.08c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,8}); 
     elseif(strmatch('94239.08c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,8}); 
     elseif(strmatch('92236.08c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,8}); 
     elseif(strmatch('54135.08c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,8}); 
     elseif(strmatch('54131.08c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,8}); 
     elseif(strmatch('55133.08c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,8}); 
     elseif(strmatch('94240.08c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,8}); 
     elseif(strmatch('94241.08c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,8}); 
 elseif(strmatch('92234.08c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,8}); 
 elseif(strmatch('93237.08c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,8});
     elseif(strmatch('62150.08c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,8}); 
     elseif(strmatch('62152.08c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,8}); 
     elseif(strmatch('55135.08c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,8}); 
     elseif(strmatch('62151.08c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,8}); 
     elseif(strmatch('62149.08c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,8}); 
     elseif(strmatch('36083.08c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,8}); 

elseif(strmatch('8016.09c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,9}); 
      elseif(strmatch('92235.09c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,9}); 
  elseif(strmatch('92238.09c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,9}); 
    elseif(strmatch('92239.09c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,9}); 
     elseif(strmatch('93239.09c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,9}); 
     elseif(strmatch('94239.09c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,9}); 
     elseif(strmatch('92236.09c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,9}); 
     elseif(strmatch('54135.09c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,9}); 
     elseif(strmatch('54131.09c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,9}); 
     elseif(strmatch('55133.09c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,9}); 
     elseif(strmatch('94240.09c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,9}); 
     elseif(strmatch('94241.09c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,9}); 
 elseif(strmatch('92234.09c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,9}); 
 elseif(strmatch('93237.09c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,9});
     elseif(strmatch('62150.09c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,9}); 
     elseif(strmatch('62152.09c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,9}); 
     elseif(strmatch('55135.09c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,9}); 
     elseif(strmatch('62151.09c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,9}); 
     elseif(strmatch('62149.09c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,9}); 
     elseif(strmatch('36083.09c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,9}); 

elseif(strmatch('8016.10c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,10}); 
      elseif(strmatch('92235.10c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,10}); 
  elseif(strmatch('92238.10c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,10}); 
    elseif(strmatch('92239.10c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,10}); 
     elseif(strmatch('93239.10c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,10}); 
     elseif(strmatch('94239.10c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,10}); 
     elseif(strmatch('92236.10c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,10}); 
     elseif(strmatch('54135.10c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,10}); 
     elseif(strmatch('54131.10c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,10}); 
     elseif(strmatch('55133.10c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,10}); 
     elseif(strmatch('94240.10c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,10}); 
     elseif(strmatch('94241.10c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,10}); 
 elseif(strmatch('92234.10c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,10}); 
 elseif(strmatch('93237.10c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,10});
     elseif(strmatch('62150.10c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,10}); 
     elseif(strmatch('62152.10c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,10}); 
     elseif(strmatch('55135.10c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,10}); 
     elseif(strmatch('62151.10c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,10}); 
     elseif(strmatch('62149.10c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,10}); 
     elseif(strmatch('36083.10c',U{oo}))==1;
    fprintf(fid,'%s/n',W{1,10}); 


  % coolant lib
  
%  8016.11c    566.15     8016.70c     8016.71c
%1001.11c    566.15     1001.70c     1001.71c
%5010.11c    566.15     5010.70c     5010.71c
%5011.11c    566.15      5011.70c     5011.71c
%lwtr.100t     566.15      lwtr.15t        lwtr.16t

  
     if(strmatch('8016.11c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1}); 
    if(strmatch('1001.11c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('5010.11c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('5011.11c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('lwtr.100t',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    
        if(strmatch('8016.12c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1}); 
    if(strmatch('1001.12c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('5010.12c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('5011.12c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('lwtr.101t',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
         if(strmatch('8016.13c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1}); 
    if(strmatch('1001.13c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('5010.13c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('5011.13c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('lwtr.103t',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
         if(strmatch('8016.14c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1}); 
    if(strmatch('1001.14c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('5010.14c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('5011.14c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('lwtr.104t',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
         if(strmatch('8016.15c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1}); 
    if(strmatch('1001.15c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('5010.15c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('5011.15c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('lwtr.105t',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
         if(strmatch('8016.16c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1}); 
    if(strmatch('1001.16c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('5010.16c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('5011.16c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('lwtr.106t',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
         if(strmatch('8016.17c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1}); 
    if(strmatch('1001.17c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('5010.17c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('5011.17c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('lwtr.107t',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
         if(strmatch('8016.18c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1}); 
    if(strmatch('1001.18c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('5010.18c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('5011.18c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('lwtr.108t',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
         if(strmatch('8016.19c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1}); 
    if(strmatch('1001.19c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('5010.19c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('5011.19c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('lwtr.109t',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
         if(strmatch('8016.20c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1}); 
    if(strmatch('1001.20c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('5010.20c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('5011.20c',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    if(strmatch('lwtr.110t',U{oo}))==1;
    fprintf(fid,'%s/n',WW{1,1});
    
    
    
    
      end
      
      
      
      
      
      
      
      
      
      end




    end
   
   
   
   
end