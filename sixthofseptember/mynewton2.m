function x = myNewton2(f, f1, x0, n, tol)
  % Solves f(x) = 0 by doing n stepsof newton's methods starting at x0

  % Input:
  %       f - function
  %       f1 - its direvative
  %       x0 - starting guess, a number
  %       n - number of iteration
  %       tol - desired tolerance, and prints warning if |f(x)| > tol
  % output:  x- the approximate solution

  x = x0;
  y = f(x);
  i = 0;

  while abs(y) > tol && i<1000
      x = x-f(x)/f1(x); %Newtoons formula
      y = f(x);
      i = i + 1;
  end




