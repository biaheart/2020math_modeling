result=[];
luwenquxian=zeros(1,2000);
area=5000;
a=0;
for i=160:0.5:164
    for j=186:0.5:190
        for k=215:0.5:217
            for m=274:0.5:278
            for n=83:0.5:87
                    if (i==j) || (j==k) || (k==m)
                        continue
                    end
                    luwenquxian=luwen(n/60,i,j,k,m,25);
                    if max(luwenquxian)<240
                        continue
                    end
                    temp=q3(luwenquxian);
                    if temp==0
                        continue
                    end
                    
                    if temp<area 
                        area=temp;
                        result=[i,j,k,m,n];
                        a=a+1;
                    end
                end
            end
        end
    end
end
S=0.5*area;

