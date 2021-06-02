p1 = [1;1];
p2 = [1;0];
p3 = [0;1];
p4 = [0;0];
p = [p1 p2 p3 p4];

t1 = 1;
t2 = 1;
t3 = 1;
t4 = 0;
t = [t1 t2 t3 t4];

net = newp([0 1;0 1],1);

bobot = [-1 1];
net.IW{1,1} = bobot;

bias =[1];
net.b{1} = bias;

y = sim(net,p);

net = train(net,p,t)

disp (net.IW{1,1})

disp (net.b{1})

