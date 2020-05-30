EpochSignal;
a = 1;
h=1;
sa(1).d = v1(1).e(13); %First Subject, Baseline 2, C3 Channel
sa(2).d = v1(3).e(13); %Third Subject, Baseline 2, C3 Channel 
sa(3).d = v1(5).e(13); %Fifth Subject, Baseline 2, C3 Channel
sa(4).d = v1(7).e(13); %Seventh  Subject, Baseline 2, C3 Channel 
sa(5).d = v2(1).e(13); %Fir st Subject, First Task, C3 Channel
sa(6).d = v2(3).e(13); %Third Subject, First Task, C3 Channel 
sa(7).d = v2(5).e(13); %Fifth Subject, First Task, C3 Channel
sa(8).d = v2(7).e(13); %Seventh Subject, First Task, C3 Channel 
sa(9).d = v3(1).e(13); %First Subject, Second Task, C3 Channel
sa(10).d = v3(3).e(13); %Third Subject, Second Task, C3 Channel 
sa(11).d = v3(5).e(13); %Fifth Subject, Second Task, C3 Channel
sa(12).d = v3(7).e(13); %Seventh Subject, Second Task, C3 Channel 
sa(13).d = v4(1).e(1);  %Dataset2.1 , Left Hand, C3 Channel
sa(14).d = v4(2).e(1);  %Dataset2.2 , Left Hand, C3 Channel
sa(15).d = v5(1).e(1);  %Dataset2.1 , Right Hand, C3 Channel
sa(16).d = v5(2).e(1);  %Dataset2.2 , Right Hand, C3 Channel
sa(17).d = v6(1).e(1);  %Dataset2.1 , Foot, C3 Channel
sa(18).d = v6(2).e(1);  %Dataset2.2 , Foot, C3 Channel
sa(19).d = v7(1).e(1);  %Dataset2.1 , Tongue, C3 Channel
sa(20).d = v7(2).e(1);  %Dataset2.2 , Tongue, C3 Channel
sa(21).d = v1(1).e(50); %First Subject, Baseline 2, C4 Channel
sa(22).d = v1(3).e(50); %Third Subject, Baseline 2, C4 Channel
sa(23).d = v1(5).e(50); %Fifth Subject, Baseline 2, C4 Channel
sa(24).d = v1(7).e(50); %Seventh Subject, Baseline 2, C4 Channel
sa(25).d = v2(1).e(50); %First Subject, First Task, C4 Channel
sa(26).d = v2(3).e(50); %Third Subject, First Task, C4 Channel
sa(27).d = v2(5).e(50); %Fifth Subject, First Task, C4 Channel
sa(28).d = v2(7).e(50); %Seventh Subject, First Task, C4 Channel
sa(29).d = v3(1).e(50); %First Subject, Second Task, C4 Channel
sa(30).d = v3(3).e(50); %Third Subject, Second Task, C4 Channel
sa(31).d = v3(5).e(50); %Fifth Subject, Second Task, C4 Channel
sa(32).d = v3(7).e(50); %Seventh Subject, Second Task, C4 Channel
sa(33).d = v4(1).e(3);  %Dataset2.1 , Left Hand, C4 Channel
sa(34).d = v4(2).e(3);  %Dataset2.2 , Left Hand, C4 Channel
sa(35).d = v5(1).e(3);  %Dataset2.1 , Right Hand, C4 Channel
sa(36).d = v5(2).e(3);  %Dataset2.2 , Right Hand, C4 Channel
sa(37).d = v6(1).e(3);  %Dataset2.1 , Foot, C4 Channel
sa(38).d = v6(2).e(3);  %Dataset2.2 , Foot, C4 Channel
sa(39).d = v7(1).e(3);  %Dataset2.1 , Tongue, C4 Channel
sa(40).d = v7(2).e(3);  %Dataset2.2 , Tongue, C4 Channel
sa(41).d = v1(1).e(48); %First Subject, Baseline 2, Cz Channel
sa(42).d = v1(3).e(48); %Third Subject, Baseline 2, Cz Channel
sa(43).d = v1(5).e(48); %Fifth Subject, Baseline 2, Cz Channel
sa(44).d = v1(7).e(48); %Seventh Subject, Baseline 2, Cz Channel
sa(45).d = v2(1).e(48); %First Subject, First Task, Cz Channel
sa(46).d = v2(3).e(48); %Third Subject, First Task, Cz Channel
sa(47).d = v2(5).e(48); %Fifth Subject, First Task, Cz Channel
sa(48).d = v2(7).e(48); %Seventh Subject, First Task, Cz Channel
sa(49).d = v3(1).e(48); %First Subject, Second Task, Cz Channel
sa(50).d = v3(3).e(48); %Third Subject, Second Task, Cz Channel
sa(51).d = v3(5).e(48); %Fifth Subject, Second Task, Cz Channel
sa(52).d = v3(7).e(48); %Seventh Subject, Second Task, Cz Channel
sa(53).d = v4(1).e(2);  %Dataset2.1 , Left Hand, CZ Channel
sa(54).d = v4(2).e(2);  %Dataset2.2 , Left Hand, CZ Channel
sa(55).d = v5(1).e(2);  %Dataset2.1 , Right Hand, CZ Channel
sa(56).d = v5(2).e(2);  %Dataset2.2 , Right Hand, CZ Channel
sa(57).d = v6(1).e(2);  %Dataset2.1 , Foot, CZ Channel
sa(58).d = v6(2).e(2);  %Dataset2.2 , Foot, CZ Channel
sa(59).d = v7(1).e(2);  %Dataset2.1 , Tongue, CZ Channel
sa(60).d = v7(2).e(2);  %Dataset2.2 , Tongue, CZ Channel
fs = 160; % Sampling frequency
waveletFunction = 'db4';
f = 1;
b = 1;
while a < 21
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
while a < 41
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
while a < 61
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
while t < 7681
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
    
    t2 = 1;
    while t2 < 321
        AE(t,7) = 3;
        t2 = t2+1;
        t = t+1;
    end
    
    t2 = 1;
    while t2 < 321
        AE(t,7) = 4;
        t2 = t2+1;
        t = t+1;
    end
    
    t2 = 1;
    while t2 < 321
        AE(t,7) = 5;
        t2 = t2+1;
        t = t+1;
    end
    
    t2 = 1;
    while t2 < 321
        AE(t,7) = 6;
        t2 = t2+1;
        t = t+1;
    end
    
end




save('EEGENERGY.mat','AE');