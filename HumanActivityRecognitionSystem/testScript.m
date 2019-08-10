netRes = net(X_test');
t = full(ind2vec(y_test', 6));


C = plotconfusion(t, netRes);

h = gca;
h.XTickLabel = {'WALKING','WALKING-UPSTAIRS','WALKING-DOWNSTAIRS','SITTING','STANDING','LAYING',''};
h.YTickLabel = {'WALKING','WALKING-UPSTAIRS','WALKING-DOWNSTAIRS','SITTING','STANDING','LAYING',''};
h.YTickLabelRotation = 45;


%EVAL = Evaluate(ACTUAL,PREDICTED) 
%EVAL = Evaluate(t,netRes) ;


