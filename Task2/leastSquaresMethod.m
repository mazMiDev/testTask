function [b1, b2, b3] = leastSquaresMethod(X, Y)

%Составим матричное уравнение Ax = B

A = [[sum(X.^2), sum(X.^4), sum(X.^6)]; ...
    [sum(X.^4), sum(X.^6), sum(X.^8)]; ...
    [sum(X.^6), sum(X.^8), sum(X.^10)]];

B = [sum(X.*Y), sum((X.^3).*Y), sum((X.^5).*Y)];

A(:,4) = B;

R = rref(A);

b1 = R(1, 4);
b2 = R(2, 4);
b3 = R(3, 4);

end

