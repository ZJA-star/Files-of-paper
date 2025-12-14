clc;
clear all;
number_total=[];
close all;
warning off;
auv_count=5;       
task_count=12;    
length=3500;      
width=2000;        
height=200;       
resource=1;       
tt=50;         
Lmax=4;          
hc=0.3;         
vc=0.514;         
lamda1=0.6;     
lamda2=0.4;       
cost_r=2000;
ijkk=1;
x=[245,659,986,472,2095,2987,2674,2569,3406,356,456,123];                                                      
y=[1789,1457,15,538,1997,680,472,1968,236,1056,58,48];  
z=[49,13,96,196,145,194,15,136,138,134,135,49];
t=[1 2 3 3 2 1 2 1 3 3 1 3];                                                                                  
t_J=[4 3 5];
zz=[7267.03,7345.39,7472.09,7157.98,7516.93,7229.59,7472.09,7305.62,7193.25,7472.09,7386.36,7563.13];          
zzmax=[7317.03 7395.39 7522.09 7207.98 7566.93 7279 7522 7355 7243 7522 7436 7613];
x=[245,659,986,472,2095,2987,2674,2569,3406,356,456,123,146,2565,2095];                                                      
% y=[1789,1457,15,538,1997,680,472,1968,236,1056,58,48,1987,1021,965];  
% z=[49,13,96,196,145,194,15,136,138,134,135,49,15,101,165];
% t=[1 2 3 3 2 1 2 1 3 3 1 3 4 4];                                                                                   
% t_J=[4 3 5];
% zz=[7267.03,7345.39,7472.09,7157.98,7516.93,7229.59,7472.09,7305.62,7193.25,7472.09,7386.36,7563.13,7387.35,7265.03,7272.09];           
% zzmax=[7317.03 7395.39 7522.09 7207.98 7566.93 7279 7522 7355 7243 7522 7436 7613 7438 7314.03 7372.09];
% x=[1568,2654,86,245,659,986,472,2095,2987,2674,2569,3406,356,456,123];  
% y=[245,589,1456,1789,1457,15,538,1997,680,472,1968,236,1056,58,48];  
% z=[145,123,189,49,13,96,196,145,194,15,136,138,134,135,49];
% t=[1 2 3 3 2 1 2 1 3 3 1 3 4 5 5 ];
% t_J=[5 4 6];
% zz=[7305.62,7428.58,7386.36,7267.03,7345.39,7472.09,7157.98,7516.93,7229.59,7472.09,7305.62,7193.25,7472.09,7386.36,7563.13];
% zzmax=[7355 7478 7436 7317 7395 7522 7207 7566 7279 7522 7355 7243 7522 7436 7613];
% x=[1568,2654,86,245,659,986,472,2095,2987,2674,2569,3406,356,456,123,3469,186,2875];  
% y=[245,589,1456,1789,1457,15,538,1997,680,472,1968,236,1056,58,48,1698,524,979];  
% z=[145,123,189,49,13,96,196,145,194,15,136,138,134,135,49,13,89,176];
% t=[1 2 3 3 2 1 2 1 3 3 1 3 1 2 3 2 1 3];
% t_J=[6 5 7];
% zz=[7305.62,7428.58,7386.36,7267.03,7345.39,7472.09,7157.98,7516.93,7229.59,7472.09,7305.62,7193.25,7472.09,7386.36,7563.13,7364.25,7456.38,7500.00];
% zzmax=[7355.62,7478.58,7436.36,7317.03,7395.39,7522.09,7207.98,7566.93,7279.59,7522.09,7355.62,7243.25,7522.09,7436.36,7613.13,7414.25,7506.38,7550.00];
% x=[1202,1088,1094,1980,2016,2001,1921,3463,3366,3377,3365,3489,376,677,1205,2242,2496,3038];
% y=[995,1039,970,516,440,529,530,1775,1873,1829,1790,1836,329,590,795,1096,1430,1881];
% z=[55,105,87,21,141,58,124,175,147,125,184,154,3,43,65,115,146,179];
% zz=[7305.62,7428.58,7386.36,7267.03,7345.39,7472.09,7157.98,7516.93,7229.59,7472.09,7305.62,7193.25,7472.09,7386.36,7563.13,7364.25,7456.38,7500.00];
% t=[2 2 2 2 2 3 3 3 3 3 3 3 1 1 1 1 1 1];
% t_J=[6 5 7];
% x=[1568,2654,86,245,659,986,472,2095,2987,2674,2569,3406,356,456,123,3469,186,2875,1698,152,1469];  
% y=[245,589,1456,1789,1457,15,538,1997,680,472,1968,236,1056,58,48,1698,524,979,49,96,946];  
% z=[145,123,189,49,13,96,196,145,194,15,136,138,134,135,49,13,89,176,86,74,3];
% t=[1 2 3 3 2 1 2 1 3 3 1 3 1 2 3 3 2 3 1 2 1 ];
% t_J=[7 6 8];
% zz=[7305.62,7428.58,7386.36,7267.03,7345.39,7472.09,7157.98,7516.93,7229.59,7472.09,7305.62,7193.25,7472.09,7386.36,7563.13,7364.25,7456.38,7500.00,7364.33,7422.22,7222.66];
% zzmax=[7355.62,7478.58,7436.36,7317.03,7395.39,7522.09,7207.98,7566.93,7279.59,7522.09,7355.62,7243.25,7522.09,7436.36,7613.13,7414.25,7506.38,7550.00,7414.33 7472.22 7272.66];
% x=[1568,2654,86,245,659,986,472,2095,2987,2674,2569,3406,356,456,123,3469,186,2875,1698,152,1469,2368,3212,3156];  
% y=[245,589,1456,1789,1457,15,538,1997,680,472,1968,236,1056,58,48,1698,524,979,49,96,946,325,379,61];  
% z=[145,123,189,49,13,96,196,145,194,15,136,138,134,135,49,13,89,176,86,74,3,31,198,46];
% t=[1 2 3 3 2 1 2 1 3 3 1 3 1 2 3 3 2 3 1 2 1 3 2 1];
% t_J=[8 7 9];
% zz=[7305.62,7428.58,7386.36,7267.03,7345.39,7472.09,7157.98,7516.93,7229.59,7472.09,7305.62,7193.25,7472.09,7386.36,7563.13,7364.25,7456.38,7500.00,7364.33,7422.22,7222.66,7468.11,7432.12,7541.23];
% zzmax=[7355.62,7478.58,7436.36,7317.03,7395.39,7522.09,7207.98,7566.93,7279.59,7522.09,7355.62,7243.25,7522.09,7436.36,7613.13,7414.25,7506.38,7550.00,7414.33 7472.22 7272.66 7518.11 7482.12 7591.23];
% x=[1568,2654,86,245,659,986,472,2095,2987,2674,2569,3406,356,456,123,3469,186,2875,1698,152,1469,2368,3212,3156,245,659,986,472,2095,2987];  
% y=[245,589,1456,1789,1457,15,538,1997,680,472,1968,236,1056,58,48,1698,524,979,49,96,946,325,379,61,1789,1457,15,538,1997,680];  
% z=[145,123,189,49,13,96,196,145,194,15,136,138,134,135,49,13,89,176,86,74,3,31,198,46,49,13,96,196,145,194];
% t=[4 5 4 3 2 1 2 1 3 3 1 3 1 2 3 3 2 3 1 2 1 3 2 1 1 2 3 3 2 1];
% t_J=[8 7 9];
% zz=[7305.62,7428.58,7386.36,7267.03,7345.39,7472.09,7157.98,7516.93,7229.59,7472.09,7305.62,7193.25,7472.09,7386.36,7563.13,7364.25,7456.38,7500.00,7364.33,7422.22,7222.66,7468.11,7432.12,7541.23,7267.03,7345.39,7472.09,7157.98,7516.93,7229.59];
% zzmax=[7355.62,7478.58,7436.36,7317.03,7395.39,7522.09,7207.98,7566.93,7279.59,7522.09,7355.62,7243.25,7522.09,7436.36,7613.13,7414.25,7506.38,7550.00,7414.33 7472.22 7272.66 7518.11 7482.12 7591.23 7317.03 7395.39 7522.09 7207.98 7566.93 7279];
x1=[1500,900,509,2989,2878,3020];  
y1=[1458,1985,354,985,1876,154];  
z1=[13,69,159,173,40,75];
% x1=[1500,509,2989];  
% y1=[1458,354,985];  
% z1=[13,159,173];
% x1=[10,1749,2989,2878,3020];  
% y1=[1910,999,1985,60,154];  
% z1=[13,159,173,40,75];
% x1=[0,0,0,0,0];  y1=[0,0,0,0,0];  z1=[200,200,200,200,200];
at=[1 2 2 3 3 1 2];
at_I=[1 2 2];
v=[2.04,1.96,2.06,2.14,1.99,2.13,2.02];
L=[0,0,0,0,0 0 0];
miu=[455;450;457;448;462;468;454];
sigma=[50.55;51.89;52.36;53.69;52.47;52.21;50.23];
for i=1:auv_count   
    r(i,:)=mvnrnd(miu(i,:), sigma(i,:),1);        
