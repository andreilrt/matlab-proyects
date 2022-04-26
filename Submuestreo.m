function[y]=Submuestreo(s,n, a)
    y1 = downsample(s,a);
    p = (n-length(y1))/2;
    p = round(p);
    m = length(y1)+p*2;
    if m > n 
        y = [zeros(1,p) y1 zeros(1,p-1)];
    else
        y = [zeros(1,p) y1 zeros(1,p)];
    end
end