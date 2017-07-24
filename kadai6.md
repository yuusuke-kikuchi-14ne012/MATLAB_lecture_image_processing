% 課題６　画像の二値化
% 種々の方法を用いて二値化せよ
% 14NE012 菊池祐介


標準画像「org.jpg」を原画像とする．この画像は縦480画像，横480画素による正方形のディジタルカラー画像である。


clear; % 変数のオールクリア
ORG=imread('image/org.jpg'); % 原画像の入力
ORG = rgb2gray(ORG);
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
pause; % 一時停止


によって、原画像をグレースケール（輝度値のみの画像）に変換する。
グレースケール画像を図1に示す。


![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai6-1.png)
図1 グレースケール画像


IMG = ORG>128; % 128による二値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
pause;


以上は閾値を128に設定した場合の二値化である。
閾値を128に設定した場合の二値画像を図2に示す。


![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai6-2.png)
図2 閾値を128に設定した場合の二値画像


IMG = dither(ORG); % ディザ法による二値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示


以上はティザ法を用いた場合の二値化である。
ティザ法を用いた場合の二値画像を図3に示す。


![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai6-3.png)
図3 ティザ法を用いた場合の二値画像


以上の結果から、ある閾値で白か黒か決定して二値化する方法と比較してティザ法は二値であるにもかかわらずカラー画像に近い階調を感じ取ることができる。
この方法によって、カラー画像や白黒濃淡画像と比較してデータ容量の圧縮が行うことができる。