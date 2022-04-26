function[x]=RampaDiscreta(n,p)
    A=n-p;
    B=n<p;
    A(B)=0;
    x=A;
end