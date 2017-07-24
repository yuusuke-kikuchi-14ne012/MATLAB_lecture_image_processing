% 課題7　ダイナミックレンジの拡大

% 画素のダイナミックレンジを０から２５５にせよ。

% 14NE012 菊池祐介


標準画像「org.jpg」を原画像とする．この画像は縦480画像，横480画素による正方形のディジタルカラー画像である。


ORG = imread('image/org.jpg'); % 画像の読み込み

ORG = rgb2gray(ORG); % 白黒濃淡画像に変換

imagesc(ORG); colormap(gray); colorbar; % 画像の表示

pause;


によって、原画像をグレースケール（輝度値のみの画像）に変換する。
グレースケール画像を図1に示す。


![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai7-1.png)
図1 グレースケール画像


imhist(ORG); % 濃度ヒストグラムを生成、表示

pause;


以上によって、濃度ヒストグラムを生成する。
濃度ヒストグラム画像を図2に示す。


![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai7-2.png)
図2 濃度ヒストグラム画像


ORG = double(ORG);

mn = min(ORG(:)); % 濃度値の最小値を算出

mx = max(ORG(:)); % 濃度値の最大値を算出

ORG = (ORG-mn)/(mx-mn)*255;

imagesc(ORG); colormap(gray); colorbar; % 画像の表示

pause;


以上により、画素のダイナミックレンジを０から２５５に変換した。
画素のダイナミックレンジを０から２５５に変換した画像を図3に示す。


![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai7-3.png)
図3 画素のダイナミックレンジを０から２５５に変換した画像


ORG = uint8(ORG); % この行について考察せよ

imhist(ORG); % 濃度ヒストグラムを生成、表示


以上により、画素のダイナミックレンジを０から２５５に変換したヒストグラムを生成した。
画素のダイナミックレンジを０から２５５に変換したヒストグラム画像を図4に示す。

![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai7-4.png)
図4 画素のダイナミックレンジを０から２５５に変換したヒストグラム画像


変換後の濃度ヒストグラムの生成で「ORG = uint8(ORG);」を用いたのは一度「ORG = double(ORG);」によって数値配列となったorgを8ビット符号なし整数への変換するためであると考えられる。