% �ۑ�U�@�摜�̓�l��
% ��X�̕��@��p���ē�l������
% 14NE012 �e�r�S��


�W���摜�uorg.jpg�v�����摜�Ƃ���D���̉摜�͏c480�摜�C��480��f�ɂ�鐳���`�̃f�B�W�^���J���[�摜�ł���B


clear; % �ϐ��̃I�[���N���A
ORG=imread('image/org.jpg'); % ���摜�̓���
ORG = rgb2gray(ORG);
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
pause; % �ꎞ��~


�ɂ���āA���摜���O���[�X�P�[���i�P�x�l�݂̂̉摜�j�ɕϊ�����B
�O���[�X�P�[���摜��}1�Ɏ����B


![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai6-1.png)
�}1 �O���[�X�P�[���摜


IMG = ORG>128; % 128�ɂ���l��
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��
pause;


�ȏ��臒l��128�ɐݒ肵���ꍇ�̓�l���ł���B
臒l��128�ɐݒ肵���ꍇ�̓�l�摜��}2�Ɏ����B


![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai6-2.png)
�}2 臒l��128�ɐݒ肵���ꍇ�̓�l�摜


IMG = dither(ORG); % �f�B�U�@�ɂ���l��
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��


�ȏ�̓e�B�U�@��p�����ꍇ�̓�l���ł���B
�e�B�U�@��p�����ꍇ�̓�l�摜��}3�Ɏ����B


![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai6-3.png)
�}3 �e�B�U�@��p�����ꍇ�̓�l�摜


�ȏ�̌��ʂ���A����臒l�Ŕ����������肵�ē�l��������@�Ɣ�r���ăe�B�U�@�͓�l�ł���ɂ�������炸�J���[�摜�ɋ߂��K����������邱�Ƃ��ł���B
���̕��@�ɂ���āA�J���[�摜�┒���Z�W�摜�Ɣ�r���ăf�[�^�e�ʂ̈��k���s�����Ƃ��ł���B