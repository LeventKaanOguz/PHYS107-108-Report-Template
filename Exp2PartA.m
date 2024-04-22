% MATLAB Code to draw equipotential lines with symmetric points across y=10

% Define original points and voltages
voltages = [2.70, 3.50, 4.10, 7.10, 6.25, 5.55];
originalPoints = {
    [4, 10; 3.8, 11.2; 3.6, 12.2; 3.2, 13; 2.5, 14],      % 2.70V
    [7, 10; 7, 11; 7, 12; 7, 13; 6.6, 14],                % 3.50V
    [10, 10; 10, 11; 10, 12; 10, 13; 10, 14],             % 4.10V
    [24, 10; 24.5, 12; 25.5, 13; 26.4, 14; 28, 14.5],     % 7.10V
    [21, 10; 21, 8; 21.5, 6; 21.5, 5; 22, 4],             % 6.25V
    [18, 10; 18, 12; 18.5, 14; 19, 14; 19.5, 19]           % 5.55V
};

% Generating symmetric points across y=10
symmetricPoints = cellfun(@(pts) [pts(:,1), 20 - pts(:,2)], originalPoints, 'UniformOutput', false);

% Combining original and symmetric points
allPoints = cellfun(@(orig, sym) [orig; sym], originalPoints, symmetricPoints, 'UniformOutput', false);

% Colors for each voltage level
colors = ['r', 'b', 'g', 'm', 'c', 'k']; % Assigning a different color for each voltage level

% Create a figure to plot
figure;
hold on;

% Initialize plot handles array for legend including space for negative and ground
plotHandles = zeros(1, length(voltages) + 2); % +2 for negative and ground

% Plotting points and connecting them for each voltage level
for i = 1:length(voltages)
    % Combined points for original and symmetric
    pts = allPoints{i};
    
    % Plot points and lines, storing handle
    plotHandles(i) = plot(pts(:,1), pts(:,2), 'o-', 'MarkerEdgeColor', colors(i),...
                          'MarkerFaceColor', colors(i), 'Color', colors(i), 'LineWidth', 2);
end

% Additional plot settings
title('Equipotential Lines with Symmetry Across y=10');
xlabel('X Coordinate');
ylabel('Y Coordinate');
axis([0 28 0 20]); % Adjust based on your coordinate system
grid on;

% Plotting and storing handle for the negative charge and ground locations
plotHandles(end-1) = plot(0, 10, 'kp', 'MarkerSize', 10, 'MarkerFaceColor', 'blue'); % Negative Charge
plotHandles(end) = plot(28, 10, 'kp', 'MarkerSize', 10, 'MarkerFaceColor', 'yellow'); % Ground

% Generate legend labels for voltages
voltageLabels = arrayfun(@(v) sprintf('%0.2fV Line', v), voltages, 'UniformOutput', false);
% Adding labels for negative charge and ground
legendLabels = [voltageLabels, {'Negative Charge', 'Ground'}];

% Create legend using plot handles and labels
legend(plotHandles, legendLabels, 'Location', 'eastoutside');

hold off;

% Save the figure as an EPS file
saveas(gcf, 'EquipotentialLines.eps', 'epsc');

