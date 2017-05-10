%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%% Gesture Roll analyse 
%%%%
%%%%            ZHAOCHAO
%%%%                2016-11-08
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%

clear all;

figure(1);
figure(2);

%%%% roll-origin 

load data_origin_slow.dat

ori_dat = data_origin_slow;

index_left = find(ori_dat(:,1) == 0);
origin_left_att = ori_dat(index_left, 2:4);
origin_left_acc = ori_dat(index_left, 8:10);
origin_left_gyro = ori_dat(index_left, 5:7);


index_right = find(ori_dat(:,1) == 2);
origin_right_att = ori_dat(index_right, 2:4);
origin_right_acc = ori_dat(index_right, 8:10);
origin_right_gyro = ori_dat(index_right, 5:7);

figure(1);
% att
% x-t, y-z
subplot(2,3,1);
tmp_t = [1: 1: size(origin_left_att(:,1), 1)];
plot(tmp_t, origin_left_att(:,2), 'rs-');
hold on;
tmp_t = [1: 1: size(origin_right_att(:,1), 1)];
plot(tmp_t, origin_right_att(:,2), 'b*-');
grid on;
legend('left', 'right');
title('origin-angle');

% acc
% x-x, y-z
subplot(2,3,4);
tmp_t = [1: 1: size(origin_left_acc(:,2), 1)];
plot(tmp_t, origin_left_acc(:,2), 'rs-');
hold on;
tmp_t = [1: 1: size(origin_right_acc(:,2), 1)];
plot(tmp_t, origin_right_acc(:,2), 'b*-');
grid on;
legend('left', 'right');
title('origin-acc');

figure(2);
% att
% x-t, y-z
subplot(2,3,1);
tmp_t = [1: 1: size(origin_left_att(:,1), 1)];
plot(tmp_t, origin_left_att(:,2), 'rs-');
hold on;
tmp_t = [1: 1: size(origin_right_att(:,1), 1)];
plot(tmp_t, origin_right_att(:,2), 'b*-');
grid on;
legend('left', 'right');
title('origin-angle');

% acc
% x-x, y-z
subplot(2,3,4);
plot(origin_left_acc(:,2), origin_left_acc(:,3), 'rs-');
hold on;
plot(origin_right_acc(:,2), origin_right_acc(:,3), 'b*-');
grid on;
legend('left', 'right');
title('origin-acc');


%%%% roll-remote

load data_remote_slow.dat

rem_dat = data_remote_slow;

index_left = find(rem_dat(:,1) == 0);
remote_left_att = rem_dat(index_left, 2:4);
remote_left_acc = rem_dat(index_left, 8:10);
remote_left_gyro = rem_dat(index_left, 5:7);

index_right = find(rem_dat(:,1) == 2);
remote_right_att = rem_dat(index_right, 2:4);
remote_right_acc = rem_dat(index_right, 8:10);
remote_right_gyro = rem_dat(index_right, 5:7);

figure(1);
% att
% x-x, y-z
subplot(2,3,2);
tmp_t = [1: 1: size(remote_left_att(:,1), 1)];
plot(tmp_t, remote_left_att(:,2), 'rs-');
hold on;
tmp_t = [1: 1: size(remote_right_att(:,1), 1)];
plot(tmp_t, remote_right_att(:,2), 'b*-');
grid on;
legend('left', 'right');
title('remote-angle');

% acc
% x-x, y-z
subplot(2,3,5);
tmp_t = [1: 1: size(remote_left_acc(:,1), 1)];
plot(tmp_t, remote_left_acc(:,2), 'rs-');
hold on;
tmp_t = [1: 1: size(remote_right_acc(:,1), 1)];
plot(tmp_t, remote_right_acc(:,2), 'b*-');
grid on;
legend('left', 'right');
title('remote-acc');


figure(2);
% att
% x-x, y-z
subplot(2,3,2);
tmp_t = [1: 1: size(remote_left_att(:,1), 1)];
plot(tmp_t, remote_left_att(:,2), 'rs-');
hold on;
tmp_t = [1: 1: size(remote_right_att(:,1), 1)];
plot(tmp_t, remote_right_att(:,2), 'b*-');
grid on;
legend('left', 'right');
title('remote-angle');

% acc
% x-x, y-z
subplot(2,3,5);
plot(remote_left_acc(:,1), remote_left_acc(:,2), 'rs-');
hold on;
plot(remote_right_acc(:,1), remote_right_acc(:,2), 'b*-');
grid on;
legend('left', 'right');
title('remote-acc');


%%%% roll-dual

load data_dual_slow.dat

dua_dat = data_dual_slow;

index_left = find(dua_dat(:,1) == 0);
dual_left_att = dua_dat(index_left, 2:4);
dual_left_acc = dua_dat(index_left, 8:10);
dual_left_gyro = dua_dat(index_left, 5:7);

