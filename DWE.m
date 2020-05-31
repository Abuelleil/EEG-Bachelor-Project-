EpochSignal;
a = 1;
h=1;

sa(1).d = v3(1).e(13); %Dataset1.1, Fist, C3 Channel
sa(2).d = v3(3).e(13); %Dataset1.2, Fist, C3 Channel 
sa(3).d = v3(5).e(13); %Dataset1.3, Fist, C3 Channel
sa(4).d = v3(7).e(13); %Dataset1.4, Fist, C3 Channel 
sa(5).d = v6(1).e(1);  %Dataset2.1 , Foot, C3 Channel
sa(6).d = v6(2).e(1);  %Dataset2.2 , Foot, C3 Channel
sa(7).d = v6(3).e(1);  %Dataset2.3 , Foot, C3 Channel
sa(8).d = v6(4).e(1);  %Dataset2.4 , Foot, C3 Channel
sa(9).d = v8(1).e(1);  %Dataset3.1 , Finger, C3 Channel
sa(10).d = v8(2).e(1);  %Dataset3.2 , Finger, C3 Channel
sa(11).d = v8(3).e(1);  %Dataset3.3 , Finger, C3 Channel
sa(12).d = v8(4).e(1);  %Dataset3.4 , Finger, C3 Channel
sa(13).d = v3(1).e(50); %Dataset1.1, Fist, C4 Channel
sa(14).d = v3(3).e(50); %Dataset1.2, Fist, C4 Channel
sa(15).d = v3(5).e(50); %Dataset1.3, Fist, C4 Channel
sa(16).d = v3(7).e(50); %Dataset1.4, Fist, C4 Channel
sa(17).d = v6(1).e(3);  %Dataset2.1 , Foot, C4 Channel
sa(18).d = v6(2).e(3);  %Dataset2.2 , Foot, C4 Channel
sa(19).d = v6(3).e(3);  %Dataset2.3 , Foot, C4 Channel
sa(20).d = v6(4).e(3);  %Dataset2.4 , Foot, C4 Channel
sa(21).d = v8(1).e(3);  %Dataset3.1 , Finger, C4 Channel
sa(22).d = v8(2).e(3);  %Dataset3.2 , Finger, C4 Channel
sa(23).d = v8(3).e(3);  %Dataset3.3 , Finger, C4 Channel
sa(24).d = v8(4).e(3);  %Dataset3.4 , Finger, C4 Channel
sa(25).d = v3(1).e(48); %Dataset1.1, Fist, Cz Channel
sa(26).d = v3(3).e(48); %Dataset1.2, Fist, Cz Channel
sa(27).d = v3(5).e(48); %Dataset1.3, Fist, Cz Channel
sa(28).d = v3(7).e(48); %Dataset1.4, Fist, Cz Channel
sa(29).d = v6(1).e(2);  %Dataset2.1 , Foot, CZ Channel
sa(30).d = v6(2).e(2);  %Dataset2.2 , Foot, CZ Channel
sa(31).d = v6(3).e(2);  %Dataset2.3 , Foot, CZ Channel
sa(32).d = v6(4).e(2);  %Dataset2.4 , Foot, CZ Channel
sa(33).d = v8(1).e(2);  %Dataset3.1 , Finger, CZ Channel
sa(34).d = v8(2).e(2);  %Dataset3.2 , Finger, CZ Channel
sa(35).d = v8(3).e(2);  %Dataset3.3 , Finger, CZ Channel
sa(36).d = v8(4).e(2);  %Dataset3.4 , Finger, CZ Channel

fs = 160; % Sampling frequency
waveletFunction = 'db4';
f = 1;
b = 1;
while a < 13
sb = sa(a).d;

while b < 161
s = sb.eeg(b).d;
N=length(s);
[C,L] = wavedec(s,5,waveletFunction);
[Ea,Ed] = wenergy(C,L);
E(f).d = Ed;
AE(f,6) = Ea; 
f = f+1;
b = b+1;
end
e=1;
while e<161
c=1;
while c < 6
AE(h,c) = E(h).d(c);
c = c+1;
end

h = h+1;
e = e+1;
end
a = a+1;
b=1;
end
b = 1;
while a < 25
sb = sa(a).d;

while b < 161
s = sb.eeg(b).d;
N=length(s);
[C,L] = wavedec(s,5,waveletFunction);
[Ea,Ed] = wenergy(C,L);
E(f).d = Ed;
AE(f,6) = Ea; 
f = f+1;
b = b+1;
end

e=1;
while e<161
c=1;
while c < 6
AE(h,c) = E(h).d(c);
c = c+1;
end
h = h+1;
e = e+1;
end
a = a+1;
b=1;
end
b = 1;
while a < 37
sb = sa(a).d;

while b < 161
s = sb.eeg(b).d;
N=length(s);
[C,L] = wavedec(s,5,waveletFunction);
[Ea,Ed] = wenergy(C,L);
E(f).d = Ed;
AE(f,6) = Ea; 
f = f+1;
b = b+1;
end

e=1;
while e<161    
c=1;
while c < 6
AE(h,c) = E(h).d(c);
c = c+1;
end 
h = h+1;
e = e+1;
end
a = a+1;
b=1;
end

t = 1;
while t < 5761
    t2 = 1;
    while t2 < 641
        AE(t,7) = 0;
        t2 = t2+1;
        t = t+1;
    end
    t2 = 1;
    while t2 < 641
        AE(t,7) = 1;
        t2 = t2+1;
        t = t+1;
    end
    
    t2 = 1;
    while t2 < 641
        AE(t,7) = 2;
        t2 = t2+1;
        t = t+1;
    end
    
end




save('EEGENERGY.mat','AE');