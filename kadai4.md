% �ۑ�S�@�摜�̃q�X�g�O����
% ��f�̔Z�x�q�X�g�O�����𐶐�����D
% 14NE012 �e�r�S��


�W���摜�uorg.jpg�v�����摜�Ƃ���D���̉摜�͏c480�摜�C��480��f�ɂ�鐳���`�̃f�B�W�^���J���[�摜�ł���B


clear; % �ϐ��̃I�[���N���A

ORG=imread('image/org.jpg'); % ���摜�̓���

ORG=rgb2gray(ORG); % �J���[�摜�𔒍��Z�W�摜�֕ϊ�

imagesc(ORG); colormap(gray); colorbar;

pause;


�ȏ�ɂ��A�J���[�摜�𔒍��Z�W�摜�֕ϊ�����B
�O���[�X�P�[���摜��}1�Ɏ����B


![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai4-1.png)
�}1 �O���[�X�P�[���摜

imhist(ORG); % �q�X�g�O�����̕\��

pause;

close;


�ȏ�ɂ��A�������P�x�l�A�c�����o���񐔂Ƃ����q�X�g�O�������o�͂ł���B
�q�X�g�O�������ʂ�}2�Ɏ����B


![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai4-2.png)
�}2 �q�X�g�O��������


�ȏ�̌��ʂ��A�P�x�l150?200�܂ł���ʑ́A�P�x�l220�ȏオ�w�i�ł��邱�Ƃ������ł���B
�]���āA200?220�t�߂�臒l��݂��邱�ƂŔ�r�I�N���ȃj�l�摜���쐬�ł���ƍl������B