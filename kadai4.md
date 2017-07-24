% 課題４　画像のヒストグラム
% 画素の濃度ヒストグラムを生成せよ．
% 14NE012 菊池祐介


標準画像「org.jpg」を原画像とする．この画像は縦480画像，横480画素による正方形のディジタルカラー画像である。


clear; % 変数のオールクリア

ORG=imread('image/org.jpg'); % 原画像の入力

ORG=rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換

imagesc(ORG); colormap(gray); colorbar;

pause;


以上により、カラー画像を白黒濃淡画像へ変換する。
グレースケール画像を図1に示す。


![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai4-1.png)
図1 グレースケール画像

imhist(ORG); % ヒストグラムの表示

pause;

close;


以上により、横軸を輝度値、縦軸を出現回数としたヒストグラムが出力できる。
ヒストグラム結果を図2に示す。


![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai4-2.png)
図2 ヒストグラム結果


以上の結果より、輝度値150?200までが被写体、輝度値220以上が背景であることが推測できる。
従って、200?220付近に閾値を設けることで比較的鮮明なニ値画像を作成できると考えられる。