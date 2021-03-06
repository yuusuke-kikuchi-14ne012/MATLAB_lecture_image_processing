% 課題３　閾値処理

% 閾値を4パターン設定し,閾値処理した画像を示せ．

% 下記はサンプルプログラムである．

% 課題作成にあたっては「Lenna」以外の画像を用いよ．


標準画像「org.jpg」を原画像とする．この画像は縦480画像，横480画素による正方形のディジタルカラー画像である。


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


以上により閾値の変化の幅を指定する。
輝度値の変化幅指定BOXを図1に示す。

![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai3-1.png)
図1 変化幅指定BOX

while (data1 < data2) % 繰返しと脱出条件  
 
    IMG = ORG > data1; % 輝度値がn以上の画素を1，その他を0に変換

    imagesc(IMG); colormap(gray); colorbar; % 画像の表示

    pause(0.1);

    data1 = data1 + 1;

end

pause;

close;

繰り返し条件からポーズ時間（0.1秒）ごとに閾値を変化させて画像を出力する。
閾値64画像を図2、閾値128画像を図3、閾値192画像を図4、閾値256画像を図5にそれぞれ示す。

![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai3-2.png)
図2 閾値64画像

![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai3-3.png)
図3 閾値128画像

![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai3-4.png)
図4 閾値192画像

![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai3-5.png)
図5 閾値256画像


以上の結果より、閾値が高くなるほど黒、低いほど白領域が多くなり、被写体と背景の間の輝度を閾値にすることで鮮明に被写体を認識することができる。