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
subplot(2, 1, 1);
plot(t, ret, t, zero);
axis([0 3000 0 5]);
xlabel('time');
ylabel('voltage');
title('signal');
legend('ret', 'zero');

% Sync
subplot(2, 1, 2);
plot(t, sync);
axis([0 3000 0 2]);
xlabel('time');
ylabel('digital');
title('sync');