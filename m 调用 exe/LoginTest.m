function FLG = LoginTest(FRONT_ADDR_TD,BROKER_ID,...
    INVESTOR_ID,PASSWORD)

% clear; clc; close all;

%% 登录配置
% SimNow 1   交易阶段(服务时间)：与实际生产环境保持一致
% FRONT_ADDR_MD = 'tcp://180.168.146.187:10010';
% FRONT_ADDR_TD = 'tcp://180.168.146.187:10000';
% BROKER_ID = '9999';
% INVESTOR_ID = '101042';
% PASSWORD = '518888';

% SimNow 2
%  交易阶段(服务时间)：交易日，16：00～次日09：00；非交易日，16：00～次日15：00。
% 账户、钱、仓跟第一套环境上一个交易日保持一致。
% FRONT_ADDR_MD = 'tcp://180.168.146.187:10031';
% FRONT_ADDR_TD = 'tcp://180.168.146.187:10030';
% BROKER_ID = '9999';
% INVESTOR_ID = '101042';
% PASSWORD = '518888';

% 快期-国贸期货
% FRONT_ADDR_TD = 'tcp://61.152.165.100:41201';
% FRONT_ADDR_MD = 'tcp://61.152.165.100:41211';
% BROKER_ID = '0187';			
% INVESTOR_ID = '28006311';	 
% PASSWORD = '518888';

% 快期-新湖期货
% FRONT_ADDR_TD = 'tcp://116.228.171.216:41205';
% FRONT_ADDR_MD = 'tcp://116.228.171.216:41213';
% BROKER_ID = '6090';			
% INVESTOR_ID = '10501951';	 
% PASSWORD = '202031';


%% 交易账户查询
cmd = 'C:\Users\apple\Desktop\CTP\登录测试_01\Bin\testTraderApi.exe ';

x = [FRONT_ADDR_TD,...
    ' ',BROKER_ID,' ',INVESTOR_ID,' ',PASSWORD];

cmd = [cmd,x];
tic; [status, results] = dos(cmd); toc
if status==0
    disp('>>>>>>>>>>调用成功！');
end

% 结果分析
pos = strfind(results ,'登录成功');
if ~isempty(pos)
    fprintf(1,'登录成功!\n');
    FLG = '登录成功';
else
    fprintf(2,'未登录成功!\n');
    FLG = '未登录成功';
end


end













