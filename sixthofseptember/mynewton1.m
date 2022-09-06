function x = myNewton1(f, f1, x0, n, tol)
  % Solves f(x) = 0 by doing n stepsof newton's methods starting at x0

  % Input:
  %       f - function
  %       f1 - its direvative
  %       x0 - starting guess, a number
  %       n - number of iteration
  %       tol - desired tolerance, and prints warning if |f(x)| > tol
  % output:  x- the approximate solution

  x = x0;
  for i = 1:n
    x = x-f(x)/f1(x); %Newtoons formula
  endfor
r = abs(f(x))
if r > tol
  warning('the desired accuracy was not attained')
end

