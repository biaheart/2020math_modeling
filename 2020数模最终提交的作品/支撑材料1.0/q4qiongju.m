result=[];
duichen=10000000;
a=0;
luwenquxian=zeros(1,2000);
for i=164:0.5:168
    for j=186:0.5:190
        for k=213:0.5:217
            for m=275:0.5:279
            for n=85:0.5:89
                    if (i==j) || (j==k) || (k==m)
                        continue
                    end
                    luwenquxian=luwen(n/60,i,j,k,m,25);
                    if max(luwenquxian)<240
                        continue
                    end
                    temp=q4(luwenquxian);
                    if temp>=10000000
                        continue
                    end
                    
                    if temp<duichen 
                        duichen=temp;
                        result=[i,j,k,m,n];
                        a=a+1;
                    end
                end
            end
        end
    end
end
S=0.5*duichen;