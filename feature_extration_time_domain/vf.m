function  y=vf(x,fk) 
%Ƶ�ʷ��xΪ��ֵ��fkΪƵ��ֵ��fcΪ����Ƶ��
    [m,]=size(x); 
    FC=fc(x,fk);
    q=0;a=0;
%     for i=1:m
%         s=x(i,:); 
%         h=fk(i,:); 
%         l=FC(i,:); 
%         a=((h-l).^2).*s; 
%         b=sum(a); 
%         c=sum(s); 
%         t=b/c; 
%         y(i,:)=t; 
%     end
    for i=1:m
        p=x(i);  %��ֵ
        h=fk(i);  %Ƶ��ֵ
        q=q+((h-FC)^2)*p; 
        a=a+sum(p);
    end
    y=q/a;
end
