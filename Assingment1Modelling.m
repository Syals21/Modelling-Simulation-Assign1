% STTHK2133 Modeling & Simulation
% Discrete Choice Model: Undergraduate Programme Selection (Menu-Driven)

% Clear workspace and command window
clear; clc;

% --- 1. Define the Alternatives (Choice Set) ---
programmes = {'Pure Sciences', 'Applied Sciences', 'Engineering', ...
              'Accounting', 'Management', 'Arts'};

% Define the Factors list for the input prompts
factors = {'Interest', 'Exam', 'Career', 'Location', 'Fees', 'Explore'};

% --- 2. Define Aiman's Defaults ---
% Default Ratings (Table 1)
default_ratings = [
    5, 5, 3, 3, 4, 2;  % Pure Sciences
    4, 5, 4, 3, 3, 3;  % Applied Sciences
    4, 5, 5, 2, 5, 2;  % Engineering
    3, 4, 4, 4, 4, 2;  % Accounting
    3, 3, 3, 5, 3, 3;  % Management
    2, 3, 2, 4, 2, 4   % Arts
];

% Default Weights (Table 2)
default_weights = [0.30; 0.20; 0.25; 0.10; 0.10; 0.05];

% --- 3. Main Menu Selection ---
disp('==============================================================');
disp('   DISCRETE CHOICE MODEL: PROGRAMME SELECTION SIMULATOR');
disp('==============================================================');
disp('Please choose your input method:');
disp('1. Use Aiman''s Input factors and weights (Defaults)');
disp('2. Adjust custom input factors (Maintain Aiman''s weights)');
disp('3. Use Aiman''s input factors (Adjust custom weights)');
disp('4. Custom input for BOTH factors and weights');
disp('--------------------------------------------------------------');
choice = input('Enter your choice (1-4): ');

% Initialize with defaults
ratings = default_ratings;
weights = default_weights;

% --- 4. Handle Custom Factor Ratings (Choices 2 & 4) ---
if choice == 2 || choice == 4
    disp(' ');
    disp('--- Enter Custom Factor Ratings (1-5) ---');
    disp('Please enter a rating from 1 (very low) to 5 (very high).');

    for i = 1:length(programmes)
        disp(' ');
        fprintf('>>> Ratings for %s <<<\n', programmes{i});
        for j = 1:length(factors)
            prompt = sprintf('Enter %s rating: ', factors{j});
            ratings(i, j) = input(prompt);
        end
    end
end

% --- 5. Handle Custom Weights (Choices 3 & 4) ---
if choice == 3 || choice == 4
    disp(' ');
    disp('--- Enter Custom Factor Weights ---');
    w_int = input('Weight for Interest: ');
    w_exam = input('Weight for Exam Results: ');
    w_car = input('Weight for Career: ');
    w_loc = input('Weight for Location: ');
    w_fee = input('Weight for Fees: ');
    w_exp = input('Weight for Explore: ');

    weights = [w_int; w_exam; w_car; w_loc; w_fee; w_exp];
end

% Normalize weights (ensures they sum to exactly 1)
weights = weights / sum(weights);

% --- 6. Compute Utility & Probabilities ---
% Calculate Utility: U = sum(weight * rating)
U = ratings * weights;

% Calculate Probabilities: P = e^U / sum(e^U)
exp_U = exp(U);
probabilities = exp_U / sum(exp_U);

% --- 7. Command Window Output ---
disp(' ');
disp('=======================================================');
disp('           PREDICTED CHOICE PROBABILITIES');
disp('=======================================================');
fprintf('%-20s | %-10s | %-15s\n', 'Programme', 'Utility', 'Probability (%)');
disp('-------------------------------------------------------');
for i = 1:length(programmes)
    fprintf('%-20s | %-10.4f | %-10.2f %%\n', programmes{i}, U(i), probabilities(i) * 100);
end
disp('-------------------------------------------------------');

% --- 8. Visualisation ---
figure('Name', 'Multinomial Logit Model Output', 'NumberTitle', 'off');
bar(probabilities * 100, 'FaceColor', [0.2 0.6 0.8]);
set(gca, 'XTick', 1:length(programmes), 'XTickLabel', programmes);
title('Predicted Programme Choice Probability');
xlabel('Undergraduate Programmes');
ylabel('Probability (%)');
grid on;
