% Define voltage levels and their corresponding points
voltages = [3.55, 4.45, 3.15];
points = {
    [8, 16; 7.5, 14; 7, 13; 6, 11; 5.5, 16], % 3.55V, reordered to make a beautiful line
    [10, 10; 11, 11; 12, 14; 12.5, 16; 13, 18], % 4.45V, reordered and beautified
    [4, 11.5; 5.5, 13; 6.5, 15; 6, 18; 7, 19] % 3.15V, reordered for aesthetics
};

% Washer details
washerCenter = [2.5, 15];
innerRadius = 0.5;
outerRadius = 1.5;

% Colors for each voltage level
colors = {'r', 'b', 'g'}; % Assigning a different color for each voltage level

% Create a figure to plot
figure;
hold on;
axis equal;
grid on;
axis([0 28 0 20]); % Size of the conductive paper
xlabel('X Coordinate');
ylabel('Y Coordinate');
title('Equipotential Lines with Washer');

% Plotting washer
viscircles(washerCenter, innerRadius, 'Color', 'k', 'LineWidth', 2);
viscircles(washerCenter, outerRadius, 'Color', 'k', 'LineWidth', 2);

% Plotting points and connecting them for each voltage level
for i = 1:length(voltages)
    % Plotting equipotential lines
    plot(points{i}(:,1), points{i}(:,2), '-o', 'Color', colors{i},...
         'MarkerEdgeColor', colors{i}, 'MarkerFaceColor', colors{i},...
         'DisplayName', sprintf('%.2fV', voltages(i)));
end

% Plotting the negative charge and ground
plot(0, 10, 'kp', 'MarkerSize', 12, 'MarkerFaceColor', 'blue', 'DisplayName', 'Negative Charge');
plot(28, 10, 'kp', 'MarkerSize', 12, 'MarkerFaceColor', 'yellow', 'DisplayName', 'Ground');

% Adding legend
legend('Location', 'eastoutside');

hold off;

% Save the figure as an EPS file
saveas(gcf, 'EquipotentialLinesWithWasher.eps', 'epsc');
