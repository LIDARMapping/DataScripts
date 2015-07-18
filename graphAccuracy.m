close all
clear all

% Load stuff
file = input("Data file name: ");
data = load(file);
control = data(:,1);
dist = data(:,2);

avg = sum(dist)/size(dist)(1)

accuracy = 100*abs((dist .- avg)./avg);

figure

scatter(control, accuracy);
hold on;


%{
mypoly = polyfit(control, dist, 2);

xTrend = 1:255;
yTrend = polyval(mypoly, xTrend);
plot(xTrend, yTrend);

slope = (yTrend(end) - yTrend(1)) /(xTrend(end) - xTrend(1))
intercept = yTrend(1) - slope * xTrend(1)

%}

xlabel('Control Signal Input');
ylabel('Deviation from average response (%)');
title('Accuracy of LiDAR Sensor During a .6 Second Measurement Period with Varying Sync Periods');