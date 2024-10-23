tic
net2=patternnet([50,50],'trainscg');
net2.trainparam.epochs=1000;
net2.trainParam.min_grad = 0;
net2.trainParam.goal = 0;
net2.trainParam.lr = 0.001;
net2.trainParam.max_fail = 100;
net2.divideParam.trainRatio = 80/100; 
net2.divideParam.valRatio = 10/100;
net2.divideParam.testRatio = 10/100;

[net2,tr] = train(net2,train_sample,train_sample);
toc