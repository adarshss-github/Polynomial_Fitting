x_t = -1 + 2*rand(1,20) ;

y_t = -0.1*x_t.^3 - 0.3*x_t.^2 -0.2*x_t + 6 ;

e = 0.1*randn(1,20) ;

y_tn = y_t + e ;

p_n = [2,5,8,10,15,19] ;

y_tp = zeros(20,1,6) ;
x_ts = sort(x_t) ;

p = cell(6,1) ;


for i = 1:1:6

p{i,1} = polyfit(x_t,y_tn,p_n(i)) ;
p_dum = p{i,1} ;
y_tp(:,:,i) = polyval(p_dum,x_ts) ;


end

scatter(x_t,y_tn)
hold on
scatter(x_ts,reshape(y_tp(:,:,6),20,1))
scatter(x_t,y_t)
hold on
plot(x_t,reshape(y_tp(:,:,1),20,1))

x = -1:0.01:1 ;
y = -0.1*x.^3 - 0.3*x.^2 -0.2*x + 6 ;
plot(x,y) hold on

scatter(x_t,y_tn)
hold on
x = -1:0.01:1 ;
y = polyval(p{6,1},x) ;
plot(x,y)
xlim([-0.8,1])
ylim([-10,10])


%%===================================================================

[~,S1] = polyfit(x_t,y_tn,p_n(1)) ;
pdum = p{1,1} ;
alpha = 0.05; % Significance level
[yfit,delta] = polyconf(pdum,x_t,S1,'alpha',alpha);

scatter(x_t,y_tn)
x = -1:0.01:1 ;
y = polyval(p{1,1},x) ;
hold on 
plot(x,y)
hold on 
[x_tSr,I] = sort(x_t) ;
yfitSr = yfit(I) ;
deltaSr = delta(I) ;
plot(x_tSr,yfitSr-deltaSr,'r--',x_tSr,yfitSr+deltaSr,'r--')
%%===================================================================

%%===================================================================

[~,S1] = polyfit(x_t,y_tn,p_n(2)) ; %i
pdum = p{2,1} ; %i
alpha = 0.05; % Significance level
[yfit,delta] = polyconf(pdum,x_t,S1,'alpha',alpha);
scatter(x_t,y_tn)
x = -1:0.01:1 ;
y = polyval(p{2,1},x) ; %i
hold on 
plot(x,y)
hold on 
[x_tSr,I] = sort(x_t) ;
yfitSr = yfit(I) ;
deltaSr = delta(I) ;
plot(x_tSr,yfitSr-deltaSr,'r--',x_tSr,yfitSr+deltaSr,'r--')

%%===================================================================


[~,S1] = polyfit(x_t,y_tn,p_n(3)) ; %i
pdum = p{3,1} ; %i
alpha = 0.05; % Significance level
[yfit,delta] = polyconf(pdum,x_t,S1,'alpha',alpha);
scatter(x_t,y_tn)
x = -1:0.01:1 ;
y = polyval(p{3,1},x) ; %i
hold on 
plot(x,y)
hold on 
[x_tSr,I] = sort(x_t) ;
yfitSr = yfit(I) ;
deltaSr = delta(I) ;
plot(x_tSr,yfitSr-deltaSr,'r--',x_tSr,yfitSr+deltaSr,'r--')

%%===================================================================
%%===================================================================


[~,S1] = polyfit(x_t,y_tn,p_n(4)) ; %i
pdum = p{4,1} ; %i
alpha = 0.05; % Significance level
[yfit,delta] = polyconf(pdum,x_t,S1,'alpha',alpha);
scatter(x_t,y_tn)
x = -1:0.01:1 ;
y = polyval(p{4,1},x) ; %i
hold on 
plot(x,y)
hold on 
[x_tSr,I] = sort(x_t) ;
yfitSr = yfit(I) ;
deltaSr = delta(I) ;
plot(x_tSr,yfitSr-deltaSr,'r--',x_tSr,yfitSr+deltaSr,'r--')

%%===================================================================

%%===================================================================


[~,S1] = polyfit(x_t,y_tn,p_n(5)) ; %i
pdum = p{5,1} ; %i
alpha = 0.05; % Significance level
[yfit,delta] = polyconf(pdum,x_t,S1,'alpha',alpha);
scatter(x_t,y_tn)
x = -1:0.01:1 ;
y = polyval(p{5,1},x) ; %i
hold on 
plot(x,y)
hold on 
[x_tSr,I] = sort(x_t) ;
yfitSr = yfit(I) ;
deltaSr = delta(I) ;
plot(x_tSr,yfitSr-deltaSr,'r--',x_tSr,yfitSr+deltaSr,'r--')
ylim([4,7])

%%===================================================================
%%===================================================================


[~,S1] = polyfit(x_t,y_tn,p_n(6)) ; %i
pdum = p{6,1} ; %i
alpha = 0.05; % Significance level
[yfit,delta] = polyconf(pdum,x_t,S1,'alpha',alpha); %%Delta is NAN
scatter(x_t,y_tn)
x = -1:0.01:1 ;
y = polyval(p{6,1},x) ; %i
hold on 
plot(x,y)
hold on 
[x_tSr,I] = sort(x_t) ;
yfitSr = yfit(I) ;
deltaSr = delta(I) ; 
plot(x_tSr,yfitSr-deltaSr,'r--',x_tSr,yfitSr+deltaSr,'r--')
ylim([4,7])

%%===================================================================
figure(1)
xlim([-1,1])
ylim([4,7])

figure(2)
xlim([-1,1])
ylim([4,7])