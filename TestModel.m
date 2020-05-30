
t1 = "S004R2.edf";
[header,S] = edfread(t1);
S(65,:)=[];
b = 1;
while b < 65 
signal(b).d = S(b,:);
n = 1;
x = 1;
y = 122;
while n < 81
    v1(1).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+122;
    y = y+122;
    n = n+1;
end
b = b+1;
end


t1 = "S004R6.edf";
[header,S] = edfread(t1);
S(65,:)=[];
b = 1;
while b < 65 
signal(b).d = S(b,:);
n = 1;
x = 1;
y = 246;
while n < 81
    v2(1).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+246;
    y = y+246;
    n = n+1;
end
b = b+1;
end


t1 = "S004R4.edf";
[header,S] = edfread(t1);
S(65,:)=[];
b = 1;
while b < 65 
signal(b).d = S(b,:);
n = 1;
x = 1;
y = 246;
while n < 81
    v3(1).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+246;
    y = y+246;
    n = n+1;
end
b = b+1;
end

a = 1;
h=1;
%%sa(1).d = v1(1).e(13); %First Subject, Baseline 2, C3 Channel
%%sa(1).d = v2(1).e(13); %First Subject, First Task, C3 Channel
sa(1).d = v3(1).e(13); %First Subject, Second Task, C3 Channel
%%sa(2).d = v1(1).e(50); %First Subject, Baseline 2, C4 Channel
%%sa(2).d = v2(1).e(50); %First Subject, First Task, C4 Channel
sa(2).d = v3(1).e(50); %First Subject, Second Task, C4 Channel
%%sa(3).d = v1(1).e(48); %First Subject, Baseline 2, Cz Channel
%%sa(3).d = v2(1).e(48); %First Subject, First Task, Cz Channel
sa(3).d = v3(1).e(48); %First Subject, Second Task, Cz Channel
fs = 160; % Sampling frequency
waveletFunction = 'db4';
f = 1;
b = 1;
while a < 4
sb = sa(a).d;

while b < 81
s = sb.eeg(b).d;
N=length(s);
[C,L] = wavedec(s,5,waveletFunction);
[Ea,Ed] = wenergy(C,L);
E(f).d = Ed;
f = f+1;
b = b+1;

end

e=1;
while e<81
c=1;
while c < 6
AE2(h,c) = E(h).d(c);
c = c+1;
end
h = h+1;
e = e+1;
end
a = a+1;
b=1;
end



save('EEGENERGYTEST.mat','AE2');