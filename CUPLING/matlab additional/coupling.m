function coupling= f(i,v,C,U,t)
i=0;
v=1;
t=0;
clear all;
clc;
i=input('please enter iteration number=');
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
      for p=1:t
         if(strmatch('1tally fluctuation charts'))          
          
      end
      
  
  

   fclose(fid); 
   % yek shart baraye pak kardan bezar......sharayet barghrar shd
   delete('out1.o','runtpe','srctp');
   
   
   
   
end    
end

