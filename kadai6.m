% �ۑ�U�@�摜�̓�l��
% 14NE012 �e�r�S��

clear; % �ϐ��̃I�[���N���A
ORG=imread('image/org.jpg'); % ���摜�̓���
ORG = rgb2gray(ORG);
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
pause; % �ꎞ��~


IMG = ORG>128; % 128�ɂ���l��
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��
pause;

IMG = dither(ORG); % �f�B�U�@�ɂ���l��
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��
