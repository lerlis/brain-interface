function y=msf(x,fk) 
%����Ƶ�ʣ�xΪ��ֵ��fkΪƵ��ֵ
[m,]=size(x); 
q=0;a=0;
    for i=1:m 
        p=x(i); %��ֵ
        h=fk(i); %Ƶ��ֵ
        q=q+sum((h^2)*p); 
        a=a+sum(p); 
    end
    y=q/a; 
end

