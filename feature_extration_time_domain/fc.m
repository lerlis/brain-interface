function y=fc(x,fk)
%����Ƶ��,x��ֵ��fkƵ��ֵ
    [m,]=size(x);
    q=0;a=0;
    for i=1:m
        p=x(i);
        h=fk(i);
        q=q+sum(h*p);
        a=a+sum(p);
    end
    y=q/a;
end

