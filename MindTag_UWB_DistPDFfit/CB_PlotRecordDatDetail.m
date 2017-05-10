%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% 

global record_count record_dat;

global handles_ana;


% record_dat1_show = zeros(3, record_count1);
% record_dat1_show = record_angle(:, 2:4)';

record_dat_show = record_dat(1, 1:record_count);

record_dat_ideal_show = record_dat(2, 1:record_count);

PlotAxes_t = [1 : record_count];

len = record_count;

axes(handles_ana.axes6);

plot(PlotAxes_t, record_dat_show(1, 1:len), '-^r');
hold on;
plot(PlotAxes_t, record_dat_ideal_show(1, 1:len), '-sb');


legend('UWB_distance', 'Ideal_distance');


grid on;
%axis([0, record_count-1, -5, 5]);
% axis([0, record_count_min-1, -4, 4]);
axis auto;
