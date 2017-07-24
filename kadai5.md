% 課題５　判別分析法
% 判別分析法を用いて画像二値化せよ．
% 14NE012 菊池祐介


標準画像「org.jpg」を原画像とする．この画像は縦480画像，横480画素による正方形のディジタルカラー画像である。


ORG=imread('image/org.jpg'); % 原画像の入力

ORG = rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換

imagesc(ORG); colormap(gray); colorbar;

pause;


以上により、カラー画像を白黒濃淡画像へ変換する。
グレースケール画像を図1に示す。


![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai5-1.png)
図1 グレースケール画像


H = imhist(ORG); %ヒストグラムのデータを列ベクトルEに格納

myu_T = mean(H);

max_val = 0;

max_thres = 1;

for i=1:255

C1 = H(1:i); %ヒストグラムを2つのクラスに分ける

C2 = H(i+1:256);

n1 = sum(C1); %画素数の算出

n2 = sum(C2);

myu1 = mean(C1); %平均値の算出

myu2 = mean(C2);

sigma1 = var(C1); %分散の算出

sigma2 = var(C2);

sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2); %クラス内分散の算出

sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2); %クラス間分散の算出

if max_val<sigma_B/sigma_w

max_val = sigma_B/sigma_w;

max_thres =i;

end

end


以上によって判別分析法を行う。クラス内分散が最小でクラス間分散が最大となるiを閾値とする。


IMG = ORG > max_thres;

imagesc(IMG); colormap(gray); colorbar;

pause;


以上により、閾値は「226」と算出された。
判別分析法による二値化結果を図2に示す。

![原画像](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai5-2.png)
図2 判別分析法による二値化結果

以上の結果より、課題4で求めたヒストグラムから目視で読み取った閾値に近い値となった。
これは被写体と背景の境界がはっきりしていたためと考えられる。