% �ۑ�W ���x�����O
% ��l�����ꂽ�摜�̘A�������Ƀ��x��������D
% 14NE012 �e�r�S��

ORG = imread('image/org.jpg'); % �摜�̓ǂݍ���
ORG = rgb2gray(ORG); % �����Z�W�摜�ɕϊ�
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
pause;
IMG = ORG > 226; % 臒l226�œ�l��
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��
pause;
IMG = bwlabeln(IMG);
imagesc(IMG); colormap(jet); colorbar; % �摜�̕\��
pause;