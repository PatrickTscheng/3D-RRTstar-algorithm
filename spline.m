function  spline(cpts, m)

if m == 3
    Label1 = "X";
    Label2 = "Z";
else
    if m == 2
        Label1 = "Y";
        Label2 = "Z";
    else 
        Label1 = "X";
        Label2 = "Y";
    end
end
% b spline
tpts = [0 3];
tvec = 0:0.01:3;
[q, qd, qdd, ~] = bsplinepolytraj(cpts,tpts,tvec);


figure % plot1 x,y origin poly and spline poly
subplot(2,2,1);
plot(cpts(1,:),cpts(2,:),'xb-')
hold all
plot(q(1,:), q(2,:))
xlabel(Label1)
ylabel(Label2)
hold off

subplot(2,2,2); % plot2 x,y pos,vel, acc,
plot(tvec,q)
xlabel('t')
ylabel('Position Value')
legend(Label1+"-positions",Label2 + "-positions")
hold all
subplot(2,2,3);
plot(tvec,qd,'x')
xlabel('t')
ylabel('Velocity Value')
legend(Label1 + "-velocity",Label2 + "-velocity")
hold all
subplot(2,2,4);
plot(tvec,qdd,'--')
xlabel('t')
ylabel('Acceleration Value')
legend(Label1 + "-acceleration",Label2 + "-acceleration")
hold off
end