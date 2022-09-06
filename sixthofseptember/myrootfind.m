function [a,b] = myrootfind(f, a0, b0)
  % looks for subinterval where the function changes sign
  % inputs:
  %   a0 - the left edge of the domain
  %   b0 - the right edge of the domain

  % output:
  %   a- array giving the left edges of the subintervals
  %   b -  array giving the right edges of the subintervals

  n = 1001; % number of the test points to use
  a = []; b = []; %starts with empty arrays

  % SPlit the interval into n-1 intervals & evaluate at the break points
  x = linspace(a0, b0, n);
  y = f(x);

  %loop through the intervals
  for i = 1:(n-1)
    if y(i)*y(i+1) <= 0; %record sign chanfge
      a = [a x(i)];
      b = [b x(i+1)];
    endif
  endfor

  if size(a,1) == 0
    warning('no roots were found')
  endif

