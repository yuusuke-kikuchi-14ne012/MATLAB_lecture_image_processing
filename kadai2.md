% �ۑ�Q�@�K�����Ƌ^���֊s

% �Q�K���C�S�K���C�W�K���̉摜�𐶐�����D

% 14NE012 �e�r�S��

�W���摜�uorg.jpg�v�����摜�Ƃ���D���̉摜�͏c480�摜�C��480��f�ɂ�鐳���`�̃f�B�W�^���J���[�摜�ł���B


clear; % �ϐ��̃I�[���N���A

ORG=imread('image/org.jpg'); % ���摜�̓���

ORG = rgb2gray(ORG); colormap(gray); colorbar;

imagesc(ORG); axis image; % �摜�̕\��

pause; % �ꎞ��~

�ɂ���āA���摜���O���[�X�P�[���i�P�x�l�݂̂̉摜�j�ɕϊ�����B
�O���[�X�P�[���摜��}1�Ɏ����B


![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai2-1.png)
�}1 �O���[�X�P�[���摜

�P�x�l��256��ނ̒l�������߁An�K���摜��256��n���������l��臒l�Ƃ��đ������킹��Ηǂ��B


% �Q�K���摜�̐���

IMG = ORG>128;

imagesc(IMG); colormap(gray); colorbar;  axis image;

pause; % �ꎞ��~

2�K���摜��}2�Ɏ����B

![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai2-2.png)
�}2 2�K���摜

% �S�K���摜�̐���

IMG0 = ORG>64;

IMG1 = ORG>128;

IMG2 = ORG>192;

IMG = IMG0 + IMG1 + IMG2;

imagesc(IMG); colormap(gray); colorbar;  axis image;

pause; % �ꎞ��~

4�K���摜��}3�Ɏ����B

![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai2-3.png)
�}3 4�K���摜

% �W�K���摜�̐���

IMG0 = ORG>32;

IMG1 = ORG>64;

IMG2 = ORG>96;

IMG3 = ORG>128;

IMG4 = ORG>160;

IMG5 = ORG>192;

IMG6 = ORG>224;

IMG = IMG0 + IMG1 + IMG2 + IMG3 + IMG4 + IMG5 + IMG6;

imagesc(IMG); colormap(gray); colorbar;  axis image;

pause; % �ꎞ��~

close;

8�K���摜��}4�Ɏ����B

![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai2-4.png)
�}4 8�K���摜

�ȏ�̌��ʂ��A���K���摜�ɂȂ�قǔ�ʑ̂�N���ɔF���ł��邱�Ƃ��킩��B