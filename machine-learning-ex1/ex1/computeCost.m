function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
norm_X=X(:,2);
if (max(norm_X)>1)&&(min(norm_X)<-1)
	range=max(X(:,2))-min(X(:,2));
	mean=mean(X(:,2));
	norm_X=(X(:,2)-mean)/range;
	X(:,2)=norm_X;
end
J=sum((X*theta-y).^2)/(2*m);

% =========================================================================

end
