% Define the list of CSV file names
fileNames = {'1.csv', '1a.csv', '1b.csv', '1c.csv', '2.csv', '2a.csv', '2b.csv', '2c.csv', ...
             '3.csv', '3a.csv', '3b.csv', '4.csv', '5.csv', '6.csv', '7.csv'};

% Determine the number of files
numFiles = length(fileNames);

% Calculate the number of subplots needed based on the number of files
numSubplotsPerRow = ceil(sqrt(numFiles));
numSubplotsPerCol = ceil(numFiles / numSubplotsPerRow);

% Create a figure for collective subplots
figure;

% Loop through each file to plot its data in a subplot
for i = 1:numFiles
    % Read the data from the current CSV file
    data = readmatrix(fileNames{i});
    
    % Extract the last two columns for plotting
    % Time as X-axis (-2th column) and Charge on Ice Pail as Y-axis (-1th column)
    Time = data(:, end-1);
    ChargeOnIcePail = data(:, end);
    
    % Create a subplot for the current file's data
    subplot(numSubplotsPerRow, numSubplotsPerCol, i);
    plot(Time, ChargeOnIcePail);
    title(fileNames{i}, 'Interpreter', 'none'); % Use file name as title, disabling interpreter to show underscores
    xlabel('Time'); % Label for X-axis
    ylabel('Charge on Ice Pail'); % Label for Y-axis
end

% Adjusting subplot spacing manually (Example values, you might need to adjust these)
set(gcf, 'Position', [100, 100, 1049, 895]); % Adjust the figure size
for i = 1:numFiles
    % This is an illustrative way to adjust each subplot's position manually if needed
    % subplot('Position', [left bottom width height]) % Example syntax
end

% Save the collective figure as EPS
saveas(gcf, 'CollectivePlots.eps', 'epsc');
