function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

	

hTheta = (theta.*X');
hTheta = hTheta';
deltaCol1 = hTheta(:,1);
deltaCol2 = hTheta(:,2);
M = deltaCol1 + deltaCol2 - y;
delta1 = sum(M);
delta2 = sum(M.*X(:,2));

delta = [delta1; delta2];

temp = theta - delta .* (alpha / m);
theta = temp;

if (num_iters == 1)
delta
theta
end




    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
