close all
clear all

% Load stuff
data = load("lidarConsistentData.txt");
t = data(:,4);
sync = data(:,3);
zero = data(:,1);
ret = data(:,2);
figure

% Ret & Zero
plot(t, ret, t, zero, t, sync);
axis([0 3000 0 5]);
xlabel('time (ms)');
ylabel('voltage and high/low');
title('LiDAR sync, return, and zero pins vs. time');
legend('ret', 'zero', 'sync');
