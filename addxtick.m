function [] = addxtick( tk, tklbl )
%ADDXTICK --- Add new tick to x-axis
%   Ex.    addxtick(3.14)
%   Ex2.  addxtick(3.14, 'Pi')

if nargin==1
    set(gca,'XTick',unique(sort([get(gca,'XTick'), tk ] )));
else
    temp = cellstr(get(gca,'XTickLabel'));
    temp = {temp{:},tklbl};
    [temp2,idx] = sort([get(gca,'XTick'),tk]);
    [temp2,idx2]=unique(temp2);
    idx=idx(idx2);
    set(gca,'XTick',temp2);
    set(gca,'XTickLabel',temp(idx));    
end

end

