% �ۑ�W ���x�����O

% ��l�����ꂽ�摜�̘A�������Ƀ��x��������B

% 14NE012 �e�r�S��

�W���摜�uorg.jpg�v�����摜�Ƃ���D���̉摜�͏c480�摜�C��480��f�ɂ�鐳���`�̃f�B�W�^���J���[�摜�ł���B


ORG = imread('image/org.jpg'); % �摜�̓ǂݍ���

ORG = rgb2gray(ORG); % �����Z�W�摜�ɕϊ�

imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��

pause;



�ɂ���āA���摜���O���[�X�P�[���i�P�x�l�݂̂̉摜�j�ɕϊ�����B
�O���[�X�P�[���摜��}1�Ɏ����B


![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai8-1.png)
�}1 �O���[�X�P�[���摜


IMG = ORG > 226; % 臒l226�œ�l��

imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��

pause;


���ʕ��͖@�ŎZ�o����臒l��p���ē�l�����s���B
��l���摜��}2�Ɏ����B



![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai8-2.png)
�}2 ��l���摜


IMG = bwlabeln(IMG);

imagesc(IMG); colormap(jet); colorbar; % �摜�̕\��

pause;


�ȏ�ɂ��A�A�������̃��x�����O���s���B
�A�������̃��x�����O�摜��}3�Ɏ����B


![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai8-3.png)
�}3 �A�������̃��x�����O�摜


�ȏ�̌��ʂ���A��ʑ̂Ɣw�i��������x�������邱�Ƃ��ł����B�������A�e���A�������Ɋ܂܂�Ă��܂��w�i��񕪂���v���ƂȂ��Ă��邱�Ƃ��킩��B�E��̗̈����ʑ̗̂̈�Ƃ��ă��x�����O����Ă���A�œK��臒l�̑I�����K�v�ł���ƍl������B