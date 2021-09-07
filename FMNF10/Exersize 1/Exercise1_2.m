%% 2a
A = [10.2 0 -1.1 ;
    0.1 12.0 0;
    0.1 0.2 -9.3];
b = [1;2;3];

x = [1;1;1];
LD = tril(A);
U = triu(A,1);
for n = 1:10
        x = LD\(b-U*x);
end

x
xref = A\b

%% 2b
% Norm B should  be less than 1, so
normB = norm(LD\U)
%smaller the better