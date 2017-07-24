% 課題３　閾値処理
% 閾値を4パターン設定し,閾値処理した画像を示せ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

clear; % 変数のオールクリア

ORG=imread('image/org.jpg'); % 原画像の入力
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換

prompt = {'閾値の初期値を整数で入力してください','閾値の最終値を整数で入力してください'};
dlg_title = '閾値';
num_lines = 1;
defaultans = {'0','256'};
n = inputdlg(prompt,dlg_title,num_lines,defaultans);
data1 = n(1);
data1 = str2num(data1{:});
data2 = n(2);
data2 = str2num(data2{:});

while (data1 < data2) % 繰返しと脱出条件   
    IMG = ORG > data1; % 輝度値がn以上の画素を1，その他を0に変換
    imagesc(IMG); colormap(gray); colorbar; % 画像の表示
    pause(0.1);
    data1 = data1 + 1;
end

pause;
close;