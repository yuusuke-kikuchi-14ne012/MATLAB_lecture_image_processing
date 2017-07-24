% 課題２　階調数と疑似輪郭

% ２階調，４階調，８階調の画像を生成せよ．

% 14NE012 菊池祐介

標準画像「org.jpg」を原画像とする．この画像は縦480画像，横480画素による正方形のディジタルカラー画像である。


clear; % 変数のオールクリア

ORG=imread('image/org.jpg'); % 原画像の入力

ORG = rgb2gray(ORG); colormap(gray); colorbar;

imagesc(ORG); axis image; % 画像の表示

pause; % 一時停止

によって、原画像をグレースケール（輝度値のみの画像）に変換する。
グレースケール画像を図1に示す。


![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai2-1.png)
図1 グレースケール画像

輝度値は256種類の値を持つため、n階調画像は256をn等分した値を閾値として足し合わせれば良い。


% ２階調画像の生成

IMG = ORG>128;

imagesc(IMG); colormap(gray); colorbar;  axis image;

pause; % 一時停止

2階調画像を図2に示す。

![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai2-2.png)
図2 2階調画像

% ４階調画像の生成

IMG0 = ORG>64;

IMG1 = ORG>128;

IMG2 = ORG>192;

IMG = IMG0 + IMG1 + IMG2;

imagesc(IMG); colormap(gray); colorbar;  axis image;

pause; % 一時停止

4階調画像を図3に示す。

![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai2-3.png)
図3 4階調画像

% ８階調画像の生成

IMG0 = ORG>32;

IMG1 = ORG>64;

IMG2 = ORG>96;

IMG3 = ORG>128;

IMG4 = ORG>160;

IMG5 = ORG>192;

IMG6 = ORG>224;

IMG = IMG0 + IMG1 + IMG2 + IMG3 + IMG4 + IMG5 + IMG6;

imagesc(IMG); colormap(gray); colorbar;  axis image;

pause; % 一時停止

close;

8階調画像を図4に示す。

![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai2-4.png)
図4 8階調画像

以上の結果より、多階調画像になるほど被写体を鮮明に認識できることがわかる。