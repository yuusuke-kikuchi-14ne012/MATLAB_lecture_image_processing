% ‰Û‘è‚Q@ŠK’²”‚Æ‹^Ž——ÖŠs
% mƒrƒbƒgnŠK’²‚Ì‰æ‘œ‚ð¶¬‚·‚é
% 14NE012 ‹e’r—S‰î

clear; % •Ï”‚ÌƒI[ƒ‹ƒNƒŠƒA

ORG=imread('gravure_255_rika.jpg'); % Œ´‰æ‘œ‚Ì“ü—Í
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % ‰æ‘œ‚Ì•\Ž¦
pause; % ˆêŽž’âŽ~
close;

prompt = {'ƒrƒbƒg”m‚ð®”‚Å“ü—Í‚µ‚Ä‚­‚¾‚³‚¢','mƒrƒbƒgŠK’²”n‚ð®”‚Å“ü—Í‚µ‚Ä‚­‚¾‚³‚¢'};
dlg_title = 'mƒrƒbƒgŠK’²”n';
num_lines = 1;
defaultans = {'8','4'};
n = inputdlg(prompt,dlg_title,num_lines,defaultans);
data1 = n(1);
data1 = str2num(data1{:});
data2 = n(2);
data2 = str2num(data2{:});

h = 2.^data1;
x = h/data2;
z = ORG;
IMG = z>x;
x = x + x;

while (x < h) % ŒJ•Ô‚µ‚Æ’EoðŒ   
    IMG0 = z>x;
    IMG = IMG + IMG0;
    x = x + x;
end

imagesc(IMG); colormap(gray); colorbar;  axis image;% ‰æ‘œ‚Ì•\Ž¦
pause; % ˆêŽž’âŽ~
close;