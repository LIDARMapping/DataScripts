figure;
angles = [];
distances = [];

while 1
	dataStr = input('.', 's');
	if(strcmp(dataStr, 'Start!'))
		angles = [];
		distances = [];
		continue;
	end
	data = sscanf(dataStr, '%f %f\n', 2); % Read in values from source
	if(rows(data) != 2)
		continue;
	end
	angles = [angles pi/180.0*(data(1))];
	distances = [distances data(2)];
	polar(angles, distances);
	pause(0.1);
end
