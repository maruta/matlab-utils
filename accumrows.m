function [ A ] = accumrows( subs, val, sz)
% ACCUMROWS create matrix by accumulating rows of val specified by subs
%
% This function is a matrix version of the standard ACCUMARRAY.
% USAGE:
%  A = ACCUMARRAY(SUBS,VAL)
%   A(k,:) <- sum(VAL(SUBS==k,:), 1)
%
%  A = ACCUMARRAY(SUBS,VAL,SZ)
%   size(A,1) set to be SZ
%   if SZ is not specified, size(A,1)=max(subs)

if nargin==2
    sz=max(subs);
end

C=sparse(subs,1:size(val,1),ones(size(val,1),1),sz,size(val,2));
A=C*val;

end

