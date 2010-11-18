function [] = addytick( tk, tklbl )
%ADDYTICK --- Add new tick to y-axis
%   Ex.    addytick(3.14)
%   Ex2.  addytick(3.14, 'Pi')

if nargin==1
    set(gca,'YTick',unique(sort([get(gca,'YTick'), tk ] )));
else
    temp = cellstr(get(gca,'YTickLabel'));
    temp = {temp{:},tklbl};
    [temp2,idx] = sort([get(gca,'YTick'),tk]);
    [temp2,idx2]=unique(temp2);
    idx=idx(idx2);
    set(gca,'YTick',temp2);
    set(gca,'YTickLabel',temp(idx));    
end

end

