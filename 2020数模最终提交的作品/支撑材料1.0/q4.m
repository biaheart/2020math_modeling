function [duichen] = q4(luwenquxian)
%UNTITLED5 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

   
% 
% %   �жϷ�ֵ�¶�
flag1=1;
    if max(luwenquxian)>250 || max(luwenquxian)<240
        flag1=0;
    end
     flag2=1;
%    �жϴ���217
    temp=find(luwenquxian>217);
    zuidazhi=max(luwenquxian);
    xuhao=find(luwenquxian==zuidazhi);
    time=0;
    if isempty(temp)
        flag2=0;
       
    end
 
        time=(xuhao-temp(1))*0.5+(temp(end)-xuhao)*0.1;
        
        if time<40 
            flag2=0;
        end
        if time>90
            flag2=0;
        end
   


   
%     �ж�150-190
    flag3=1;
    temp1=find(luwenquxian>150);
    temp2=find(luwenquxian>190);
    if isempty(temp1) || isempty(temp2)
        flag3=0;
        
    else
        if (temp2(1)-temp1(1))/2<60 || (temp2(1)-temp1(1))/2>120
            flag3=0;
        end
    end


    flag4=1;

%     �ж�б��
    for j=2:length(luwenquxian)
        if abs(luwenquxian(j)-luwenquxian(j-1))>1.5
            flag4=0;
            break
        end
    end
     

% �ж��ĸ����Ƿ�ȫ��
if (flag1+flag2+flag3+flag4)==4
    duichen=abs(sum(luwenquxian(temp(1):xuhao)-217)-sum(luwenquxian(xuhao:5:temp(end))-217));
else
    duichen=10000000;
end
   


end

