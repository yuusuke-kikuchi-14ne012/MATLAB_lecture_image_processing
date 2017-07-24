% 課題１　標本化間隔と空間解像度

% 14NE012 菊池祐介

標準画像「org.jpg」を原画像とする．この画像は縦480画像，横480画素による正方形のディジタルカラー画像である。


clear; % 変数のオールクリア

ORG=imread('gravure_255_rika.jpg'); % 原画像の入力

i = 2; % 変数宣言（初期値）

x = ORG; % 画像をxに代入


prompt = {'１回につきサンプリング間隔を2倍にします。何回標本化しますか？整数で入力してください'};

dlg_title = '標本化回数';

num_lines = 1;

defaultans = {'10'};

n = inputdlg(prompt,dlg_title,num_lines,defaultans);

data = str2num(n{:});

t = i.^(data + 1);

imagesc(x); axis image; % 画像の表示

pause; % 一時停止


以上によりサンプリング回数の指定を行う。
サンプリング回数の指定BOXを図１に示す。


![サンプリング回数の指定BOX](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai1-1.png)
図1 サンプリング回数の指定BOX

原画像を1/2サンプリングするには，画像を1/2倍に縮小した後，2倍に拡大すればよい．なお，拡大する際には，単純補間するために「box」オプションを設定する。
従って、以上の処理をn回繰り返すことで1/2、1/4、1/8とサンプリングすることができる。

while (i <= t) % 繰返しと脱出条件
   
    IMG = imresize(x,0.5); % 画像の縮小

    IMG2 = imresize(IMG,i,'box'); % 画像の拡大

    i = i * 2; % ２倍に拡大

    x = IMG; % 縮小画像をxに代入

    imagesc(IMG2); axis image; % 画像の表示

    pause; % 一時停止

end

close;

原画像を図2、1/2画像を図3、1/4画像を図4、1/8画像を図5、1/16画像を図6、1/32画像を図7にそれぞれ示す。

![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai1-2.png)
図2 原画像

![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai1-3.png)
図3 1/2画像

![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai1-4.png)
図4 1/4画像

![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai1-5.png)
図5 1/8画像

![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai1-6.png)
図6 1/16画像

![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai1-7.png)
図7 1/32画像

このようにサンプリング幅が大きくなると，モザイク状のサンプリング歪みが発生する。