index_right = find(dua_dat(:,1) == 2);
dual_right_att = dua_dat(index_right, 2:4);
dual_right_acc = dua_dat(index_right, 8:10);
dual_right_gyro = dua_dat(index_right, 5:7);


figure(1);
% att
% x-x, y-z
subplot(2,3,3);
tmp_t = [1: 1: size(dual_left_att(:,1), 1)];
plot(tmp_t, dual_left_att(:,2), 'rs-');
hold on;
tmp_t = [1: 1: size(dual_right_att(:,1), 1)];
plot(tmp_t, dual_right_att(:,2), 'b*-');
grid on;
legend('left', 'right');
title('dual-angle');

% acc
% x-x, y-z
subplot(2,3,6);
tmp_t = [1: 1: size(dual_left_acc(:,1), 1)];
plot(tmp_t, dual_left_acc(:,2), 'rs-');
hold on;
tmp_t = [1: 1: size(dual_right_acc(:,1), 1)];
plot(tmp_t, dual_right_acc(:,2), 'b*-');
grid on;
legend('left', 'right');
title('dual-acc');


figure(2);
% att
% x-x, y-z
subplot(2,3,3);
tmp_t = [1: 1: size(dual_left_att(:,1), 1)];
plot(tmp_t, dual_left_att(:,2), 'rs-');
hold on;
tmp_t = [1: 1: size(dual_right_att(:,1), 1)];
plot(tmp_t, dual_right_att(:,2), 'b*-');
grid on;
legend('left', 'right');
title('dual-angle');

% acc
% x-x, y-z
subplot(2,3,6);
plot(dual_left_acc(:,2), dual_left_acc(:,3), 'rs-');
hold on;
plot(dual_right_acc(:,2), dual_right_acc(:,3), 'b*-');
grid on;
legend('left', 'right');
title('dual-acc');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%  Origin
%%%%  delta-theta

SLIDE_WINDOWS_WIDTH = 0;

origin_size = min(min(size(origin_left_att, 1), size(origin_left_acc, 1)), ...
    min(size(origin_right_att, 1), size(origin_right_acc, 1))) - SLIDE_WINDOWS_WIDTH;

delta_origin_left_att = zeros(origin_size, 3);
delta_origin_left_acc = zeros(origin_size, 3);
delta_origin_left_gyro = zeros(origin_size, 3);
delta_origin_left_t = zeros(origin_size, 1);

delta_origin_right_att = zeros(origin_size, 3);
delta_origin_right_acc = zeros(origin_size, 3);
delta_origin_right_gyro = zeros(origin_size, 3);
delta_origin_right_t = zeros(origin_size, 1);

% origin_left_att & origin_left_acc
% origin_right_att & origin_right_acc
for index = 1 : origin_size
    delta_origin_left_att(index, :) = sum(origin_left_att(index : (index + SLIDE_WINDOWS_WIDTH), :))/(SLIDE_WINDOWS_WIDTH + 1);
    delta_origin_left_acc(index, :) = sum(origin_left_acc(index : (index + SLIDE_WINDOWS_WIDTH), :))/(SLIDE_WINDOWS_WIDTH + 1);
    delta_origin_left_gyro(index, :) = sum(origin_left_gyro(index : (index + SLIDE_WINDOWS_WIDTH), :))/(SLIDE_WINDOWS_WIDTH + 1);
    
    delta_origin_right_att(index, :) = sum(origin_right_att(index : (index + SLIDE_WINDOWS_WIDTH), :))/(SLIDE_WINDOWS_WIDTH + 1);
    delta_origin_right_acc(index, :) = sum(origin_right_acc(index : (index + SLIDE_WINDOWS_WIDTH), :))/(SLIDE_WINDOWS_WIDTH + 1);
    delta_origin_right_gyro(index, :) = sum(origin_right_gyro(index : (index + SLIDE_WINDOWS_WIDTH), :))/(SLIDE_WINDOWS_WIDTH + 1);
end

% for index = 1 : origin_size -1
%    delta_origin_left_acc(index, :) = origin_left_acc(index + 1, :) - origin_left_acc(index, :); 
% %    delta_origin_left_t(index) = sum(delta_origin_left_att(index, 1) / delta_origin_left_gyro(index, 1) ...
% %                                     + delta_origin_left_att(index, 2) / delta_origin_left_gyro(index, 2) ...
% %                                     + delta_origin_left_att(index, 3) / delta_origin_left_gyro(index, 3)) / 3;
%    
%    delta_origin_right_acc(index, :) = origin_right_acc(index + 1, :) - origin_right_acc(index, :);
% %    delta_origin_right_t(index) = sum(delta_origin_right_att(index, 1) / delta_origin_right_gyro(index, 1) ...
% %                                     + delta_origin_right_att(index, 2) / delta_origin_right_gyro(index, 2) ...
% %                                     + delta_origin_right_att(index, 3) / delta_origin_right_gyro(index, 3)) / 3;
% 
% end

