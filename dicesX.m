function dicesX(num_rolls)
% DICESX Imitate a game of dice
%   DICESX(NUM_ROLLS) rolls a dice NUM_ROLLS times and prints the results
%   as a row vector. Each roll produces a random integer between 1 and 6.
%
%   Inputs:
%       num_rolls - Number of dice rolls (positive integer)
%
%   Outputs:
%       None
% Generate the random dice rolls
results = randi([1, 6], 1, num_rolls);

% Display the results
disp('Rolled numbers:');
disp(results);
end
%Use dicesX(5) to call the function.

