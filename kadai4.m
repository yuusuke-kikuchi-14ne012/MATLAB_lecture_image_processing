% �ۑ�S�@�摜�̃q�X�g�O����
% ��f�̔Z�x�q�X�g�O�����𐶐�����D
% 14NE012 �e�r�S��

clear; % �ϐ��̃I�[���N���A

ORG=imread('gravure_255_rika.jpg'); % ���摜�̓���
ORG=rgb2gray(ORG); % �J���[�摜�𔒍��Z�W�摜�֕ϊ�
imagesc(ORG); colormap(gray); colorbar;
pause;

imhist(ORG); % �q�X�g�O�����̕\��
pause;
close;