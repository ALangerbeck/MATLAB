%% 3a and initalization
A=[210.5665 215.9568 375.3999;
     309.2944 317.1409 550.7982;
     227.6848 232.4327 403.2554];
  b=[-0.4816;-0.7068;-0.5182];
  xref=A\b
  
%% 3b
kmax = 0;
for n =1:1000
    db = 0.2*rand(3,1)-0.01;
    dx = A\(b+db) - xref;
    
    k = (norm(dx)/norm(xref))/(norm(db)/norm(b));
    if k>kmax
        kmax = k;
    end
        
    
end

kmax %Around 10^3 so probably fine

%% 3c
CondA = cond(A)
kmax