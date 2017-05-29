% 課題１　標本化間隔と空間解像度
% 14NE012 菊池祐介

clear; % 変数のオールクリア
ORG=imread('gravure_255_rika.jpg'); % 原画像の入力
i = 2; % 変数宣言（初期値）
x = ORG; % 画像をxに代入

prompt = {'１回につきサンプリング間隔を2倍にします。何回標本化しますか？整数で入力してください'};
dlg_title = '標本化回数';
num_lines = 1;
defaultans = {'10'};
n = inputdlg(prompt,dlg_title,num_lines,defaultans);
data = str2num(n{:});
t = i.^(data + 1);
imagesc(x); axis image; % 画像の表示
pause; % 一時停止

while (i <= t) % 繰返しと脱出条件   
    IMG = imresize(x,0.5); % 画像の縮小
    IMG2 = imresize(IMG,i,'box'); % 画像の拡大
    i = i * 2; % ２倍に拡大
    x = IMG; % 縮小画像をxに代入
    imagesc(IMG2); axis image; % 画像の表示
    pause; % 一時停止
end

close;