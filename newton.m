function [x, fx, n] = newton (f,g,x0,tol,N)
  
  k = 1;
  while (k < N)
    x1 = x0 - (f(x0)/g(x0));
    if (abs(x1 - x0) < tol || abs(x1 - x0)/ abs(x1) < tol || abs(f(x1)) < tol)
      x = x1;
      fx = f(x);
      n = k;
      break
    endif
    k++;
    x0 = x1;
  endwhile