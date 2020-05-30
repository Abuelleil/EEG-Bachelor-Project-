a = 1;
while a < 8
t1 = "S00"+a+"R2.edf";
[header,S] = edfread(t1);
S(65,:)=[];
b = 1;
while b < 65 
signal(b).d = S(b,:);
n = 1;
x = 1;
y = 61;
while n < 161
    v1(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+61;
    y = y+61;
    n = n+1;
end
b = b+1;
end
a = a+2;
end

a = 1;
while a < 8
t1 = "S00"+a+"R6.edf";
[header,S] = edfread(t1);
S(65,:)=[];
b = 1;
while b < 65 
signal(b).d = S(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v2(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end

a = 1;
while a < 8
t1 = "S00"+a+"R4.edf";
[header,S] = edfread(t1);
S(65,:)=[];
b = 1;
while b < 65 
signal(b).d = S(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v3(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end

load('Dataset4Movements.mat');
load('Dataset4Movements2.mat');
a = 1;
while a < 2
b = 1;
while b < 4
signal(b).d = A01LH(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v4(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end

a = 2;
while a < 3
b = 1;
while b < 4
signal(b).d = A02LH(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v4(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end

a = 1;
while a < 2
b = 1;
while b < 4
signal(b).d = A01RH(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v5(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end

a = 2;
while a < 3
b = 1;
while b < 4
signal(b).d = A02RH(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v5(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end

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

a = 2;
while a < 3
b = 1;
while b < 4
signal(b).d = A02F(b,:);
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
while a < 2
b = 1;
while b < 4
signal(b).d = A01T(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v7(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end

a = 2;
while a < 3
b = 1;
while b < 4
signal(b).d = A02T(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v7(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end