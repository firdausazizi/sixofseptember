function x = mysecant(f, x0, x1, n)
  % Solves f(x)=0 by doing n steps of the secant method starting with x0 and x1

  y0 = f(x0); y1 = f(x1);
  for i = 1:n
    x = x1 - (x1-x0)*y1/(y1-y0); %Secant formula
    y = f(x);

    % Update number  to get ready for next iteration
    x0 = x1; y0 = y1;
    x1 = x ; y1 = y;
  endfor

