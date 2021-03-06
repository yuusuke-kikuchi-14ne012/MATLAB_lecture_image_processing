% 課題９ メディアンフィルタと先鋭化

% メディアンフィルターを適用し，ノイズ除去を体験せよ

% 14NE012 菊池祐介


標準画像「org.jpg」を原画像とする．この画像は縦480画像，横480画素による正方形のディジタルカラー画像である。


ORG = imread('image/org.jpg'); % 画像の読み込み

ORG = rgb2gray(ORG); % 白黒濃淡画像に変換

imagesc(ORG); colormap(gray); colorbar; % 画像の表示

pause;


によって、原画像をグレースケール（輝度値のみの画像）に変換する。
グレースケール画像を図1に示す。


![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai9-1.png)
図1 グレースケール画像


ORG = imnoise(ORG,'salt & pepper',0.02); % ノイズ添付

imagesc(ORG); colormap(gray); colorbar; % 画像の表示

pause;


以上によって、ノイズを付加する。
ノイズ添付画像を図2に示す。

![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai9-2.png)
図2 ノイズ添付画像


IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去

imagesc(IMG); colormap(gray); colorbar; % 画像の表示

pause;


以上によって、平滑化フィルタで雑音除去を行う。
平滑化フィルタによる雑音除去画像を図3に示す。


![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai9-3.png)
図3 平滑化フィルタによる雑音除去画像


IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去

imagesc(IMG); colormap(gray); colorbar; % 画像の表示

pause;


以上によって、メディアンフィルタで雑音除去を行う。
メディアンフィルタによる雑音除去画像を図4に示す。


![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai9-4.png)
図4 平滑化フィルタによる雑音除去画像


f=[0,-1,0;-1,5,-1;0,-1,0]; % フィルタの設計

IMG = filter2(f,IMG,'same'); % フィルタの適用

imagesc(IMG); colormap(gray); colorbar; % 画像の表示

pause;


以上によって、広域強調フィルタの設計を行い、フィルタを適用する。
広域強調フィルタの適用画像を図5に示す。


![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai9-5.png)
図5 広域強調フィルタの適用画像


以上の結果から、平滑化フィルタによるノイズ除去はノイズが周囲の画素と平均化されぼやけた印象となり、ノイズが完全に除去されていないことがわかる。
メディアンフィルタによるノイズ除去は隣接画素と比較して中央値に変換することから、エッジが強調され完全にノイズが除去できていることがわかる。
また、広域強調フィルタでは被写体の輪郭部の輝度値変化が大きくなり輪郭が強調できていると考えられる。

