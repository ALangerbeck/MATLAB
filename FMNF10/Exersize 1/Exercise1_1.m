function [L,U] = LUfact(A,n)
U=A; %U starts as n x n system matrix A
L=eye(n); %L starts as n x n identity matrix