end
for i=1:task_count
    renwu(i)=i;                                            
end
s1=[150,1433,0];                                          
% s2=[2150,1933,0];    
% s3=[3458,1100,0];    
% s1=[1750,1000,0];
C(1).s(1)=s1(1,1); C(1).s(2)=s1(1,2);C(1).s(3)=s1(1,3);    
% C(2).s(1)=s2(1,1); C(2).s(2)=s2(1,2);C(2).s(3)=s2(1,3);
% C(3).s(1)=s3(1,1); C(3).s(2)=s3(1,2);C(3).s(3)=s3(1,3);  
for i=1:task_count
A(i).x=x(i);
A(i).y=y(i);
A(i).z=z(i);
A(i).t=t(i);
A(i).zz=zz(i)-3000;
end
for i=1:auv_count
B(i).x=x1(i);
B(i).y=y1(i);
B(i).z=z1(i);
B(i).v=v(i);
B(i).L=L(i);
B(i).at=at(i);
B(i).miu=miu(i,:);
B(i).sigma=sigma(i,:);
B(i).r=r(i,:);
end
for i=1:auv_count   
    B(i).rmax(1)=1500;        
    if B(i).at==1
        B(i).e=1;            
    elseif B(i).at==2
        B(i).e=1.3;
    else
        B(i).e=1.2;
    end
end
for i=1:auv_count
    for j=1:task_count
        if B(i).at==1 
            if A(j).t==1||A(j).t==4||A(j).t==5
                B(i).c(j)=1;
            else
                B(i).c(j)=0;
            end
        elseif B(i).at==2       
            if A(j).t==4
                B(i).c(j)=0;
            else
                B(i).c(j)=1;
            end
        elseif B(i).at==3
            if A(j).t==1||A(j).t==4
                B(i).c(j)=0;
            else
                B(i).c(j)=1;
            end
        end
    end
end
hy=[1,sqrt(3),sqrt(2)];                                                              
for i=1:auv_count
    for j=1:task_count   
        B(i).h(j).ht(1)=A(j).x-B(i).x;   
        B(i).h(j).ht(2)=A(j).y-B(i).y;    
        B(i).h(j).ht(3)=A(j).z-B(i).z;     
    end
end
for i=1:auv_count
    for j=1:task_count              
            if max(size( B(i).h(j).ht))>0         
             B(i).m(j)=B(i).h(j).ht(1)*hy(1)+B(i).h(j).ht(2)*hy(2)+B(i).h(j).ht(3)*hy(3);                                                  
             B(i).n(j)=sqrt(((B(i).h(j).ht(1))^2+(B(i).h(j).ht(2))^2+(B(i).h(j).ht(3))^2)) *sqrt(((hy(1))^2+(hy(2))^2+(hy(3))^2) );         
             B(i).y1(j)=B(i).m(j) / B(i).n(j);                                                                                             
             B(i).beta(j)=acos(B(i).y1(j));                                                                                                
             B(i).vs(j)=abs(( (cos  (  B(i).beta(j)  +  acos(  (vc./B(i).v).* cos(B(i).beta(j)) ) )).*B(i).v  )./(cos(B(i).beta(j))) );     
            else                                                                                                                            
            end   
    end
end
for i=1:auv_count
     B(i).vv=(vc./B(i).v).*hc;                                                         
end
yi=ones(task_count,1);                                                                 
for  i=1:auv_count
    for j=1:task_count                                                                          
         B(i).C1(j)=yi(j)-(B(i).vv).*(B(i).y1(j));                                      
         B(i).d(j)=B(i).C1(j).*sqrt( (x(j)-x1(i))^2+(y(j)-y1(i))^2+(z(j)-z1(i))^2);     
         B(i).t(j)=B(i).d(j)./B(i).vs(j);                                            
    end
end
for i=1:auv_count
 for j=1:task_count
    for k=1:task_count 
      B(i).htt(j,k).hts(1)=A(k).x(1)-A(j).x(1);       
      B(i).htt(j,k).hts(2)=A(k).y(1)-A(j).y(1);      
      B(i).htt(j,k).hts(3)=A(k).z(1)-A(j).z(1);
    end
 end
end
for i=1:auv_count
 for j=1:task_count
    for k=1:task_count
             if max(size( B(i).htt(j,k).hts))>0         
             B(i).mtt(j,k)=B(i).htt(j,k).hts(1)*hy(1)+B(i).htt(j,k).hts(2)*hy(2)+B(i).htt(j,k).hts(3)*hy(3);                                             
             B(i).ntt(j,k)=sqrt(((B(i).htt(j,k).hts(1))^2+(B(i).htt(j,k).hts(2))^2+(B(i).htt(j,k).hts(3))^2)) *sqrt(((hy(1))^2+(hy(2))^2+(hy(3))^2) );   
             B(i).ytt1(j,k)=B(i).mtt(j,k) / B(i).ntt(j,k);                                                                                                           
             B(i).betatt(j,k)=acos(B(i).ytt1(j,k));                                                                                                                 
             B(i).vstt(j,k)=abs(( (cos  (  B(i).betatt(j,k)  +  acos(  (vc./B(i).v).* cos(B(i).betatt(j,k)) ) )).*B(i).v  )./(cos(B(i).betatt(j,k))) );  
             else                                                         
             end  
    end
  end
end
yitt=ones(task_count,task_count);                                 
for i=1:auv_count
 for j=1:task_count
    for k=1:task_count        
         B(i).Cstt(j,k)=yitt(j,k)-(B(i).vv).*(B(i).ytt1(j,k));   
         B(i).dtt(j,k)=B(i).Cstt(j,k).*sqrt(  (A(k).x(1)-A(j).x(1))^2+(A(k).y(1)-A(j).y(1))^2+(A(k).z(1)-A(j).z(1))^2  );      
         B(i).ttt(j,k)= B(i).dtt(j,k)./B(i).vstt(j,k);           
    end
 end
end 
for i=1:auv_count
    for j=1:resource 
      D(i).h(j).hts(1)=C(j).s(1)-B(i).x;      
      D(i).h(j).hts(2)=C(j).s(2)-B(i).y;     
      D(i).h(j).hts(3)=C(j).s(3)-B(i).z;
    end
end
for i=1:auv_count
    for j=1:resource
             if max(size( D(i).h(j).hts))>0         
             D(i).m(j)=D(i).h(j).hts(1)*hy(1)+D(i).h(j).hts(2)*hy(2)+D(i).h(j).hts(3)*hy(3);
             D(i).n(j)=sqrt(((D(i).h(j).hts(1))^2+(D(i).h(j).hts(2))^2+(D(i).h(j).hts(3))^2)) *sqrt(((hy(1))^2+(hy(2))^2+(hy(3))^2) );
             D(i).y1(j)=D(i).m(j) / D(i).n(j);       
             D(i).beta(j)=acos(D(i).y1(j));       
             D(i).vs(j)=abs(( (cos  (  D(i).beta(j)  +  acos(  (vc./B(i).v).* cos(D(i).beta(j)) ) )).*B(i).v  )./(cos(D(i).beta(j))) );
             else                                                          
            end   
    end
end
yi=ones(auv_count,resource); 
for  i=1:auv_count
    for j=1:resource          
         D(i).Cs(j)=yi(j)-(B(i).vv).*(D(i).y1(j));
         D(i).ds(j)=D(i).Cs(j).*sqrt( (x1(i)-C(j).s(1))^2+(y1(i)-C(j).s(2))^2+(z1(i)-C(j).s(3))^2  );
         D(i).ts(j)=D(i).ds(j)./D(i).vs(j);
    end
