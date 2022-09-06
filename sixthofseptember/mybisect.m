function [x e] = mybisect(f, a, b, n)
  % Does n iteration of bisection method for a function f

  %inputs:
  %   f - function
  %   a,b - left and right  edges of the enterval
  %   n -  the number of bisections to do

  % Outputs:
  %   f - estimated solution for f(x) = 0
  %   e - an upper bound on the error

  % first, evaluate  at the ends & makes sure there is a sign vhange:
  c = f(a);
  d = f(b);
  if c*d > 0
    error('Function has same sign at both endpoints')
  end

  disp('       x     y')
  for i = 1:n
    % find the mid_point and f(m)
    m = (a+b)/2;
    y = f(m);
    disp([      m       y])
    if y == 0 % the equation is solved exactly
      a = m; b = m;
      break % jumps out of the loop
    endif
    % decide which half to keep, so that the signs end differ
    if c*y <0
      b = m;
      else a = m;
    endif
  endfor

  % set the best estimate for x and the error bound
  x = (a+b)/2;
  e = (b-a)/2;

