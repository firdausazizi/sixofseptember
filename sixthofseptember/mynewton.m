function x = mynewton(f, f1, x0, n)
  % Solves f(x) = 0 by doing n stepsof newton's methods starting at x0

  % Input:
  %       f - function
  %       f1 - its direvative
  %       x0 - starting guess, a number
  %       n - number of iteration
  % output:  x- the approximate solution

  x = x0;
  for i = 1:n
    x = x-f(x)/f1(x); %Newtoons formula
  endfor