end 
for i=1:auv_count
 for j=1:resource 
      for k=1:task_count
      D(i).hct(j,k).hts(1)=A(k).x-C(j).s(1);      
      D(i).hct(j,k).hts(2)=A(k).y-C(j).s(2);
      D(i).hct(j,k).hts(3)=A(k).z-C(j).s(3);     
      end
 end 
end
for i=1:auv_count
 for j=1:resource 
      for k=1:task_count
             if max(size( D(i).hct(j,k).hts))>0         
             D(i).mct(j,k)=D(i).hct(j,k).hts(1)*hy(1)+D(i).hct(j,k).hts(2)*hy(2)+D(i).hct(j,k).hts(3)*hy(3);            
             D(i).nct(j,k)=sqrt(((D(i).hct(j,k).hts(1))^2+(D(i).hct(j,k).hts(2))^2+(D(i).hct(j,k).hts(3))^2)) *sqrt(((hy(1))^2+(hy(2))^2+(hy(3))^2) );           
             D(i).yct1(j,k)=D(i).mct(j,k) / D(i).nct(j,k);
             D(i).betact(j,k)=acos(D(i).yct1(j,k));             
             D(i).vsct(j,k)=abs(( (cos  (  D(i).betact(j,k)  +  acos(  (vc./B(i).v).* cos(D(i).betact(j,k)) ) )).*B(i).v  )./(cos(D(i).betact(j,k))) );            
             else                                                          
             end
      end      
    end
end
yict=ones(resource,task_count);
for i=1:auv_count
    for j=1:resource 
        for k=1:task_count         
            D(i).Csct(j,k)=yict(j,k)-(B(i).vv).*(D(i).yct1(j,k));
            D(i).dct(j,k)=D(i).Csct(j,k).*sqrt(  (A(k).x-C(j).s(1))^2+(A(k).y-C(j).s(2))^2+(A(k).z-C(j).s(3))^2  );
            D(i).tct(j,k)= D(i).dct(j,k)./D(i).vsct(j,k);
        end
    end
end
for i=1:auv_count
 for j=1:task_count
      for k=1:resource 
      D(i).htc(j,k).hts(1)=C(k).s(1)-A(j).x;     
      D(i).htc(j,k).hts(2)=C(k).s(2)-A(j).y;
      D(i).htc(j,k).hts(3)=C(k).s(3)-A(j).z;     
      end
 end 
end
for i=1:auv_count
  for j=1:task_count
      for k=1:resource 
             if max(size( D(i).htc(j,k).hts))>0         
             D(i).mtc(j,k)=D(i).htc(j,k).hts(1)*hy(1)+D(i).htc(j,k).hts(2)*hy(2)+D(i).htc(j,k).hts(3)*hy(3);            
             D(i).ntc(j,k)=sqrt(((D(i).htc(j,k).hts(1))^2+(D(i).htc(j,k).hts(2))^2+(D(i).htc(j,k).hts(3))^2)) *sqrt(((hy(1))^2+(hy(2))^2+(hy(3))^2) );            
             D(i).ytc1(j,k)=D(i).mtc(j,k) / D(i).ntc(j,k);
             D(i).betatc(j,k)=acos(D(i).ytc1(j,k));             
             D(i).vstc(j,k)=abs(( (cos  (  D(i).betatc(j,k)  +  acos(  (vc./B(i).v).* cos(D(i).betatc(j,k)) ) )).*B(i).v  )./(cos(D(i).betatc(j,k))) );              
             else                                                          
             end
      end      
    end
end
yitc=ones(task_count,resource); 
for i=1:auv_count
  for j=1:task_count
      for k=1:resource          
         D(i).Cstc(j,k)=yitc(j,k)-(B(i).vv).*(D(i).ytc1(j,k)); 
         D(i).tc(j,k)=D(i).Cstc(j,k).*sqrt(  (A(j).x-C(k).s(1))^2+(A(j).y-C(k).s(2))^2+(A(j).z-C(k).s(3))^2  )./D(i).vstc(j,k) ;
      end
   end
