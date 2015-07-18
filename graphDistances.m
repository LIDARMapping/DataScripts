close all
clear all

% Load stuff
file = input("Data file name: ");
data = load(file);
realDist = data(:,1);
response = data(:,2);
figure

scatter(realDist, response);
hold on;

[mypoly S] = polyfit(realDist, response, 2);

S(1)

xTrend = 1.0:0.01:10;
yTrend = polyval(mypoly, xTrend);
plot(xTrend, yTrend);

slope = (yTrend(end) - yTrend(1)) /(xTrend(end) - xTrend(1))
intercept = yTrend(1) - slope * xTrend(1)

xlabel('actual distance (meters)');
ylabel('response ratio');
title('LiDAR distance ratios with white paper');
