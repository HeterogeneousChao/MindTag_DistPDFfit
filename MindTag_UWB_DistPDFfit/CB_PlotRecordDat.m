%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% 

global record_count  record_dat;

% record_dat_show = zeros(3, record_count1);
% % record_dat_show = record_dat1(:, 2:4)';

PlotAxes_t = [1 : record_count];

axes(handles.axes8);
hold off;
plot(PlotAxes_t, record_dat(1, 2:record_count+1), '-*r');
hold on;
plot(PlotAxes_t, record_dat(2, 2:record_count+1), '-sg');

legend('Real', 'Ideal');

grid on;
axis([0, record_count, 0, 5000]);