end
auction=1:1:task_count;          
[hang,lie]=size(auction);        
pmcs=1;
while lie~=0
    for i=1:auv_count
        auction1=[];
        if B(i).at==1                        
            m=1;
            for j=1:max(size(auction))
                if A(auction(j)).t==1||A(auction(j)).t==4
                    auction1(m)=auction(j);
                    m=m+1;
                else
                end
            end
        elseif B(i).at==2
            auction1=auction;
        else B(i).at == 3
            m=1;
            for j=1:max(size(auction))
                if A(auction(j)).t==2 || A(auction(j)).t==3 || A(auction(j)).t==5
                    auction1(m)=auction(j);
                    m=m+1;
                else
                end
            end
        end              
        B(i).auction=auction1;
        [B(i).haoy,B(i).haoy1]=size(B(i).auction);
        pro(i).inf=[];
    end
    Gmax=100;                           
    Pdp=0.2;
    Gc=1;
    Np=20;
    d=2;
    na=3;
    beta=1.5;
    w=0.5;
    q=5000;
    range_x=[min(x),max(x)];
    range_y=[min(y),max(y)];
    range_z=[min(z),max(z)];
    for i=1:auv_count
        for j=1:Np
            pro(i).inf(j).xyz(1)=range_x(1)+rand*(range_x(2)-range_x(1));
            pro(i).inf(j).xyz(2)=range_y(1)+rand*(range_y(2)-range_y(1));
            pro(i).inf(j).xyz(3)=range_z(1)+rand*(range_z(2)-range_z(1));
        end
    end

    for ddcs=1:Gmax
        for i=1:auv_count
            iishu=max(size(B(i).auction));
            if iishu~=0
            for ii=1:iishu
                A1(i).inf(ii).xyz(1)=x(B(i).auction(ii));
                A1(i).inf(ii).xyz(2)=y(B(i).auction(ii));
                A1(i).inf(ii).xyz(3)=z(B(i).auction(ii));
            end
            for i_A1=1:max(size(A1(i).inf))
                for i_pro=1:max(size(pro(i).inf))
                    M(i).inf(i_A1,i_pro)=dist(A1(i).inf(i_A1).xyz,pro(i).inf(i_pro).xyz');
                end
            end
            for i_pop=1:Np
                m=[];
                [M(i).inf(:,i_pop),m]=sort(M(i).inf(:,i_pop));
                Lir=ceil(min([task_count/auv_count,min([t_J(1)/at_I(1),(t_J(2)+t_J(3))/at_I(2),task_count/at_I(3)]),iishu]));                                            
                suiji1=ceil(rand*Lir);
%                 suiji1=min(3,iishu);
                newbundle=[];
                for i_suiji=1:suiji1
                    newbundle(i_suiji)=B(i).auction(m(i_suiji));
                end
                switch suiji1                                           
                    case 5
                        newbundles1=[];
                        newbundles1=nchoosek(newbundle,1);
                        for i_nbs=1:max(size(newbundles1))
                            NB(i_nbs).newbundles=newbundles1(i_nbs);
                            NB(i_nbs).utility=0;
                            NB(i_nbs).cs=[];
                        end
                        newbundle2=[];
                        newbundle2=nchoosek(newbundle,2);
                        newbundles2=[];
                        newbundles2_t=[];
                        for i_nbsi=1:max(size(newbundle2))
                            newbundles2_t=perms(newbundle2(i_nbsi,:));
                            newbundles2=combine(newbundles2,newbundles2_t);
                        end
                        for i_nbs=1:max(size(newbundles2))
                            NB(max(size(newbundles1))+i_nbs).newbundles=newbundles2(i_nbs,:);
                            NB(max(size(newbundles1))+i_nbs).utility=0;
                            NB(max(size(newbundles1))+i_nbs).cs=[];
                        end
                        newbundle3=[];
                        newbundle3=nchoosek(newbundle,3);
                        newbundles3=[];
                        newbundles3_t=[];
                        for i_nbsi=1:max(size(newbundle3))
                            newbundles3_t=perms(newbundle3(i_nbsi,:));
                            newbundles3=combine(newbundles3,newbundles3_t);
                        end
                        for i_nbs=1:max(size(newbundles3))
                            NB(max(size(newbundles2))+max(size(newbundles1))+i_nbs).newbundles=newbundles3(i_nbs,:);
                            NB(max(size(newbundles2))+max(size(newbundles1))+i_nbs).utility=0;
                            NB(max(size(newbundles2))+max(size(newbundles1))+i_nbs).cs=[];
                        end
                        newbundle4=[];
                        newbundle4=nchoosek(newbundle,4);
                        newbundles4=[];
                        newbundles4_t=[];
                        for i_nbsi=1:max(size(newbundle4))
                            newbundles4_t=perms(newbundle4(i_nbsi,:));
                            newbundles4=combine(newbundles4,newbundles4_t);
                        end
                        for i_nbs=1:max(size(newbundles4))
                            NB(max(size(newbundles3))+max(size(newbundles2))+max(size(newbundles1))+i_nbs).newbundles=newbundles4(i_nbs,:);
                            NB(max(size(newbundles3))+max(size(newbundles2))+max(size(newbundles1))+i_nbs).utility=0;
                            NB(max(size(newbundles3))+max(size(newbundles2))+max(size(newbundles1))+i_nbs).cs=[];
                        end
                        newbundles5=[];
                        newbundles5=perms(newbundle);
                        for i_nbs=1:max(size(newbundles5))
                            NB(max(size(newbundles1))+max(size(newbundles2))+max(size(newbundles3))+max(size(newbundles4))+i_nbs).newbundles=newbundles5(i_nbs,:);
                            NB(max(size(newbundles1))+max(size(newbundles2))+max(size(newbundles3))+max(size(newbundles4))+i_nbs).utility=0;
                            NB(max(size(newbundles1))+max(size(newbundles2))+max(size(newbundles3))+max(size(newbundles4))+i_nbs).cs=[];
                        end
                        size_NB=max(size(newbundles1))+max(size(newbundles2))+max(size(newbundles3))+max(size(newbundles4)+max(size(newbundles5)));
                    case 4
                        newbundles1=[];
                        newbundles1=nchoosek(newbundle,1);
                        for i_nbs=1:max(size(newbundles1))
                            NB(i_nbs).newbundles=newbundles1(i_nbs);
                            NB(i_nbs).utility=0;
                            NB(i_nbs).cs=[];
                        end
                        newbundle2=[];
                        newbundle2=nchoosek(newbundle,2);
                        newbundles2=[];
                        newbundles2_t=[];
                        for i_nbsi=1:max(size(newbundle2))
                            newbundles2_t=perms(newbundle2(i_nbsi,:));
                            newbundles2=combine(newbundles2,newbundles2_t);
                        end
                        for i_nbs=1:max(size(newbundles2))
                            NB(max(size(newbundles1))+i_nbs).newbundles=newbundles2(i_nbs,:);
                            NB(max(size(newbundles1))+i_nbs).utility=0;
                            NB(max(size(newbundles1))+i_nbs).cs=[];
                        end
                        newbundle3=[];
                        newbundle3=nchoosek(newbundle,3);
                        newbundles3=[];
                        newbundles3_t=[];
                        for i_nbsi=1:max(size(newbundle3))
                            newbundles3_t=perms(newbundle3(i_nbsi,:));
                            newbundles3=combine(newbundles3,newbundles3_t);
                        end
                        for i_nbs=1:max(size(newbundles3))
                            NB(max(size(newbundles2))+max(size(newbundles1))+i_nbs).newbundles=newbundles3(i_nbs,:);
                            NB(max(size(newbundles2))+max(size(newbundles1))+i_nbs).utility=0;
                            NB(max(size(newbundles2))+max(size(newbundles1))+i_nbs).cs=[];
                        end
                        newbundles4=[];
                        newbundles4=perms(newbundle);
                        for i_nbs=1:max(size(newbundles4))
                            NB(max(size(newbundles1))+max(size(newbundles2))+max(size(newbundles3))+i_nbs).newbundles=newbundles4(i_nbs,:);
                            NB(max(size(newbundles1))+max(size(newbundles2))+max(size(newbundles3))+i_nbs).utility=0;
                            NB(max(size(newbundles1))+max(size(newbundles2))+max(size(newbundles3))+i_nbs).cs=[];
                        end
                        size_NB=max(size(newbundles1))+max(size(newbundles2))+max(size(newbundles3))+max(size(newbundles4));
                    case 3
                        newbundles1=[];
                        newbundles1=nchoosek(newbundle,1);
                        for i_nbs=1:max(size(newbundles1))
                            NB(i_nbs).newbundles=newbundles1(i_nbs);
                            NB(i_nbs).utility=0;
                            NB(i_nbs).cs=[];
                        end
                        newbundle2=[];
                        newbundle2=nchoosek(newbundle,2);
                        newbundles2=[];
                        for i_nbsi=1:max(size(newbundle2))
                            newbundles2_t=perms(newbundle2(i_nbsi,:));
                            newbundles2=combine(newbundles2,newbundles2_t);
                        end
                        for i_nbs=1:max(size(newbundles2))
                            NB(max(size(newbundles1))+i_nbs).newbundles=newbundles2(i_nbs,:);
                            NB(max(size(newbundles1))+i_nbs).utility=0;
                            NB(max(size(newbundles1))+i_nbs).cs=[];
                        end
                        newbundles3=[];
                        newbundles3=perms(newbundle);
                        for i_nbs=1:max(size(newbundles3))
                            NB(max(size(newbundles1))+max(size(newbundles2))+i_nbs).newbundles=newbundles3(i_nbs,:);
                            NB(max(size(newbundles1))+max(size(newbundles2))+i_nbs).utility=0;
                            NB(max(size(newbundles1))+max(size(newbundles2))+i_nbs).cs=[];
                        end
                        size_NB=max(size(newbundles1))+max(size(newbundles2))+max(size(newbundles3));
                    case 2
                        newbundles1=[];
                        newbundles1=nchoosek(newbundle,1);
                        for i_nbs=1:max(size(newbundles1))
                            NB(i_nbs).newbundles=newbundles1(i_nbs);
                            NB(i_nbs).utility=0;
                            NB(i_nbs).cs=[];
                        end
                        newbundles2=[];
                        newbundles2=perms(newbundle);
                        for i_nbs=1:max(size(newbundles2))
                            NB(max(size(newbundles1))+i_nbs).newbundles=newbundles2(i_nbs,:);
                            NB(max(size(newbundles1))+i_nbs).utility=0;
                            NB(max(size(newbundles1))+i_nbs).cs=[];
                        end
                        size_NB=max(size(newbundles1))+max(size(newbundles2));
                    case 1
                        newbundles=[];
                        newbundles=perms(newbundle);
                        for i_nbs=1:max(size(newbundles))
                            NB(i_nbs).newbundles=newbundles(i_nbs);
                            NB(i_nbs).utility=0;
                            NB(i_nbs).cs=[];
                        end
                        size_NB=max(size(newbundles));
                end
            for i_nbs=1:max(size_NB)
                if pmcs <= 1
                    for i_t_nbs=1:max(size(NB(i_nbs).newbundles))
                        reward_t=A(NB(i_nbs).newbundles(i_t_nbs)).zz.*B(i).c(NB(i_nbs).newbundles(i_t_nbs));
                        if i_t_nbs==1
                            cost_t=B(i).t(NB(i_nbs).newbundles(i_t_nbs))+tt;
                        else
                            cost_t=B(i).ttt(NB(i_nbs).newbundles(i_t_nbs-1),NB(i_nbs).newbundles(i_t_nbs))+tt;
                        end
                        utility_t(i_t_nbs)=reward_t-cost_t;
                        NB(i_nbs).utility=NB(i_nbs).utility+utility_t(i_t_nbs);
                    end

                else
                    for i_t_nbs=1:max(size(NB(i_nbs).newbundles))
                        reward_t=A(NB(i_nbs).newbundles(i_t_nbs)).zz.*B(i).c(NB(i_nbs).newbundles(i_t_nbs));
                        if i_t_nbs==1
                            if max(size(W(i).wint))>0
                                cost_t=B(i).ttt(W(i).wint(max(size(W(i).wint))),NB(i_nbs).newbundles(i_t_nbs))+tt;
                            else
                                cost_t=B(i).t(NB(i_nbs).newbundles(i_t_nbs))+tt;
                            end
                        else
                            cost_t=B(i).ttt(NB(i_nbs).newbundles(i_t_nbs-1),NB(i_nbs).newbundles(i_t_nbs))+tt;
                        end
                        utility_t(i_t_nbs)=reward_t-cost_t;
                        NB(i_nbs).utility=NB(i_nbs).utility+utility_t(i_t_nbs);
                    end
                end
            end
            [~,index] = sortrows([NB.utility].');
            NB = NB(index(end:-1:1));
            clear index
            G(i).pop2(i_pop).x=NB(1).newbundles;
            if ddcs>1
                if i_pop==G(i).zy(ddcs-1).xuhao
                    G(i).pop2(i_pop).x=G(i).zy(ddcs-1).x;
                end
            end
            NB=[];
            size_NB=0;
            newbundles=[];newbundles1=[];newbundles2=[];newbundles3=[];newbundles4=[];newbundles5=[];

            end
            else
                G(i).pop2.x=[];
            end
        end

        for i=1:auv_count
            G(i).pop1=[];
        end
        for i=1:auv_count
            if B(i).haoy1~=0
                for j=1:max(size(G(i).pop2))
                    G(i).pop1(j).x=G(i).pop2(j).x;  
                end
                G(i).zp=[];                         
                G(i).rand=[];
                G(i).pop2=[];
                G(i).njc=[];  G(i).jc=[];
                G(i).kxj=[];  G(i).nkxj=[];
                G(i).sumrst=[];
                G(i).bywz=[];
                G(i).randnkx=[];
            else
            end      
        end
        for i=1:auv_count
            if B(i).haoy1~=0
                for j=1:max(size(G(i).pop1))
                    for m=1:max(size(G(i).pop1(j).x))
                        if m==1
                            G(i).pop1(j).inf(m).S=A(G(i).pop1(j).x(m)).zz.*B(i).c(G(i).pop1(j).x(m));
                            if pmcs<=1
                                %G(i).pop1(j).inf(m).rz=( B(i).t(G(i).pop1(j).x(m)).*e.*(1+lamda1.*(B(i).L./Lmax))+tt.*e.*( 1+lamda1.*(B(i).L./Lmax)+lamda2.*(log(0.5)./log( B(i).c(G(i).pop1(j).x(m)) )) ) );
                                G(i).pop1(j).inf(m).rz=B(i).e.*(B(i).t(G(i).pop1(j).x(m))+tt);
                            else
                                if  max(size(W(i).wint))>0
                                    %G(i).pop1(j).inf(m).rz=( B(i).ttt(W(i).wint(max(size(W(i).wint))),G(i).pop1(j).x(m)).*e.*(1+lamda1.*(B(i).L./Lmax))+tt.*e.*( 1+lamda1.*(B(i).L./Lmax)+lamda2.*(log(0.5)./log( B(i).c(G(i).pop1(j).x(m)) )) ) );
                                    G(i).pop1(j).inf(m).rz=B(i).e.*(B(i).ttt(W(i).wint(max(size(W(i).wint))),G(i).pop1(j).x(m))+tt);
                                else
                                    %G(i).pop1(j).inf(m).rz=( B(i).t(G(i).pop1(j).x(m)).*e.*(1+lamda1.*(B(i).L./Lmax))+tt.*e.*( 1+lamda1.*(B(i).L./Lmax)+lamda2.*(log(0.5)./log( B(i).c(G(i).pop1(j).x(m)) )) ) );
                                    G(i).pop1(j).inf(m).rz=B(i).e.*(B(i).t(G(i).pop1(j).x(m))+tt);
                                end
                            end
                            un=0.3;
                            R=0.3;
                            G(i).pop1(j).inf(m).r1=G(i).pop1(j).inf(m).rz;
                            G(i).pop1(j).inf(m).r2=B(i).r-G(i).pop1(j).inf(m).r1+un;
                            G(i).pop1(j).inf(m).miu2=B(i).miu-G(i).pop1(j).inf(m).r1;
                            G(i).pop1(j).inf(m).sigma2=B(i).sigma+R;
                            G(i).pop1(j).inf(m).yuzhi=B(i).e.*D(i).tc(G(i).pop1(j).x(m),1);
                            G(i).pop1(j).inf(m).deta2=G(i).pop1(j).inf(m).sigma2;
%                             G(i).pop1(j).inf(m).a=( G(i).pop1(j).inf(m).yuzhi-G(i).pop1(j).inf(m).miu2 )./( sqrt(2)*G(i).pop1(j).inf(m).deta2  );
%                             G(i).pop1(j).inf(m).b=-(  G(i).pop1(j).inf(m).yuzhi-G(i).pop1(j).inf(m).miu2 )./( sqrt(2)*G(i).pop1(j).inf(m).deta2  ); 
%                             syms t;
%                             G(i).pop1(j).inf(m).erf=( 1/sqrt(pi) )*int (exp(-t^2),G(i).pop1(j).inf(m).b,G(i).pop1(j).inf(m).a);
%                             G(i).pop1(j).inf(m).p=0.5*( 1-G(i).pop1(j).inf(m).erf );
%                             G(i).pop1(j).inf(m).erf1=double(G(i).pop1(j).inf(m).erf);
%                             G(i).pop1(j).inf(m).p1=double(G(i).pop1(j).inf(m).p);
%                             if G(i).pop1(j).inf(m).p1>=0.5
%                                 G(i).pop1(j).inf(m).cd=0;
%                             else
%                                 G(i).pop1(j).inf(m).cd=1;
%                             end
                            if G(i).pop1(j).inf(m).r2>=G(i).pop1(j).inf(m).yuzhi
                                G(i).pop1(j).inf(m).cd=0;
                            else
                                G(i).pop1(j).inf(m).cd=1;
                            end
                            if G(i).pop1(j).inf(m).cd==1
                                if pmcs<=1
                                    G(i).pop1(j).inf(m).sc=G(i).pop1(j).inf(m).S-(D(i).ts(G(i).pop1(j).inf(m).cd)+D(i).tct(1,G(i).pop1(j).x(m))+tt+cost_r);
                                    G(i).pop1(j).inf(m).rsy1=B(i).rmax-B(i).e.*(D(i).tct(1,G(i).pop1(j).x(m))+tt)+un;
                                    G(i).pop1(j).inf(m).miusy1=B(i).miu-B(i).e.*(D(i).tct(1,G(i).pop1(j).x(m))+tt);
                                    G(i).pop1(j).inf(m).rxh1=B(i).e.*(D(i).ts(1)+D(i).tct(1,G(i).pop1(j).x(m))+tt);
                                    G(i).pop1(j).inf(m).cdc=D(i).ts(1)+cost_r;
                                else
                                    if max(size(W(i).wint))>0
                                        G(i).pop1(j).inf(m).sc=G(i).pop1(j).inf(m).S-(D(i).tc(W(i).wint(max(size(W(i).wint))),1)+D(i).tct(1,G(i).pop1(j).x(m))+tt+cost_r);
                                        G(i).pop1(j).inf(m).rsy1=B(i).rmax-B(i).e.*(D(i).tct(1,G(i).pop1(j).x(m))+tt)+un;
                                        G(i).pop1(j).inf(m).miusy1=B(i).miu-B(i).e.*(D(i).tct(1,G(i).pop1(j).x(m))+tt);
                                        G(i).pop1(j).inf(m).rxh1=B(i).e.*(D(i).tc(W(i).wint(max(size(W(i).wint))),1)+D(i).tct(1,G(i).pop1(j).x(m))+tt);  
                                        G(i).pop1(j).inf(m).cdc=D(i).tc(W(i).wint(max(size(W(i).wint))),1)+cost_r;
                                    else                                  
                                        G(i).pop1(j).inf(m).sc=G(i).pop1(j).inf(m).S-(D(i).ts(G(i).pop1(j).inf(m).cd)+D(i).tct(1,G(i).pop1(j).x(m))+tt+cost_r);
                                        G(i).pop1(j).inf(m).rsy1=B(i).rmax-B(i).e.*(D(i).tct(1,G(i).pop1(j).x(m))+tt)+un;
                                        G(i).pop1(j).inf(m).miusy1=B(i).miu-B(i).e.*(D(i).tct(1,G(i).pop1(j).x(m))+tt);
                                        G(i).pop1(j).inf(m).rxh1=B(i).e.*(D(i).ts(1)+D(i).tct(1,G(i).pop1(j).x(m))+tt);
                                        G(i).pop1(j).inf(m).cdc=D(i).ts(1)+cost_r;
                                    end
                                end
                            else
                                if pmcs<=1                                
                                    G(i).pop1(j).inf(m).sc=G(i).pop1(j).inf(m).S-B(i).t(G(i).pop1(j).x(m))-tt;        
                                    G(i).pop1(j).inf(m).rsy1= G(i).pop1(j).inf(m).r2;                                 
                                    G(i).pop1(j).inf(m).miusy1=G(i).pop1(j).inf(m).miu2;                              
                                    G(i).pop1(j).inf(m).rxh1=G(i).pop1(j).inf(m).r1;                                   
                                    G(i).pop1(j).inf(m).cdc=0;
                                else                                      
                                    if  max(size(W(i).wint))>0             
                                        %G(i).pop1(j).inf(m).sc=G(i).pop1(j).inf(m).S-W(i).shangc-B(i).ttt(W(i).wint(max(size(W(i).wint))),G(i).pop1(j).x(m))-tt;  
                                        G(i).pop1(j).inf(m).sc=G(i).pop1(j).inf(m).S-B(i).ttt(W(i).wint(max(size(W(i).wint))),G(i).pop1(j).x(m))-tt;
                                        G(i).pop1(j).inf(m).rsy1=G(i).pop1(j).inf(m).r2;                         
                                        G(i).pop1(j).inf(m).miusy1=G(i).pop1(j).inf(m).miu2;                       
                                        G(i).pop1(j).inf(m).rxh1=G(i).pop1(j).inf(m).r1;                               
                                        G(i).pop1(j).inf(m).cdc=0;
                                    else                                  
                                        G(i).pop1(j).inf(m).sc=G(i).pop1(j).inf(m).S-B(i).t(G(i).pop1(j).x(m))-tt;     
                                        G(i).pop1(j).inf(m).rsy1= G(i).pop1(j).inf(m).r2;                              
                                        G(i).pop1(j).inf(m).miusy1=G(i).pop1(j).inf(m).miu2;                          
                                        G(i).pop1(j).inf(m).rxh1=G(i).pop1(j).inf(m).r1;                           
                                        G(i).pop1(j).inf(m).cdc=0;
                                    end
                                end
                            end
                            G(i).pop1(j).inf(m).sigmasy1=G(i).pop1(j).inf(m).sigma2;                                 
                            G(i).pop1(j).inf(m).L=1;
                        else
                            G(i).pop1(j).inf(m).S=A(G(i).pop1(j).x(m)).zz.*B(i).c(G(i).pop1(j).x(m));
                            G(i).pop1(j).inf(m).rz=B(i).e.*(B(i).ttt(G(i).pop1(j).x(m-1),G(i).pop1(j).x(m))+tt);
                                                                                                    
                            G(i).pop1(j).inf(m).r1=G(i).pop1(j).inf(m).rz;                      
                            G(i).pop1(j).inf(m).r2=G(i).pop1(j).inf(m-1).rsy1-G(i).pop1(j).inf(m).r1+un;                
                            G(i).pop1(j).inf(m).miu2=G(i).pop1(j).inf(m-1).miusy1-G(i).pop1(j).inf(m).r1;                                                                      
                            G(i).pop1(j).inf(m).sigma2=G(i).pop1(j).inf(m-1).sigmasy1+R;                                
                            G(i).pop1(j).inf(m).yuzhi=B(i).e.*D(i).tc(G(i).pop1(j).x(m),1);                                
                             G(i).pop1(j).inf(m).deta2=G(i).pop1(j).inf(m).sigma2;                                     
%                             G(i).pop1(j).inf(m).a=(  G(i).pop1(j).inf(m).yuzhi- G(i).pop1(j).inf(m).miu2 )./( sqrt(2)* G(i).pop1(j).inf(m).deta2  );  
%                             G(i).pop1(j).inf(m).b=-(   G(i).pop1(j).inf(m).yuzhi- G(i).pop1(j).inf(m).miu2 )./( sqrt(2)* G(i).pop1(j).inf(m).deta2  );     
%                             syms t;
%                             G(i).pop1(j).inf(m).erf=( 1/sqrt(pi) )*int (exp(-t^2),G(i).pop1(j).inf(m).b,G(i).pop1(j).inf(m).a);                         
%                             G(i).pop1(j).inf(m).p=0.5*( 1-G(i).pop1(j).inf(m).erf );                                             
%                             G(i).pop1(j).inf(m).erf1=double(G(i).pop1(j).inf(m).erf);                                           
%                             G(i).pop1(j).inf(m).p1=double(G(i).pop1(j).inf(m).p);
%                             if G(i).pop1(j).inf(m).p1>=0.5
%                                 G(i).pop1(j).inf(m).cd=0;
%                             else
%                                 G(i).pop1(j).inf(m).cd=1;
%                             end
%                             syms xt;
%                             fun=exp(-0.5*((xt-G(i).pop1(j).inf(m).miu2)^2)/((G(i).pop1(j).inf(m).deta2)^2));
%                             G(i).pop1(j).inf(m).p2=(1/(sqrt(2*pi)*G(i).pop1(j).inf(m).deta2))*int(fun,xt,0,G(i).pop1(j).inf(m).yuzhi);
                            G(i).pop1(j).inf(m).p2=normpdf(G(i).pop1(j).inf(m).yuzhi,G(i).pop1(j).inf(m).miu2,G(i).pop1(j).inf(m).deta2);
                            cd_test=randsrc(1,2,[0 1; (1-G(i).pop1(j).inf(m).p2) G(i).pop1(j).inf(m).p2]);
                            G(i).pop1(j).inf(m).cd2=cd_test(2);
                            if G(i).pop1(j).inf(m).r2>=G(i).pop1(j).inf(m).yuzhi
                                G(i).pop1(j).inf(m).cd=0;
                            else
                                G(i).pop1(j).inf(m).cd=1;
                            end
                            if G(i).pop1(j).inf(m).cd==1                
                                G(i).pop1(j).inf(m).sc=G(i).pop1(j).inf(m).S-(D(i).tc(G(i).pop1(j).x(m-1),1)+D(i).tct(1,G(i).pop1(j).x(m))+tt+cost_r);
                                G(i).pop1(j).inf(m).rsy1=B(i).rmax-B(i).e.*(D(i).tct(1,G(i).pop1(j).x(m))+tt)+un;
                                G(i).pop1(j).inf(m).miusy1=G(i).pop1(j).inf(m-1).miusy1-B(i).e.*(D(i).tct(1,G(i).pop1(j).x(m))+tt);
                                G(i).pop1(j).inf(m).rxh1=B(i).e.*(D(i).tc(G(i).pop1(j).x(m-1),1)+D(i).tct(1,G(i).pop1(j).x(m))+tt);
                                G(i).pop1(j).inf(m).cdc=D(i).tc(G(i).pop1(j).x(m-1),1)+cost_r;
                            else                                         
                                G(i).pop1(j).inf(m).sc=(G(i).pop1(j).inf(m).S-B(i).ttt(G(i).pop1(j).x(m-1),G(i).pop1(j).x(m))-tt); 
                                G(i).pop1(j).inf(m).rsy1=G(i).pop1(j).inf(m).r2;                                                  
                                G(i).pop1(j).inf(m).miusy1=G(i).pop1(j).inf(m).miu2;                                               
                                G(i).pop1(j).inf(m).rxh1=G(i).pop1(j).inf(m).r1;                                                   
                                G(i).pop1(j).inf(m).cdc=0;
                            end                                                                                                    
                            G(i).pop1(j).inf(m).sigmasy1=G(i).pop1(j).inf(m).sigma2;                                             
                            G(i).pop1(j).inf(m).L=G(i).pop1(j).inf(m-1).L+1;                                                     
                        end
                    end
                end
                for j=1:max(size(G(i).pop1))
                    for m=1:max(size(G(i).pop1(j).inf))
                        if m==1
                            G(i).pop1(j).zcd=G(i).pop1(j).inf(m).cd;
                            G(i).pop1(j).zcdc=G(i).pop1(j).inf(m).cdc;
                        else
                            G(i).pop1(j).zcd=G(i).pop1(j).zcd+G(i).pop1(j).inf(m).cd;
                            G(i).pop1(j).zcdc=G(i).pop1(j).zcdc+G(i).pop1(j).inf(m).cdc;
                        end
                    end
                end

                for j=1:max(size(G(i).pop1))        
                    for m=1:max(size(G(i).pop1(j).inf))
                        if m==1
                            G(i).pop1(j).zsc=G(i).pop1(j).inf(m).sc;
                        else
                            G(i).pop1(j).zsc=G(i).pop1(j).zsc+G(i).pop1(j).inf(m).sc;           
                        end
                    end
                end

                if pmcs<5
                for j=1:max(size(G(i).pop1))
                    if G(i).pop1(j).zcd>2    
                        G(i).pop1(j).zsc=G(i).pop1(j).zsc-6000*(G(i).pop1(j).zcd-1);           
                    else
                    end
                end
                end
                G(i).zy(ddcs).zsc=-inf;                                   
                G(i).zy(ddcs).x=[];                                      
                for j=1:max(size(G(i).pop1))
                    if G(i).zy(ddcs).zsc<G(i).pop1(j).zsc
                        G(i).zy(ddcs).zsc=G(i).pop1(j).zsc;               
                        G(i).zy(ddcs).x=[];
                        G(i).zy(ddcs).x=G(i).pop1(j).x;                   
                        G(i).zy(ddcs).xuhao=j;                                                           
                    else 
                    end
                end
                for j=1:max(size(G(i).pop1))
                    if j==G(i).zy(ddcs).xuhao                             
                        G(i).zy(ddcs).rsy=G(i).pop1(j).inf(max(size(G(i).pop1(j).inf))).rsy1;             
                        G(i).zy(ddcs).miusy=G(i).pop1(j).inf(max(size(G(i).pop1(j).inf))).miusy1;        
                        G(i).zy(ddcs).sigmasy=G(i).pop1(j).inf(max(size(G(i).pop1(j).inf))).sigmasy1;     
                        G(i).zy(ddcs).L=G(i).pop1(j).inf(max(size(G(i).pop1(j).inf))).L;                  
                        G(i).zy(ddcs).cdcs=G(i).pop1(j).zcd;
                        G(i).zy(ddcs).cdc=G(i).pop1(j).zcdc;
                        G(i).zy(ddcs).zrxh=0;
                        for m=1:max(size(G(i).pop1(j).inf))
                            G(i).zy(ddcs).zrxh=G(i).zy(ddcs).zrxh+G(i).pop1(j).inf(m).rxh1;
                        end
                    else
                    end
                end           
            else
            end      
        end
        for i=1:auv_count
            iishu=max(size(B(i).auction));
            if iishu~=0
            [zsc,p]=sort([G(i).pop1.zsc],'descend');
            trace(ddcs)=zsc(1);
            xh=p(1);
%             xa=p(2:na+1);
%             xn=p(na+2:Np);
            xa=p(2:Np);
            for i1=1:Np-1
                if rand>=0
                    distance=dist(pro(i).inf(xa(i1)).xyz,pro(i).inf(xh).xyz');
                    distance_all=0;
                    for i_xa=1:Np-1
                        distance_all=distance_all+dist(pro(i).inf(xa(i_xa)).xyz,pro(i).inf(xh).xyz');
                    end
                     distance_m=distance_all/na;
%                      dg=2*w*((9+rand*(20-9))/18)*(1.1-exp(-2.3*distance/distance_m(1)));                             
%                      dg=((3+rand*(8))/10)*(1.1-exp(-2.3*distance/distance_m(1))); 
                      dg=atan(exp(w*2.7*((distance-min(distance_m(1)))/(max(distance_m(1))-min(distance_m(1))))));
                     pro(i).inf(xa(i1)).xyz(1)=pro(i).inf(xa(i1)).xyz(1)+dg*Gc*(pro(i).inf(xh).xyz(1)-pro(i).inf(xa(i1)).xyz(1));
                     pro(i).inf(xa(i1)).xyz(2)=pro(i).inf(xa(i1)).xyz(2)+dg*Gc*(pro(i).inf(xh).xyz(2)-pro(i).inf(xa(i1)).xyz(2));
                     pro(i).inf(xa(i1)).xyz(3)=pro(i).inf(xa(i1)).xyz(3)+dg*Gc*(pro(i).inf(xh).xyz(3)-pro(i).inf(xa(i1)).xyz(3));
                else
                     pro(i).inf(xa(i1)).xyz(1)=pro(i).inf(xa(i1)).xyz(1)+rand*700-350;
                     pro(i).inf(xa(i1)).xyz(2)=pro(i).inf(xa(i1)).xyz(2)+rand*400-200;
                     pro(i).inf(xa(i1)).xyz(3)=pro(i).inf(xa(i1)).xyz(3)+rand*40-20;
                end
            end
            Smin=10 / ( 365^( ddcs/(Gmax/2.5) ) );
            for i1=1:Np-1
                Sc(i1)=sqrt( sum( ( pro(i).inf(xh).xyz-pro(i).inf(xa(i1)).xyz ).^2 ) );
            end
            Sc=min(Sc);
            if Sc<=Smin
                theta=( gamma(1+beta)*sin(pi*beta/2) / ( gamma((1+beta)/2)*beta*2^((beta-1)/2) ) )^(1/beta);
                Levy=0.01*theta*normrnd(0,1)/abs(normrnd(0,1))^(1/beta);
                for i1=1:Np-1
                    pro(i).inf(xa(i1)).xyz(1)=pro(i).inf(xa(i1)).xyz(1)+Levy*3500;
                    pro(i).inf(xa(i1)).xyz(2)=pro(i).inf(xa(i1)).xyz(2)+Levy*2000;
                    pro(i).inf(xa(i1)).xyz(3)=pro(i).inf(xa(i1)).xyz(3)+Levy*200;
                end
            end
            else
            end
        end
        ddcs=ddcs+1;
    end
    for i=1:auv_count
        if B(i).haoy1~=0
            Z(i).jl(pmcs).zy=G(i).zy;       
        else
        end
    end
for i=1:auv_count
    if B(i).haoy1==0                   
       G(i).zy(ddcs-1).x=0;
       G(i).zy(ddcs-1).zsc=0;
       G(i).zy(ddcs-1).rsy=-inf;
       G(i).zy(ddcs-1).miusy=inf;      
       G(i).zy(ddcs-1).sigmasy=inf;     
       G(i).zy(ddcs-1).L=inf;          
       G(i).zy(ddcs-1).zrxh=inf;       
       G(i).zy(ddcs-1).cdcs=inf;
       G(i).zy(ddcs-1).cdc=inf;
    else
    end
end
Hzyzsc=-inf;
fenpei=[];
maxci=1;
while maxci<40  
    benfp=[];
    H=[];
    for i=1:auv_count
        zsc_sort=[];
        zsc_xuhao=[];
        [zsc_sort,zsc_xuhao]=sort([G(i).zy.zsc],'descend');
        xuhao_sort(i)=zsc_xuhao(1);
        H(i).rw=G(i).zy(xuhao_sort(i)).x;
        H(i).zsc=G(i).zy(xuhao_sort(i)).zsc;
    end
    for i=1:auv_count
        H(i).TF=isempty(H(i).rw);
    end
    for i=1:auv_count
        suiji=rand(1,auv_count);
    end
    [suiji1,xuhao]=sort(suiji,'descend');
    for j=1:max(size(xuhao))
        if H(xuhao(j)).TF==0
            H(xuhao(j)).zsc=G(xuhao(j)).zy(xuhao_sort(xuhao(j))).zsc;
            H(xuhao(j)).x=G(xuhao(j)).zy(xuhao_sort(xuhao(j))).x;
            H(xuhao(j)).rsy=G(xuhao(j)).zy(xuhao_sort(xuhao(j))).rsy;
            H(xuhao(j)).miusy=G(xuhao(j)).zy(xuhao_sort(xuhao(j))).miusy;
            H(xuhao(j)).sigmasy=G(xuhao(j)).zy(xuhao_sort(xuhao(j))).sigmasy;
            H(xuhao(j)).L=G(xuhao(j)).zy(xuhao_sort(xuhao(j))).L;
            H(xuhao(j)).zrxh=G(xuhao(j)).zy(xuhao_sort(xuhao(j))).zrxh;
            H(xuhao(j)).cdcs=G(xuhao(j)).zy(xuhao_sort(xuhao(j))).cdcs;
            H(xuhao(j)).cdc=G(xuhao(j)).zy(xuhao_sort(xuhao(j))).cdc;
            H(xuhao(j)).fp=1;
            break
        end
    end
    benfp=H(xuhao(j)).x;
    for i=1:auv_count
        if i~=xuhao(1)
            H(i).fp=0;
        else
        end
    end
    for j=1:max(size(xuhao))
        if H(xuhao(j)).TF==0
        H(xuhao(j)).yn=[];
        H(xuhao(j)).yn=ismember(H(xuhao(j)).rw,benfp); 
        H(xuhao(j)).all0=all(all(H(xuhao(j)).yn==0)); 
        if H(xuhao(j)).fp==0&H(xuhao(j)).all0==1 
            H(xuhao(j)).fp=1;           
            H(xuhao(j)).zsc=G(xuhao(j)).zy(xuhao_sort(xuhao(j))).zsc;
            H(xuhao(j)).x=G(xuhao(j)).zy(xuhao_sort(xuhao(j))).x;
            H(xuhao(j)).rsy=G(xuhao(j)).zy(xuhao_sort(xuhao(j))).rsy;
            H(xuhao(j)).miusy=G(xuhao(j)).zy(xuhao_sort(xuhao(j))).miusy;
            H(xuhao(j)).sigmasy=G(xuhao(j)).zy(xuhao_sort(xuhao(j))).sigmasy;
            H(xuhao(j)).L=G(xuhao(j)).zy(xuhao_sort(xuhao(j))).L;
            H(xuhao(j)).zrxh=G(xuhao(j)).zy(xuhao_sort(xuhao(j))).zrxh;
            H(xuhao(j)).cdcs=G(xuhao(j)).zy(xuhao_sort(xuhao(j))).cdcs;
            H(xuhao(j)).cdc=G(xuhao(j)).zy(xuhao_sort(xuhao(j))).cdc;
            benfp=[benfp H(xuhao(j)).x];
        else
        end
        end
    end
    for i=1:auv_count
        if max(size(H(i).x))>0 & H(i).x==0
           H(i).fp=0;
        else
        end
    end
    zscx=0;
    for i=1:auv_count        
        if H(i).fp==1          
            zscx=zscx+H(i).zsc;
        else
        end
    end      
     if zscx>Hzyzsc
        Hzyzsc=zscx;
        PP=[];
        fenpei=[];
        fenpei=benfp;
        for i=1:auv_count
            if H(i).fp==1
            PP(i).fp=1;
            PP(i).x=H(i).x;
            PP(i).zsc=H(i).zsc;
            PP(i).rsy=H(i).rsy;
            PP(i).miusy=H(i).miusy;
            PP(i).sigmasy=H(i).sigmasy;
            PP(i).L=H(i).L;
            PP(i).zrxh=H(i).zrxh;
            PP(i).cdcs=H(i).cdcs;
            PP(i).cdc=H(i).cdc;
            else
            PP(i).fp=0;    
            end
        end
   else
     end
    maxci=maxci+1;
end
for i=1:auv_count
    if PP(i).fp==1
        W(i).rwb(pmcs).x=PP(i).x;
        W(i).zsc(pmcs)=PP(i).zsc;
        W(i).rsy(pmcs)=PP(i).rsy;
        W(i).miusy(pmcs)=PP(i).miusy;
        W(i).sigmasy(pmcs)=PP(i).sigmasy;
        W(i).L(pmcs)=PP(i).L;
        W(i).zrxh(pmcs)=PP(i).zrxh;
        W(i).cdcs(pmcs)=PP(i).cdcs;
        W(i).cdc(pmcs)=PP(i).cdc;
         W(i).s(pmcs)=0;
        for j=1:max(size(W(i).rwb(pmcs).x))
            W(i).s(pmcs)=W(i).s(pmcs)+( A(W(i).rwb(pmcs).x(j)).zz*B(i).c(W(i).rwb(pmcs).x(j)) );
        end
        W(i).c(pmcs)=W(i).s(pmcs)-W(i).zsc(pmcs);
    else
        W(i).rwb(pmcs).x=0;
        W(i).zsc(pmcs)=0;
        W(i).rsy(pmcs)=0;
        W(i).miusy(pmcs)=0;
        W(i).sigmasy(pmcs)=0;
        W(i).L(pmcs)=0;
        W(i).zrxh(pmcs)=0;
        W(i).cdcs(pmcs)=0;
        W(i).cdc(pmcs)=0;
        W(i).s(pmcs)=0;
        W(i).c(pmcs)=0;
    end
    
end
for i=1:auv_count
W(i).wint=[];
    for j=1:pmcs
        if W(i).rwb(j).x~=0
           W(i).wint=[W(i).wint W(i).rwb(j).x];
        else
        end
    end
end
for i=1:auv_count
    [winth,wintl]=size(W(i).wint);
    if wintl>0
       for j=1:pmcs
           if W(i).c(j)~=0
               W(i).shangc=W(i).c(j);
           else
           end
       end
    else
        W(i).shangc=0;
    end
end
xxxxxxxx=1;
PP=[];
F=[];
G=[];
A1=[];
M=[];
NB=[];
for i=1:auv_count
  B(i).auction=[];
end
auction=setdiff(auction,fenpei);
[hang,lie]=size(auction);
for i=1:auv_count
    if W(i).zsc(pmcs)~=0
       B(i).L=0; 
      for j=1:pmcs          
          B(i).L=B(i).L+W(i).L(j);
      end    
       B(i).r=W(i).rsy(pmcs);
       B(i).miu=W(i).miusy(pmcs);
       B(i).sigma=W(i).sigmasy(pmcs);
    else
    end
end
    pmcs=pmcs+1;
end
for i=1:auv_count
    W(i).zzrxh=0;
    W(i).zzsc=0;
    W(i).ZC=0;W(i).ZCD=0;W(i).ZCDC=0;
    for j=1:max(size(W(i).zsc))
        if W(i).zsc(j)~=0
           W(i).zzrxh=W(i).zzrxh+W(i).zrxh(j);
           W(i).zzsc=W(i).zzsc+W(i).zsc(j);
           W(i).ZC=W(i).ZC+W(i).c(j);
           W(i).ZCD=W(i).ZCD+W(i).cdcs(j);
           W(i).ZCDC=W(i).ZCDC+W(i).cdc(j);
        else
        end
    end
end
ZSC=0;ZRXH=0;ZCDC=0;ZCD=0;ZC=0;
for i=1:auv_count
    ZRXH=ZRXH+W(i).zzrxh;
    ZSC=ZSC+W(i).zzsc;
    ZC=ZC+W(i).ZC;
    ZCD=ZCD+W(i).ZCD;
    ZCDC=ZCDC+W(i).ZCDC;
end    
Task_assign_results(ijkk).one=W(1).wint;
Task_assign_results(ijkk).two=W(2).wint;
Task_assign_results(ijkk).three=W(3).wint;
Task_assign_results(ijkk).four=W(4).wint;
Task_assign_results(ijkk).five=W(5).wint;
Charge_count_information(ijkk).one=W(1).cdcs;
Charge_count_information(ijkk).two=W(2).cdcs;
Charge_count_information(ijkk).three=W(3).cdcs;
Charge_count_information(ijkk).four=W(4).cdcs;
Charge_count_information(ijkk).five=W(5).cdcs;
Source_assumption(ijkk).one=W(1).zrxh;
Source_assumption(ijkk).two=W(2).zrxh;
Source_assumption(ijkk).three=W(3).zrxh;
Source_assumption(ijkk).four=W(4).zrxh;
Source_assumption(ijkk).five=W(5).zrxh;
pmcs=pmcs-1;
Result=[ZSC,ZC,ZCD,ZCDC,pmcs];
number_total=[number_total;Result];

