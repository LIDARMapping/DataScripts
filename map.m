figure;
angles = [];
distances = [];

tit = 'map';

while 1
	dataStr = input('.', 's');
	if(strcmp(dataStr, 'Start!')) % Initialize
		angles = [];
		distances = [];
		settings = scanf('%f %f %f\n', "C");   % Settings
		if(rows(settings) >= 3)
			tit = sprintf('Map: timebase = %d; readings per measurement = %d; degrees between measurements = %d', data(1), data(2), data(3));			
		end
		continue;
	end
	if(strcmp(dataStr, 'End!')) % Exit
		break;
	end;
	data = sscanf(dataStr, '%f %f\n', 2); % Read in values from source
	if(rows(data) != 2)
		continue;
	end
	angles = [angles pi/180.0*(data(1))];
	distances = [distances data(2)];
	polar(angles, distances);
	title(tit);
	xlabel('x distance (millimeters)');
	ylabel('y distance (millimeters)');
	pause(0.1);
end
pause(10000);
dlmwrite([tit '.txt'], [angles; distances]', ' ');
