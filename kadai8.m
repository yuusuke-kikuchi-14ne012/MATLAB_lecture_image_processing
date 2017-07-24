% ‰Û‘è‚W ƒ‰ƒxƒŠƒ“ƒO
% “ñ’l‰»‚³‚ê‚½‰æ‘œ‚Ì˜AŒ‹¬•ª‚Éƒ‰ƒxƒ‹‚ð‚Â‚¯‚æD
% 14NE012 ‹e’r—S‰î

ORG = imread('image/org.jpg'); % ‰æ‘œ‚Ì“Ç‚Ýž‚Ý
ORG = rgb2gray(ORG); % ”’•”Z’W‰æ‘œ‚É•ÏŠ·
imagesc(ORG); colormap(gray); colorbar; % ‰æ‘œ‚Ì•\Ž¦
pause;
IMG = ORG > 226; % è‡’l226‚Å“ñ’l‰»
imagesc(IMG); colormap(gray); colorbar; % ‰æ‘œ‚Ì•\Ž¦
pause;
IMG = bwlabeln(IMG);
imagesc(IMG); colormap(jet); colorbar; % ‰æ‘œ‚Ì•\Ž¦
pause;