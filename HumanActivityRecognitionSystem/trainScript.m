x = X_train';

t = y_train';
%t = transpose(t);
%t2 = repmat(t,1,6);
%t2 = transpose(t2);
%disp(t2);
t = full(ind2vec(t, 6));
%disp(t);

setdemorandstream(491218382)

net = patternnet(15);

% Set up Division of Data for Training, Validation, Testing
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;


[net,tr] = train(net,x,t);
nntraintool

view(net)
plotperform(tr)
%plotregression(t,net(x),'Regression');