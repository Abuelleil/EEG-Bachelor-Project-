load('Dataset2Test.mat');
A01F = transpose(A01F);
A01F = resample(A01F,180,160);
A01F = transpose(A01F);
a = 1;
while a < 2
b = 1;
while b < 4
signal(b).d = A01F(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v6(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end

a = 1;
h=1;
sa(1).d = v6(1).e(1);  %Dataset2.1 , Foot, C3 Channel
sa(2).d = v6(1).e(3);  %Dataset2.1 , Foot, C4 Channel
sa(3).d = v6(1).e(2);  %Dataset2.1 , Foot, CZ Channel
fs = 160; % Sampling frequency
waveletFunction = 'db4';
f = 1;
b = 1;
while a < 4
sb = sa(a).d;

while b < 161
s = sb.eeg(b).d;
N=length(s);
[C,L] = wavedec(s,5,waveletFunction);
[Ea,Ed] = wenergy(C,L);
E(f).d = Ed;
f = f+1;
b = b+1;

end

e=1;
while e<161
c=1;
while c < 6
TestC2(h,c) = E(h).d(c);
c = c+1;
end
h = h+1;
e = e+1;
end
a = a+1;
b=1;
end



save('EEGENERGYTEST.mat','TestC2');