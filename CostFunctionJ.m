

function J =  CostFunctionJ (X,Y,theta)
% X is design matrix containing our training examples.
%Y is the class labels
m = size(X,1);                                   		 %number of training examples
predictions = theta' * X;     		 %prediction of hypothesis on all m examples
sqrErrors = (predictions-Y) .^2;                   %squared errors
J = 1/(2*m) * sum(sqrErrors);
