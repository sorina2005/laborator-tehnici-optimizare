clear, clc;

exact_value = 100;
absolute_error = 2;

lower_bound = exact_value - absolute_error;
upper_bound = exact_value + absolute_error;

fprintf('Intervalul de incertitudine este: [%.2f, %.2f] cm\n', lower_bound, upper_bound);

approx_x = (lower_bound + upper_bound) / 2;
max_abs_error = (upper_bound - lower_bound) / 2;

fprintf('Aproximatia mai precisa a lui x: %.2f cm\n', approx_x);
fprintf('Eroarea absoluta maxima: %.2f cm\n', max_abs_error);
