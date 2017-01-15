function [ out ] = signatureCheck( delta, gamma, beta, alpha,p,x )
%SIGNATURE_CHECK Returns 1 if the signature is valid for the message x, 0
%otherwise
out = modulo(modExp(beta,gamma,p)*modExp(gamma,delta,p),p) == modExp(alpha,x,p);
end

