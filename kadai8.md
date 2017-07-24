% 課題８ ラベリング

% 二値化された画像の連結成分にラベルをつけよ。

% 14NE012 菊池祐介

標準画像「org.jpg」を原画像とする．この画像は縦480画像，横480画素による正方形のディジタルカラー画像である。


ORG = imread('image/org.jpg'); % 画像の読み込み

ORG = rgb2gray(ORG); % 白黒濃淡画像に変換

imagesc(ORG); colormap(gray); colorbar; % 画像の表示

pause;



によって、原画像をグレースケール（輝度値のみの画像）に変換する。
グレースケール画像を図1に示す。


![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai8-1.png)
図1 グレースケール画像


IMG = ORG > 226; % 閾値226で二値化

imagesc(IMG); colormap(gray); colorbar; % 画像の表示

pause;


判別分析法で算出した閾値を用いて二値化を行う。
二値化画像を図2に示す。



![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai8-2.png)
図2 二値化画像


IMG = bwlabeln(IMG);

imagesc(IMG); colormap(jet); colorbar; % 画像の表示

pause;


以上により、連結成分のラベリングを行う。
連結成分のラベリング画像を図3に示す。


![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai8-3.png)
図3 連結成分のラベリング画像


以上の結果から、被写体と背景をある程度分離することができた。しかし、影が連結成分に含まれてしまい背景を二分する要因となっていることがわかる。右上の領域も被写体の領域としてラベリングされており、最適な閾値の選択が必要であると考えられる。