delta_origin_right_acc = origin_right_acc(1:origin_size, :);
delta_origin_left_acc = origin_left_acc(1:origin_size, :);

% % % delta_origin_acc = (delta_origin_left_acc - delta_origin_right_acc) / 2;
% % % delta_origin_acc_ave = (delta_origin_left_acc + delta_origin_right_acc) / 2;  
% % % 
% % % delta_origin_gyro = (delta_origin_left_gyro - delta_origin_right_gyro) / 2;
% % % delta_origin_att = (delta_origin_left_att - delta_origin_right_att) / 2;

delta_origin_acc = (delta_origin_left_acc - delta_origin_right_acc);
delta_origin_acc_ave = (delta_origin_left_acc + delta_origin_right_acc);  

delta_origin_gyro = (delta_origin_left_gyro - delta_origin_right_gyro);
delta_origin_att = (delta_origin_left_att - delta_origin_right_att);




m_delta_origin_acc = zeros(1, origin_size);
m_delta_origin_gyro = zeros(1, origin_size);

m_delta_origin_acc_sc = zeros(1, origin_size);
m_delta_origin_gyro_sc = zeros(1, origin_size); 
m_delta_origin_acc_sc_ave = zeros(1, origin_size);

for index = 1 : origin_size

    m_delta_origin_acc(index) = sign(delta_origin_att(index)) * sqrt( abs(delta_origin_acc(index, 2) .* delta_origin_acc(index, 2) ...
                            + delta_origin_acc(index, 3) .* delta_origin_acc(index, 3)));
    m_delta_origin_gyro(index) = sign(delta_origin_att(index)) * sqrt( abs(delta_origin_left_gyro(index, 2) .* delta_origin_gyro(index, 2) ...
                            + delta_origin_gyro(index, 3) .* delta_origin_gyro(index, 3)));
    
% % %     m_delta_origin_acc_sc(index) = sqrt( abs(delta_origin_acc(index, 2) .* delta_origin_acc(index, 2) ...
% % %                             + delta_origin_acc(index, 3) .* delta_origin_acc(index, 3)));
% % %     m_delta_origin_gyro_sc(index) = sqrt( abs(delta_origin_left_gyro(index, 2) .* delta_origin_gyro(index, 2) ...
% % %                             + delta_origin_gyro(index, 3) .* delta_origin_gyro(index, 3)));

    m_delta_origin_acc_sc(index) = sqrt( abs(delta_origin_acc(index, 2) .* delta_origin_acc(index, 2)));
    m_delta_origin_gyro_sc(index) = sqrt( abs(delta_origin_gyro(index, 2) .* delta_origin_gyro(index, 2)));
                        
    m_delta_origin_acc_sc_ave(index) = sqrt( abs(delta_origin_acc_ave(index, 2) .* delta_origin_acc_ave(index, 2)));
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%
% % % %     m_delta_origin_acc = delta_origin_acc(:, 2)'; 
% % % %     m_delta_origin_gyro = delta_origin_gyro(:, 2)';



% % % tmp_origin_left_att ./ delta_origin_left_acc
% % % delta_origin_left_att ./ delta_origin_left_acc
% % % delta_origin_left_gyro ./ delta_origin_left_acc
% % % delta_origin_left_gyro ./ delta_origin_acc 

kdt = (m_delta_origin_gyro ./ m_delta_origin_acc);

%%%% mean
display('origin[m_gyro/m_delta_acc]_mean: ');
mean(kdt)

%%%% var
display('origin[m_gyro/m_delta_acc]_var: ')
var(kdt)

%%%% std
display('origin[m_gyro/m_delta_acc]_std: ')
std(kdt)

% % % origin_left_dt = sum(delta_origin_left_t) / (size(delta_origin_left_t, 1)-1)
% % % origin_right_dt = sum(delta_origin_right_t) / (size(delta_origin_right_t, 1)-1)
% % % 
% % % origin_left_vec = delta_origin_left_acc .* origin_left_dt;
% % % origin_right_vec = delta_origin_right_acc .* origin_right_dt;



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%  Slide_Windows_Filter
%%%%  Origin:

SLIDE_WINDOWS_WIDTH = 30;

origin_size = size(m_delta_origin_acc, 2) - SLIDE_WINDOWS_WIDTH;

fm_delta_origin_acc = zeros(size(m_delta_origin_acc));
fm_delta_origin_acc_sc = zeros(size(m_delta_origin_acc_sc));
fm_delta_origin_acc_sc_ave = zeros(size(m_delta_origin_acc_sc_ave));
fm_origin_att = zeros(size(m_delta_origin_acc_sc));

