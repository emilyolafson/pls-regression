function [] = plsregression(X, Y)
    [n,p] = size(X)
    % plsregress already normalizes variables
    [Xloadings, Yloadings, Xscores, Yscores, betaPLS10, PLSPctVar] = plsregress(X, Y, 10, 'cv', 23); %ten components

    plot(1:10, cumsum(100*PLSPctVar(2,:)), '-bo');
    xlabel('Number of PLS components');
    ylabel('Percent Variance explained in Y');

    %cross-validation

    %PRESS= For a random effect model, the overall quality of a PLS
    % regression model using L latent variables is evaluated by using L variables to compute—according
    % to the random model—the matrix denoted equation image which stores the predicted values of the observations for
    % the dependent variables. 
    % The quality of the prediction is then evaluated as the similarity between equation image and equation image.
    % PRESS = ||Y-Y{L}||^2
end
