ht_l1 = 1;% Hit Time for L1 
ht_l2 = 6; % Hit Time for L2 
block_size = [16, 32, 64, 128, 256];
mp_l2 = 18 + 2 .* block_size; % Miss Penalty for L2
cpi = [1.3396 ,1.3372 ,1.3365 ,1.3363 ,1.3359]; 
mr_l1 = [0.38 ,0.21 ,0.13 ,0.13 ,0.13] ./ 100; % Miss Rate for L1 
mr_l2 = [1.13, 2.05, 3.34, 3.81, 3.75] ./ 100; % Miss Rate for L2 
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