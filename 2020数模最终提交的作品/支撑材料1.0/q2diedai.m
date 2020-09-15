result=[];
for i=65:0.1:100
    luwenquxian=luwen(i/60,182,203,237,254,25);
    flag1=1;
%   ÅÐ¶Ï·åÖµÎÂ¶È
    if max(luwenquxian)>250 || max(luwenquxian)<240
        flag1=0;
    end
    if flag1==0
        break
    end
end
result=[result i];
for i=65:0.1:100
    luwenquxian=luwen(i/60,182,203,237,254,25);
    flag2=1;
%    ÅÐ¶Ï´óÓÚ217
    temp=find(luwenquxian>217);
    zuidazhi=max(luwenquxian);
    xuhao=find(luwenquxian==zuidazhi);
    time=(xuhao-temp(1))*0.5+(temp(end)-xuhao)*0.1;
    if time<40 || time>90
        flag2=0;
    end
    if flag2==0
        break
    end
end
result=[result i];
for i=100:-0.1:60
    luwenquxian=luwen(i/60,182,203,237,254,25);
    flag3=1;
%     ÅÐ¶Ï150-190
    temp1=find(luwenquxian>150);
    temp2=find(luwenquxian>190);
    if (temp2(1)-temp1(1))/2<60 || (temp2(1)-temp1(1))/2>120
        flag3=0;
    end
    if flag3==0
        break
    end
end
result=[result i];
for i=65:0.1:100
    luwenquxian=luwen(i/60,182,203,237,254,25);
    flag4=1;

%     ÅÐ¶ÏÐ±ÂÊ
    for j=2:length(luwenquxian)
        if abs(luwenquxian(j)-luwenquxian(j-1))>1.5
            flag4=0;
            break
        end
    end
    if flag4==0
        break
    end
end
result=[result i];