function [ out ] = signatureCheck( delta, gamma, beta, alpha,p,x )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

out = modulo(modExp(beta,gamma,p)*modExp(gamma,delta,p),p) == modExp(alpha,x,p);


end

