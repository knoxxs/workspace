clear all;

x = [-5:0.001:5];
y = [-5:0.001:5];
z = sigmoid(x,y);

figure(1);
plot3(x,y,z);
title('sigmoidal plot');
xlabel('x');
ylabel('y');
zlabel('Sync');
grid on;
data = [x' y' z'];
data(data(:,1)==0 | data(:,2)==0 | data(:,3)==0,:)=[];
%trnData = data(1:floor(length(data)/2), :);
%chkData = data(floor(length(data)/2) + 1:end , :);
trnData = data(1:2:end, :);
chkData = data(2:2:end , :);

numMF = [3 3];
inmfType = char('gbellmf','gbellmf');
opmfType = char('linear');

fismat = genfis1(trnData, numMF, inmfType, opmfType);
%fismat = genfis1(trnData);
figure(2)
subplot(2,1,1)
plotmf(fismat, 'input', 1)
subplot(2,1,2)
plotmf(fismat, 'input', 2)

[fismat1,error1,ss,fismat2,error2] = anfis(trnData,fismat,[20 0],[],chkData);
figure(3)
subplot(2,1,1)
plotmf(fismat1, 'input', 1)
subplot(2,1,2)
plotmf(fismat1, 'input', 2)

figure(4)
plot([error1 error2]);
hold on; plot([error1 error2], '*');
xlabel('Epochs');
ylabel('RMSE (Root Mean Squared Error)');
title('Error Curves');

figure(5)
anfis_output = evalfis([trnData(:,1:2); chkData(:,1:2)],fismat2);
subplot(211), plot3(data(:,1), data(:,2), [data(:,3) anfis_output]);
xlabel('x');
ylabel('y');
zlabel('Sync');
grid on;
title('Sync and ANFIS Prediction');
subplot(212), plot3(data(:,1), data(:,2), data(:,3) - anfis_output);
xlabel('x');
ylabel('y');
zlabel('Sync');
grid on;
title('Prediction Errors');