% �ۑ�X ���f�B�A���t�B���^�Ɛ�s��

% ���f�B�A���t�B���^�[��K�p���C�m�C�Y������̌�����

% 14NE012 �e�r�S��


�W���摜�uorg.jpg�v�����摜�Ƃ���D���̉摜�͏c480�摜�C��480��f�ɂ�鐳���`�̃f�B�W�^���J���[�摜�ł���B


ORG = imread('image/org.jpg'); % �摜�̓ǂݍ���

ORG = rgb2gray(ORG); % �����Z�W�摜�ɕϊ�

imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��

pause;


�ɂ���āA���摜���O���[�X�P�[���i�P�x�l�݂̂̉摜�j�ɕϊ�����B
�O���[�X�P�[���摜��}1�Ɏ����B


![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai9-1.png)
�}1 �O���[�X�P�[���摜


ORG = imnoise(ORG,'salt & pepper',0.02); % �m�C�Y�Y�t

imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��

pause;


�ȏ�ɂ���āA�m�C�Y��t������B
�m�C�Y�Y�t�摜��}2�Ɏ����B

![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai9-2.png)
�}2 �m�C�Y�Y�t�摜


IMG = filter2(fspecial('average',3),ORG); % �������t�B���^�ŎG������

imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��

pause;


�ȏ�ɂ���āA�������t�B���^�ŎG���������s���B
�������t�B���^�ɂ��G�������摜��}3�Ɏ����B


![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai9-3.png)
�}3 �������t�B���^�ɂ��G�������摜


IMG = medfilt2(ORG,[3 3]); % ���f�B�A���t�B���^�ŎG������

imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��

pause;


�ȏ�ɂ���āA���f�B�A���t�B���^�ŎG���������s���B
���f�B�A���t�B���^�ɂ��G�������摜��}4�Ɏ����B


![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai9-4.png)
�}4 �������t�B���^�ɂ��G�������摜


f=[0,-1,0;-1,5,-1;0,-1,0]; % �t�B���^�̐݌v

IMG = filter2(f,IMG,'same'); % �t�B���^�̓K�p

imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��

pause;


�ȏ�ɂ���āA�L�拭���t�B���^�̐݌v���s���A�t�B���^��K�p����B
�L�拭���t�B���^�̓K�p�摜��}5�Ɏ����B


![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai9-5.png)
�}5 �L�拭���t�B���^�̓K�p�摜