for index = 1 : origin_size 
    fm_delta_origin_acc(index) = sum(m_delta_origin_acc(index : (index + SLIDE_WINDOWS_WIDTH)))/(SLIDE_WINDOWS_WIDTH + 1);
    fm_delta_origin_acc_sc(index) = sum(m_delta_origin_acc_sc(index : (index + SLIDE_WINDOWS_WIDTH)))/(SLIDE_WINDOWS_WIDTH + 1);
    
    fm_delta_origin_acc_sc_ave(index) = sum(m_delta_origin_acc_sc_ave(index : (index + SLIDE_WINDOWS_WIDTH)))/(SLIDE_WINDOWS_WIDTH + 1);
    fm_origin_att(index) = sum(delta_origin_att(index : (index + SLIDE_WINDOWS_WIDTH), 2))/(SLIDE_WINDOWS_WIDTH + 1);
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55
%%%% Get the scale
%%%% Origin:
%
% origin_scale = ((fm_delta_origin_acc_sc(1:origin_size))./(fm_delta_origin_acc_sc(1:origin_size) + fm_delta_origin_acc_sc_ave(1:origin_size)));

origin_scale = abs((fm_delta_origin_acc_sc(1:origin_size))./ fm_origin_att(1:origin_size));


origin_att_output = fm_origin_att(1:origin_size) .* origin_scale;


%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%  Slide_Windows_Filter
%%%%  Origin_att:

SLIDE_WINDOWS_WIDTH = 30;

origin_size = size(origin_att_output, 2) - SLIDE_WINDOWS_WIDTH;

f_origin_att_output = zeros(1, origin_size);

for index = 1 : origin_size 
    f_origin_att_output(index) = sum(origin_att_output(index : (index + SLIDE_WINDOWS_WIDTH)))/(SLIDE_WINDOWS_WIDTH + 1);
end




figure(4);

