%% Main: Train MLP
% Read data from excel files and train MLP and finaly plot result

%% Initialization

TargetSheetNum=3; % target data sheet number in excel(1 to 31)
Ntrain=80; % percent of data used for training(0% to 100%)
Error=2e-3; % ANN goal error
ShowWin=1; % Show training windows (1: Show, 0: Dont Show
OutNum=1; % for sheet with more than 1 output, determine the output number to plot;
MLPArch=[10 10 10]; % MLP Architecture: Number of tangentsigmoid
ANNPlot=0; % 1: Ploting Training & Performance plots, 0: don't plot Training & Performance plots

%% Create Train and Test Data

% Read data from excel file
InputDat=xlsread('input.xlsx',1);
TargetDat=xlsread('target.xlsx',TargetSheetNum);

InputDat=InputDat';
TargetDat=TargetDat';

% InputDat=mapminmax(InputDat',-1,1);
% TargetDat=mapminmax(TargetDat',-1,1);

N=size(TargetDat,2);
TarDim=size(TargetDat,1);

% Create random index for train and test data
Ntest=N-floor(Ntrain*N/100);
Ntrain=N-Ntest;
TestInd=zeros(N,1);
while sum(TestInd)<Ntest
    a=floor(rand*179)+1;
    if TestInd(a)==0
        TestInd(a)=1;
    end
end
TrainInd=imcomplement(TestInd);

TrainInd=logical(TrainInd);
TestInd=logical(TestInd);

TrainIn=InputDat(:,TrainInd);
TrainOut=TargetDat(:,TrainInd);
TestIn=InputDat(:,TestInd);
TestOut=TargetDat(:,TestInd);

if TargetSheetNum==1
    SheetChar=['Sheet' num2str(TargetSheetNum)];
elseif TargetSheetNum>1
    SheetChar=['Sheet' num2str(TargetSheetNum+1)];
end

%% Design & Train MLP

net=newff(TrainIn,TrainOut,MLPArch,{'tansig'});

% net.trainFcn = 'trainlm';
net.trainParam.goal=Error;
net.divideParam.valRatio=0;
net.divideParam.testRatio=0;
net.divideParam.trainRatio=1;
net.trainParam.epochs=200;
net.Performparam.Normalization='standard';

net.trainParam.showWindow=ShowWin;
[net, tr]=trainlm(net,TrainIn,TrainOut);
netOutTest=sim(net,TestIn);
netOutTrain=sim(net,TrainIn);

%% Plot Data

figure(1)
subplot(2,1,1)
cla
plot(1:Ntrain,TrainOut(OutNum,:),'-ob','Linewidth',2);hold on
plot(1:Ntrain,netOutTrain(OutNum,:),'-sk','Linewidth',2);
xlim([1 Ntrain])
D=[TrainOut(OutNum,:),netOutTrain(OutNum,:)];
M=mean(D);d1=abs(M-min(D));d2=abs(max(D)-M);
ylim([M-2*d1 M+2*d2])
xlabel('Sample')
title([SheetChar ' & Output' num2str(OutNum) ' Train Data'],'Fontweight','Bold','Fontsize',14)
set(gcf,'name',[SheetChar ' & Output' num2str(OutNum) ' Train Data'],'NumberTitle','off')
legend('Real Value','Network Output')
subplot(2,1,2)
cla
plot(1:Ntest,TestOut(OutNum,:),'-ob','Linewidth',2);hold on
plot(1:Ntest,netOutTest(OutNum,:),'-sk','Linewidth',2);
xlim([1 Ntest])
D=[TestOut(OutNum,:),netOutTest(OutNum,:)];
M=mean(D);d1=abs(M-min(D));d2=abs(max(D)-M);
ylim([M-2*d1 M+2*d2])
xlabel('Sample')
title([SheetChar ' & Output' num2str(OutNum) ' Test Data'],'Fontweight','Bold','Fontsize',14)
legend('Real Value','Network Output')

if ANNPlot==1
    figure(2)
    plotperform(tr);
    H=get(gca,'title');
    A=get(H,'String');
    set(H,'String',[SheetChar ' & Output' num2str(OutNum) ': ' A])
    
    figure(3)
    plottrainstate(tr)
end
