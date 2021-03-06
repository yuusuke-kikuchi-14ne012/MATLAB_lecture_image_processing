% 課題２　階調数と疑似輪郭
% mビットn階調の画像を生成する
% 14NE012 菊池祐介

clear; % 変数のオールクリア

ORG=imread('gravure_255_rika.jpg'); % 原画像の入力
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % 画像の表示
pause; % 一時停止
close;

prompt = {'ビット数mを整数で入力してください','mビット階調数nを整数で入力してください'};
dlg_title = 'mビット階調数n';
num_lines = 1;
defaultans = {'8','4'};
n = inputdlg(prompt,dlg_title,num_lines,defaultans);
data1 = n(1);
data1 = str2num(data1{:});
data2 = n(2);
data2 = str2num(data2{:});

h = 2.^data1;
x = h/data2;
z = ORG;
IMG = z>x;
x = x + x;

while (x < h) % 繰返しと脱出条件   
    IMG0 = z>x;
    IMG = IMG + IMG0;
    x = x + x;
end

imagesc(IMG); colormap(gray); colorbar;  axis image;% 画像の表示
pause; % 一時停止
close;