subplot(1, 2, 1);
tmp_t = [1: 1: size(m_delta_origin_acc, 2)];
plot(tmp_t, m_delta_origin_acc', 'rs-');
hold on;
tmp_t = [1: 1: size(delta_origin_att(:,1), 1)];
plot(tmp_t, delta_origin_att(:,2), 'b*-');
grid on;

tmp_t = [1: 1: size(fm_delta_origin_acc, 2)];
plot(tmp_t, fm_delta_origin_acc, 'g^-');
legend('base-acc', 'ekf-att', 'filtered');
title('-- Origin --');


figure(5);

subplot(1, 2, 1);
tmp_t = [1: 1: size(m_delta_origin_acc_sc, 2)];
plot(tmp_t, m_delta_origin_acc_sc, 'rs-');
hold on;
tmp_t = [1: 1: size(delta_origin_att(:,1), 1)];
plot(tmp_t, delta_origin_att(:,2), 'b*-');
grid on;

tmp_t = [1: 1: size(fm_delta_origin_acc_sc, 2)];
plot(tmp_t, fm_delta_origin_acc_sc, 'g^-');
legend('base-acc', 'ekf-att', 'filtered');
title('-- Origin --');


figure(6);

subplot(1, 2, 1);
tmp_t = [1: 1: size(m_delta_origin_acc_sc, 2)];
plot(tmp_t, m_delta_origin_acc_sc, 'rs-');
hold on;
tmp_t = [1: 1: size(delta_origin_att(:,1), 1)];
plot(tmp_t, delta_origin_att(:,2), 'b*-');
grid on;

tmp_t = [1: 1: size(f_origin_att_output, 2)];
plot(tmp_t, f_origin_att_output, 'g^-');
legend('base-acc', 'ekf-att', 'output');
title('-- Origin --');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%  Remote 
%%%%  delta-theta

SLIDE_WINDOWS_WIDTH = 0;

remote_size = min(min(size(remote_left_att, 1), size(remote_left_acc, 1)), ...
    min(size(remote_right_att, 1), size(remote_right_acc, 1))) - SLIDE_WINDOWS_WIDTH;

delta_remote_left_att = zeros(remote_size, 3);
delta_remote_left_acc = zeros(remote_size, 3);
delta_remote_left_gyro = zeros(remote_size, 3);
delta_remote_left_t = zeros(remote_size, 1);

delta_remote_right_att = zeros(remote_size, 3);
delta_remote_right_acc = zeros(remote_size, 3);
delta_remote_right_gyro = zeros(remote_size, 3);
delta_remote_right_t = zeros(remote_size, 1);

% origin_left_att & origin_left_acc
% origin_right_att & origin_right_acc
for index = 1 : remote_size
    delta_remote_left_att(index, :) = sum(remote_left_att(index : (index + SLIDE_WINDOWS_WIDTH), :))/(SLIDE_WINDOWS_WIDTH + 1);
    delta_remote_left_acc(index, :) = sum(remote_left_acc(index : (index + SLIDE_WINDOWS_WIDTH), :))/(SLIDE_WINDOWS_WIDTH + 1);
    delta_remote_left_gyro(index, :) = sum(remote_left_gyro(index : (index + SLIDE_WINDOWS_WIDTH), :))/(SLIDE_WINDOWS_WIDTH + 1);
    
    delta_remote_right_att(index, :) = sum(remote_right_att(index : (index + SLIDE_WINDOWS_WIDTH), :))/(SLIDE_WINDOWS_WIDTH + 1);
    delta_remote_right_acc(index, :) = sum(remote_right_acc(index : (index + SLIDE_WINDOWS_WIDTH), :))/(SLIDE_WINDOWS_WIDTH + 1);
    delta_remote_right_gyro(index, :) = sum(remote_right_gyro(index : (index + SLIDE_WINDOWS_WIDTH), :))/(SLIDE_WINDOWS_WIDTH + 1);
end

% % % for index = 1 : remote_size -1
% % %    delta_remote_left_acc(index, :) = remote_left_acc(index + 1, :) - remote_left_acc(index, :); 
% % % %    delta_origin_left_t(index) = sum(delta_origin_left_att(index, 1) / delta_origin_left_gyro(index, 1) ...
% % % %                                     + delta_origin_left_att(index, 2) / delta_origin_left_gyro(index, 2) ...
% % % %                                     + delta_origin_left_att(index, 3) / delta_origin_left_gyro(index, 3)) / 3;
% % %    
% % %    delta_remote_right_acc(index, :) = remote_right_acc(index + 1, :) - remote_right_acc(index, :);
% % % %    delta_origin_right_t(index) = sum(delta_origin_right_att(index, 1) / delta_origin_right_gyro(index, 1) ...
% % % %                                     + delta_origin_right_att(index, 2) / delta_origin_right_gyro(index, 2) ...
% % % %                                     + delta_origin_right_att(index, 3) / delta_origin_right_gyro(index, 3)) / 3;
% % % 
% % % end

delta_remote_left_acc = remote_left_acc(1:remote_size, :);
delta_remote_right_acc = remote_right_acc(1:remote_size, :);


% % % delta_remote_acc = (delta_remote_left_acc - delta_remote_right_acc) / 2;
% % % delta_remote_acc_ave = (delta_remote_left_acc + delta_remote_right_acc) / 2;
% % % delta_remote_gyro = (delta_remote_left_gyro - delta_remote_right_gyro) / 2;
% % % delta_remote_att = (delta_remote_left_att - delta_remote_right_att) / 2;


delta_remote_acc = (delta_remote_left_acc - delta_remote_right_acc);
delta_remote_acc_ave = (delta_remote_left_acc + delta_remote_right_acc);
delta_remote_gyro = (delta_remote_left_gyro - delta_remote_right_gyro);
delta_remote_att = (delta_remote_left_att - delta_remote_right_att);



m_delta_remote_acc = zeros(1, remote_size);
m_delta_remote_gyro = zeros(1, remote_size);

m_delta_remote_acc_sc = zeros(1, remote_size);
m_delta_remote_acc_sc_ave = zeros(1, remote_size);
m_delta_remote_gyro_sc = zeros(1, remote_size);

for index = 1 : remote_size

    m_delta_remote_gyro(index) = sign(delta_remote_att(index, 2)) * sqrt( abs(delta_remote_gyro(index, 2) .* delta_remote_gyro(index, 2) ...
                            + delta_remote_gyro(index, 3) .* delta_remote_gyro(index, 3)));
                        
    m_delta_remote_acc(index) = sign(delta_remote_att(index, 2)) * sqrt( abs(delta_remote_acc(index, 2) .* delta_remote_acc(index, 2) ...
                            + delta_remote_acc(index, 3) .* delta_remote_acc(index, 3)));

    
% % %     m_delta_remote_gyro_sc(index) = sqrt( abs(delta_remote_gyro(index, 2) .* delta_remote_gyro(index, 2) ...
% % %                             + delta_remote_gyro(index, 3) .* delta_remote_gyro(index, 3)));
% % %                         
% % %     m_delta_remote_acc_sc(index) = sqrt(abs(delta_remote_acc(index, 2) .* delta_remote_acc(index, 2) ...
% % %                             + delta_remote_acc(index, 3) .* delta_remote_acc(index, 3)));

    m_delta_remote_gyro_sc(index) = sqrt( abs(delta_remote_gyro(index, 2) .* delta_remote_gyro(index, 2)));
                        
    m_delta_remote_acc_sc(index) = sqrt(abs(delta_remote_acc(index, 2) .* delta_remote_acc(index, 2)));

    m_delta_remote_acc_sc_ave(index) = sqrt(abs(delta_remote_acc_ave(index, 2) .*  delta_remote_acc_ave(index, 2)));

end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%
% % % %     m_delta_remote_acc = delta_remote_acc(:, 2)'; 
% % % %     m_delta_remote_gyro = delta_remote_gyro(:, 2)';
    


% % % tmp_origin_left_att ./ delta_origin_left_acc
% % % delta_origin_left_att ./ delta_origin_left_acc
% % % delta_origin_left_gyro ./ delta_origin_left_acc
% % % delta_origin_left_gyro ./ delta_origin_acc 

kdt = (m_delta_remote_gyro ./ m_delta_remote_acc);

%%%% mean
display('Remote[m_gyro/m_delta_acc]_mean: ');
mean(kdt)

%%%% var
display('Remote[m_gyro/m_delta_acc]_var: ');
var(kdt)

%%%% std
display('Remote[m_gyro/m_delta_acc]_std: ');
std(kdt)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%  Slide_Windows_Filter
%%%%  Remote

SLIDE_WINDOWS_WIDTH = 30;

remote_size = size(m_delta_remote_acc, 2)  - SLIDE_WINDOWS_WIDTH;

fm_delta_remote_acc = zeros(size(m_delta_remote_acc));
fm_delta_remote_acc_sc = zeros(size(m_delta_remote_acc_sc));
fm_delta_remote_acc_sc_ave = zeros(size(m_delta_remote_acc_sc));


for index = 1 : remote_size
    fm_delta_remote_acc(index) = sum(m_delta_remote_acc(index : (index + SLIDE_WINDOWS_WIDTH)))/(SLIDE_WINDOWS_WIDTH + 1);
    fm_delta_remote_acc_sc(index) = sum(m_delta_remote_acc_sc(index : (index + SLIDE_WINDOWS_WIDTH)))/(SLIDE_WINDOWS_WIDTH + 1);
    
    fm_delta_remote_acc_sc_ave(index) = sum(m_delta_remote_acc_sc_ave(index : (index + SLIDE_WINDOWS_WIDTH)))/(SLIDE_WINDOWS_WIDTH + 1);
    fm_remote_att(index) = sum(delta_remote_att(index : (index + SLIDE_WINDOWS_WIDTH), 2))/(SLIDE_WINDOWS_WIDTH + 1);
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55
%%%% Get the scale
%%%% Remote:
%remote_scale = ((fm_delta_remote_acc_sc(1:remote_size))./(fm_delta_remote_acc_sc(1:remote_size) + fm_delta_remote_acc_sc_ave(1:remote_size)));

remote_scale = abs((fm_delta_remote_acc_sc(1:remote_size))./(fm_remote_att(1:remote_size)));

remote_att_output = fm_remote_att(1:remote_size) .* remote_scale;



%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%  Slide_Windows_Filter
%%%%  Remote_att:

SLIDE_WINDOWS_WIDTH = 30;

remote_size = size(remote_att_output, 2) - SLIDE_WINDOWS_WIDTH;

f_remote_att_output = zeros(1, remote_size);

for index = 1 : remote_size 
    f_remote_att_output(index) = sum(remote_att_output(index : (index + SLIDE_WINDOWS_WIDTH)))/(SLIDE_WINDOWS_WIDTH + 1);
end


figure(4);

subplot(1, 2, 2);
tmp_t = [1: 1: size(m_delta_remote_acc, 2)];
plot(tmp_t, m_delta_remote_acc, 'rs-');
hold on;
tmp_t = [1: 1: size(delta_remote_att(:,1), 1)];
plot(tmp_t, delta_remote_att(:,2), 'b*-');
grid on;

tmp_t = [1: 1: size(fm_delta_remote_acc, 2)];
plot(tmp_t, fm_delta_remote_acc, 'g^-');
legend('base-acc', 'ekf-att', 'filtered');
title('-- Remote --');


figure(5);

subplot(1, 2, 2);
tmp_t = [1: 1: size(m_delta_remote_acc_sc, 2)];
plot(tmp_t, m_delta_remote_acc_sc, 'rs-');
hold on;
tmp_t = [1: 1: size(delta_remote_att(:,1), 1)];
plot(tmp_t, delta_remote_att(:,2), 'b*-');
grid on;

tmp_t = [1: 1: size(fm_delta_remote_acc_sc, 2)];
plot(tmp_t, fm_delta_remote_acc_sc, 'g^-');
legend('base-acc-sc', 'ekf-att', 'filtered-sc');
title('-- Remote --');





figure(6);

subplot(1, 2, 2);
tmp_t = [1: 1: size(m_delta_remote_acc_sc, 2)];
plot(tmp_t, m_delta_remote_acc_sc, 'rs-');
hold on;
tmp_t = [1: 1: size(delta_remote_att(:,1), 1)];
plot(tmp_t, delta_remote_att(:,2), 'b*-');
grid on;

tmp_t = [1: 1: size(f_remote_att_output, 2)];
plot(tmp_t, f_remote_att_output, 'g^-');
legend('base-acc', 'ekf-att', 'output');
title('-- Remote --');





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%  Dual
%%%%  delta-theta

SLIDE_WINDOWS_WIDTH = 0;

dual_size = min(min(size(dual_left_att, 1), size(dual_left_acc, 1)), ...
    min(size(dual_right_att, 1), size(dual_right_acc, 1))) - SLIDE_WINDOWS_WIDTH;

delta_dual_left_att = zeros(dual_size, 3);
delta_dual_left_acc = zeros(dual_size, 3);
delta_dual_left_gyro = zeros(dual_size, 3);
delta_dual_left_t = zeros(dual_size, 1);

delta_dual_right_att = zeros(dual_size, 3);
delta_dual_right_acc = zeros(dual_size, 3);
delta_dual_right_gyro = zeros(dual_size, 3);
delta_dual_right_t = zeros(dual_size, 1);

% origin_left_att & origin_left_acc
% origin_right_att & origin_right_acc
for index = 1 : dual_size
    delta_dual_left_att(index, :) = sum(dual_left_att(index : (index + SLIDE_WINDOWS_WIDTH), :))/(SLIDE_WINDOWS_WIDTH + 1);
    delta_dual_left_acc(index, :) = sum(dual_left_acc(index : (index + SLIDE_WINDOWS_WIDTH), :))/(SLIDE_WINDOWS_WIDTH + 1);
    delta_dual_left_gyro(index, :) = sum(dual_left_gyro(index : (index + SLIDE_WINDOWS_WIDTH), :))/(SLIDE_WINDOWS_WIDTH + 1);
    
    delta_dual_right_att(index, :) = sum(dual_right_att(index : (index + SLIDE_WINDOWS_WIDTH), :))/(SLIDE_WINDOWS_WIDTH + 1);
    delta_dual_right_acc(index, :) = sum(dual_right_acc(index : (index + SLIDE_WINDOWS_WIDTH), :))/(SLIDE_WINDOWS_WIDTH + 1);
    delta_dual_right_gyro(index, :) = sum(dual_right_gyro(index : (index + SLIDE_WINDOWS_WIDTH), :))/(SLIDE_WINDOWS_WIDTH + 1);
end

% for index = 1 : origin_size -1
%    delta_origin_left_acc(index, :) = origin_left_acc(index + 1, :) - origin_left_acc(index, :); 
% %    delta_origin_left_t(index) = sum(delta_origin_left_att(index, 1) / delta_origin_left_gyro(index, 1) ...
% %                                     + delta_origin_left_att(index, 2) / delta_origin_left_gyro(index, 2) ...
% %                                     + delta_origin_left_att(index, 3) / delta_origin_left_gyro(index, 3)) / 3;
%    
%    delta_origin_right_acc(index, :) = origin_right_acc(index + 1, :) - origin_right_acc(index, :);
% %    delta_origin_right_t(index) = sum(delta_origin_right_att(index, 1) / delta_origin_right_gyro(index, 1) ...
% %                                     + delta_origin_right_att(index, 2) / delta_origin_right_gyro(index, 2) ...
% %                                     + delta_origin_right_att(index, 3) / delta_origin_right_gyro(index, 3)) / 3;
% 
% end

delta_dual_right_acc = dual_right_acc(1:dual_size, :);
delta_dual_left_acc = dual_left_acc(1:dual_size, :);

delta_dual_acc = (delta_dual_left_acc - delta_dual_right_acc) / 2;
delta_dual_acc_ave = (delta_dual_left_acc + delta_dual_right_acc) / 2;  

delta_dual_gyro = (delta_dual_left_gyro - delta_dual_right_gyro) / 2;
delta_dual_att = (delta_dual_left_att - delta_dual_right_att) / 2;

m_delta_dual_acc = zeros(1, dual_size);
m_delta_dual_gyro = zeros(1, dual_size);

m_delta_dual_acc_sc = zeros(1, dual_size);
m_delta_dual_gyro_sc = zeros(1, dual_size); 
m_delta_dual_acc_sc_ave = zeros(1, dual_size);



for index = 1 : dual_size

    m_delta_dual_acc(index) = sign(delta_dual_att(index)) * sqrt( abs(delta_dual_acc(index, 2) .* delta_dual_acc(index, 2) ...
                            + delta_dual_acc(index, 3) .* delta_dual_acc(index, 3)));
    m_delta_dual_gyro(index) = sign(delta_dual_att(index)) * sqrt( abs(delta_dual_left_gyro(index, 2) .* delta_dual_gyro(index, 2) ...
                            + delta_dual_gyro(index, 3) .* delta_dual_gyro(index, 3)));
    
% % %     m_delta_dual_acc_sc(index) = sqrt( abs(delta_dual_acc(index, 2) .* delta_dual_acc(index, 2) ...
% % %                             + delta_dual_acc(index, 3) .* delta_dual_acc(index, 3)));
% % %     m_delta_dual_gyro_sc(index) = sqrt( abs(delta_dual_left_gyro(index, 2) .* delta_dual_gyro(index, 2) ...
% % %                             + delta_dual_gyro(index, 3) .* delta_dual_gyro(index, 3)));

    m_delta_dual_acc_sc(index) = sqrt( abs(delta_dual_acc(index, 2) .* delta_dual_acc(index, 2)));
    m_delta_dual_gyro_sc(index) = sqrt( abs(delta_dual_gyro(index, 2) .* delta_dual_gyro(index, 2)));
                        
    m_delta_dual_acc_sc_ave(index) = sqrt( abs(delta_dual_acc_ave(index, 2) .* delta_dual_acc_ave(index, 2)));
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%
% % % %     m_delta_dual_acc = delta_dual_acc(:, 2)'; 
% % % %     m_delta_dual_gyro = delta_dual_gyro(:, 2)';



% % % tmp_dual_left_att ./ delta_dual_left_acc
% % % delta_dual_left_att ./ delta_dual_left_acc
% % % delta_dual_left_gyro ./ delta_dual_left_acc
% % % delta_dual_left_gyro ./ delta_dual_acc 

kdt = (m_delta_dual_gyro ./ m_delta_dual_acc);

%%%% mean
display('dual[m_gyro/m_delta_acc]_mean: ');
mean(kdt)

%%%% var
display('dual[m_gyro/m_delta_acc]_var: ')
var(kdt)

%%%% std
display('dual[m_gyro/m_delta_acc]_std: ')
std(kdt)

% % % dual_left_dt = sum(delta_dual_left_t) / (size(delta_dual_left_t, 1)-1)
% % % dual_right_dt = sum(delta_dual_right_t) / (size(delta_dual_right_t, 1)-1)
% % % 
% % % dual_left_vec = delta_dual_left_acc .* dual_left_dt;
% % % dual_right_vec = delta_dual_right_acc .* dual_right_dt;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%  Slide_Windows_Filter
%%%%  Dual:

SLIDE_WINDOWS_WIDTH = 30;

dual_size = size(m_delta_dual_acc, 2) - SLIDE_WINDOWS_WIDTH;

fm_delta_dual_acc = zeros(size(m_delta_dual_acc));
fm_delta_dual_acc_sc = zeros(size(m_delta_dual_acc_sc));
fm_delta_dual_acc_sc_ave = zeros(size(m_delta_dual_acc_sc_ave));
fm_dual_att = zeros(size(m_delta_dual_acc_sc));

for index = 1 : dual_size 
    fm_delta_dual_acc(index) = sum(m_delta_dual_acc(index : (index + SLIDE_WINDOWS_WIDTH)))/(SLIDE_WINDOWS_WIDTH + 1);
    fm_delta_dual_acc_sc(index) = sum(m_delta_dual_acc_sc(index : (index + SLIDE_WINDOWS_WIDTH)))/(SLIDE_WINDOWS_WIDTH + 1);
    
    fm_delta_dual_acc_sc_ave(index) = sum(m_delta_dual_acc_sc_ave(index : (index + SLIDE_WINDOWS_WIDTH)))/(SLIDE_WINDOWS_WIDTH + 1);
    fm_dual_att(index) = sum(delta_dual_att(index : (index + SLIDE_WINDOWS_WIDTH), 2))/(SLIDE_WINDOWS_WIDTH + 1);
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55
%%%% Get the scale
%%%% Dual:
%
% dual_scale = ((fm_delta_dual_acc_sc(1:dual_size))./(fm_delta_dual_acc_sc(1:dual_size) + fm_delta_dual_acc_sc_ave(1:dual_size)));

dual_scale = abs((fm_delta_dual_acc_sc(1:dual_size))./ fm_dual_att(1:dual_size));


dual_att_output = fm_dual_att(1:dual_size) .* dual_scale;


%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%  Slide_Windows_Filter
%%%%  Dual_att:

SLIDE_WINDOWS_WIDTH = 30;

dual_size = size(dual_att_output, 2) - SLIDE_WINDOWS_WIDTH;

f_dual_att_output = zeros(1, dual_size);

for index = 1 : dual_size 
    f_dual_att_output(index) = sum(dual_att_output(index : (index + SLIDE_WINDOWS_WIDTH)))/(SLIDE_WINDOWS_WIDTH + 1);
end


figure(7);

tmp_t = [1: 1: size(m_delta_dual_acc_sc, 2)];
plot(tmp_t, m_delta_dual_acc_sc, 'rs-');
hold on;
tmp_t = [1: 1: size(delta_dual_att(:,1), 1)];
plot(tmp_t, delta_dual_att(:,2), 'b*-');
grid on;

tmp_t = [1: 1: size(f_dual_att_output, 2)];
plot(tmp_t, f_dual_att_output, 'g^-');
legend('base-acc', 'ekf-att', 'output');
title('-- Dual --');



