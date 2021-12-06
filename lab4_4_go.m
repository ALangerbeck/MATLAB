set_assoc = [1, 2, 3, 4, 5, 6, 7, 8];
miss_rate_u = [0.320684	0.239166	0.201908	0.176811	0.157432	0.141428	0.127665	0.115794;
    0.259839	0.182371	0.145127	0.120408	0.102115	0.088689	0.078991	0.071625;
    0.204439	0.129016	0.095934	0.076310	0.063737	0.054949	0.048581	0.043691;
    0.151926	0.086955	0.060401	0.046987	0.039157	0.034072	0.030518	0.027903;
    0.106861	0.053951	0.037281	0.029855	0.025900	0.023423	0.021862	0.020868;
    0.075807	0.035129	0.025344	0.021648	0.019932	0.018921	0.018043	0.017119;
    0.050818	0.025458	0.019878	0.016991	0.014562	0.012055	0.009598	0.007365
    ]; 
% miss rates obtained for unified caches 
miss_rate_i=[0.209606	0.163241	0.136610	0.118307	0.103362	0.091876	0.082370	0.074724;	
		0.167318	0.119917	0.097028	0.080060	0.067253	0.059103	0.053212	0.048545;	
		0.129500	0.084799	0.062560	0.049543	0.041870	0.037152	0.034121	0.031731;	
		0.099427	0.057942	0.040019	0.032461	0.028147	0.025324	0.023643	0.022503;	
		0.066877	0.035682	0.026770	0.023239	0.021447	0.020417	0.019891	0.019533;	
		0.048307	0.025720	0.021298	0.019820	0.018814	0.017859	0.016652	0.015153;	
		0.034779	0.021248	0.017765	0.014579	0.011051	0.007588	0.004901	0.003052 ]; 
% miss rates obtained for instruction caches 
miss_rate_d=[0.394016	0.261562	0.192719	0.148563	0.120098	0.101120	0.087387	0.076741;	
            0.294155	0.166761	0.111882	0.083294	0.065837	0.054079	0.045904	0.039912;	
            0.209836	0.102201	0.063175	0.045145	0.035122	0.029091	0.025072	0.022211;	
            0.144568	0.060017	0.035901	0.025714	0.020895	0.018371	0.016750	0.015807;	
            0.103885	0.038204	0.022770	0.017267	0.015196	0.014093	0.013051	0.011770;	
            0.056634	0.018913	0.013905	0.011183	0.008579	0.005999	0.003998	0.002670;	
            0.035558	0.011702	0.006501	0.003552	0.002272	0.001729	0.001588    0.001529 ];
% miss rates obtained for data caches 
%nbr_sets = [16, 32, 64, 128, 256, 512, 1024]; 
figure(1); 
plot(set_assoc, miss_rate_u(1,:),'bd-',set_assoc, miss_rate_u(2,:), 'cs-', set_assoc, miss_rate_u(3,:), 'y^-',set_assoc, miss_rate_u(4,:), 'mx-',set_assoc, miss_rate_u(5,:),'r+-',set_assoc, miss_rate_u(6,:), 'go-', set_assoc, miss_rate_u(7,:), 'kh-'); 
legend('16', '32', '64', '128', '256', '512', '1024'); 
grid on; title('mgrid (Unified)'); 
% to be changed depending on the used benchmark xlabel('Set Associativity (blocks/set)'); 
ylabel('Miss Rate'); 
figure(2); 
plot(set_assoc, miss_rate_i(1,:),'bd-',set_assoc, miss_rate_i(2,:), 'cs-', set_assoc, miss_rate_i(3,:), 'y^-',set_assoc, miss_rate_i(4,:), 'mx-',set_assoc, miss_rate_i(5,:),'r+-',set_assoc, miss_rate_i(6,:), 'go-', set_assoc, miss_rate_i(7,:), 'kh-');
legend('16', '32', '64', '128', '256', '512', '1024');
grid on; title('mgrid (Instruction)'); 
% to be changed depending on the used benchmark xlabel('Set Associativity (blocks/set)'); 
ylabel('Miss Rate');
figure(3); 
plot(set_assoc, miss_rate_d(1,:),'bd-',set_assoc, miss_rate_d(2,:), 'cs-', set_assoc, miss_rate_d(3,:), 'y^-',set_assoc, miss_rate_d(4,:), 'mx-',set_assoc, miss_rate_d(5,:),'r+-',set_assoc, miss_rate_d(6,:), 'go-', set_assoc, miss_rate_d(7,:), 'kh-'); legend('16', '32', '64', '128', '256', '512', '1024'); 
grid on; title('mgrid (Data)'); 
% to be changed depending on the used benchmark xlabel('Set Associativity (blocks/set)');
ylabel('Miss Rate'); 