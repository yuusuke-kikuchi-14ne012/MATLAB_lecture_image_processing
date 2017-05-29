% 課題４　画像のヒストグラム
% 画素の濃度ヒストグラムを生成せよ．
% 14NE012 菊池祐介

clear; % 変数のオールクリア

ORG=imread('gravure_255_rika.jpg'); % 原画像の入力
ORG=rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar;
pause;

imhist(ORG); % ヒストグラムの表示
pause;
close;