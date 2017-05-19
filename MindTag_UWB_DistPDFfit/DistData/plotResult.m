%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 

cd Dist_D10060_N1299;
load data.txt;
dat10060 = data;

cd ../Dist_D8569_N1503;
load data.txt;
dat8560 = data;

cd ../Dist_D7560_N2107;
load data.txt;
dat7560 = data;

cd ../Dist_6560_N1503;
load data.txt;
dat6560 = data;

cd ../Dist_5560_N1503;
load data.txt;
dat5560 = data;

cd ..;

figure(1);
plot(dat10060



)