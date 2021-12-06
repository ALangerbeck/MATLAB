ht_l1 = 1;% Hit Time for L1 
ht_l2 = 6; % Hit Time for L2 
block_size = [16, 32, 64, 128, 256];
mp_l2 = 18 + 2 .* block_size; % Miss Penalty for L2
cpi = [1.5375 ,1.3997 ,1.3319 ,1.3016 ,1.2914]; 
mr_l1 = [5.49 ,3.43 ,2.29 ,1.67 ,1.49] ./ 100; % Miss Rate for L1 
mr_l2 = [0.46, 0.744, 1.1, 1.48, 1.63] ./ 100; % Miss Rate for L2 
AMAT = ht_l1 + mr_l1.*(ht_l2 + mr_l2 .* mp_l2);%Avarage Memory Access Time figure(1);
plot(block_size, cpi,'bd-'); 
legend('L2 cache 128:128:4');% to be changed depending on the settings for L2 
set(gca,'xtick',block_size); title('applu'); % to be changed 
grid on; xlabel('Block size (Bytes)'); 
ylabel('CPI'); 
figure(2)
plot(block_size, AMAT,'bd-'); 
legend('L2 cache 128:128:4');% to be changed depending on the settings for L2 
set(gca,'xtick',block_size); title('applu');% to be changed 
grid on; xlabel('Block size (Bytes)');
ylabel('Average Memory Access Time'); 