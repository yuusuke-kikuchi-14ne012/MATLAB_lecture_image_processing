% �ۑ�7�@�_�C�i�~�b�N�����W�̊g��
% ��f�̃_�C�i�~�b�N�����W���O����Q�T�T�ɂ���D 
% 14NE012 �e�r�S��

ORG = imread('image/org.jpg'); % �摜�̓ǂݍ���
ORG = rgb2gray(ORG); % �����Z�W�摜�ɕϊ�
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
pause;
imhist(ORG); % �Z�x�q�X�g�O�����𐶐��A�\��
pause;
ORG = double(ORG);
mn = min(ORG(:)); % �Z�x�l�̍ŏ��l���Z�o
mx = max(ORG(:)); % �Z�x�l�̍ő�l���Z�o
ORG = (ORG-mn)/(mx-mn)*255;
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
pause;
ORG = uint8(ORG); % ���̍s�ɂ��čl�@����
imhist(ORG); % �Z�x�q�X�g�O�����𐶐��A�\��