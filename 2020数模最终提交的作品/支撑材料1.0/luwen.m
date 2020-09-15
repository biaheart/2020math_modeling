function [luwenquxian] = luwen(v,temperaArea1to5,temperaArea6,temperaArea7,temperaArea8to9,temperaArea10to11)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
% ����ֵ����¯�����ߵ�����
%   v=78/60;  % ��λ��cm/s����Χ��65-100cm/min
% temperaArea1to5=173;
% temperaArea6=198;
% temperaArea7=230;
% temperaArea8to9=257;
% temperaArea10to11=25;
aerfaTao1=-0.01;   
aerfaTao2=-0.001;  

%¯ǰ�����¶ȵ���
num=floor(9.1/v*2);
air_tempera=25:(temperaArea1to5-25)/num:temperaArea1to5;
hangao=zeros(1,num+1);
hangao(1)=25;
for i=2:num+1
    hangao(i)=(hangao(i-1)-air_tempera(i))*exp(aerfaTao1)+air_tempera(i);
end

%С����1-5
num1to5=floor(172.5/v*2);
air_tempera1to5=temperaArea1to5;
hangao1to5=zeros(1,num1to5+1);
hangao1to5(1)=hangao(end);
for i=2:num1to5+1
    hangao1to5(i)=(hangao1to5(i-1)-air_tempera1to5)*exp(aerfaTao1)+air_tempera1to5;
end

%��϶5-6
num5to6=floor(5/v*10);
air_tempera5to6=temperaArea1to5:(temperaArea6-temperaArea1to5)/num5to6:temperaArea6;
hangao5to6=zeros(1,num5to6+1);
hangao5to6(1)=hangao1to5(end);
for i=2:num5to6+1
    hangao5to6(i)=(hangao5to6(i-1)-air_tempera5to6(i))*exp(aerfaTao2)+air_tempera5to6(i);
end


%С����6
num6=floor(30.5/v*2);
air_tempera6=temperaArea6;
hangao6=zeros(1,num6+1);
hangao6(1)=hangao5to6(end);
for i=2:num6+1
    hangao6(i)=(hangao6(i-1)-air_tempera6)*exp(aerfaTao1)+air_tempera6;
end

%��϶6-7
num6to7=floor(5/v*10);
air_tempera6to7=temperaArea6:(temperaArea7-temperaArea6)/num6to7:temperaArea7;
hangao6to7=zeros(1,num6to7+1);
hangao6to7(1)=hangao6(end);
for i=2:num6to7+1
    hangao6to7(i)=(hangao6to7(i-1)-air_tempera6to7(i))*exp(aerfaTao2)+air_tempera6to7(i);
end

%С����7
num7=floor(30.5/v*2);
air_tempera7=temperaArea7;
hangao7=zeros(1,num7+1);
hangao7(1)=hangao6to7(end);
for i=2:num7+1
    hangao7(i)=(hangao7(i-1)-air_tempera7)*exp(aerfaTao1)+air_tempera7;
end


%��϶7-8
num7to8=floor(5/v*10);
air_tempera7to8=temperaArea7:(temperaArea8to9-temperaArea7)/num7to8:temperaArea8to9;
hangao7to8=zeros(1,num7to8+1);
hangao7to8(1)=hangao7(end);
for i=2:num7to8+1
    hangao7to8(i)=(hangao7to8(i-1)-air_tempera7to8(i))*exp(aerfaTao2)+air_tempera7to8(i);
end

%С����8-9
num8to9=floor(66/v*2);
air_tempera8to9=temperaArea8to9;
hangao8to9=zeros(1,num8to9+1);
hangao8to9(1)=hangao7to8(end);
for i=2:num8to9+1
    hangao8to9(i)=(hangao8to9(i-1)-air_tempera8to9)*exp(aerfaTao1)+air_tempera8to9;
end

%��϶9-10
num9to10=floor(5/v*10);
air_tempera9to10=temperaArea8to9:(temperaArea10to11-temperaArea8to9)/num9to10:temperaArea10to11;
hangao9to10=zeros(1,num9to10+1);
hangao9to10(1)=hangao8to9(end);
for i=2:num9to10+1
    hangao9to10(i)=(hangao9to10(i-1)-air_tempera9to10(i))*exp(aerfaTao2)+air_tempera9to10(i);
end


%С����10-11�Լ�¯������
num10to11=floor(91/v*10);
air_tempera10to11=temperaArea10to11;
hangao10to11=zeros(1,num10to11+1);
hangao10to11(1)=hangao9to10(end);
for i=2:num10to11+1
    hangao10to11(i)=(hangao10to11(i-1)-air_tempera10to11)*exp(-0.001)+air_tempera10to11;
end
luwenquxian=[hangao hangao1to5 hangao5to6(1:5:num5to6) hangao6 hangao6to7(1:5:num6to7) hangao7 hangao7to8(1:5:num7to8) hangao8to9 hangao9to10 hangao10to11];
end

