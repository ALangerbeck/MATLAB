  %% 1ab
  R1 = 3;
  R2 = 2;
  R3 = 8;
  U1 = 10;
  U2 = 0.6;
  A = [ 1,-1,-1;
        R1,R2,0;
        0,R2,-R3];
  b = [0;U1;U2];
  x = gausSolve(A,b)
  x_mat = A\b
  
%% 1c
A = rand(10);
b = rand(10,1);
x = gausSolve(A,b)
x_mat = A\b

function [L,U] = LUfact(A,n)
U=A; %U starts as n x n system matrix A
L=eye(n); %L starts as n x n identity matrix
%Colums
for k=1:n-1
%Rows j
    for j = k+1:n
        %Compute and store L
        L(j,k) = U(j,k)/U(k,k);
        U(j,k:n)=U(j,k:n)-L(j,k)*U(k,k:n);
    end
end
end

 function y=forwsubst(L,y,n)
  for k=2:n
    y(k)=y(k)-L(k,1:k-1)*y(1:k-1);
  end
 end
  
  function y=backsubst(U,y,n)
  y(n)=y(n)/U(n,n);
  for k=n-1:-1:1
    y(k)=(y(k)-U(k,k+1:n)*y(k+1:n))/U(k,k);
  end
  end
  
  function x = gausSolve(A,b)
  n = length(b);
  [L,U] = LUfact(A,n);
  y = forwsubst(L,b,n);
  x=backsubst(U,y,n)
  end
  