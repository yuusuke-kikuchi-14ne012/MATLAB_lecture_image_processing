% �ۑ�7�@�_�C�i�~�b�N�����W�̊g��

% ��f�̃_�C�i�~�b�N�����W���O����Q�T�T�ɂ���B

% 14NE012 �e�r�S��


�W���摜�uorg.jpg�v�����摜�Ƃ���D���̉摜�͏c480�摜�C��480��f�ɂ�鐳���`�̃f�B�W�^���J���[�摜�ł���B


ORG = imread('image/org.jpg'); % �摜�̓ǂݍ���

ORG = rgb2gray(ORG); % �����Z�W�摜�ɕϊ�

imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��

pause;


�ɂ���āA���摜���O���[�X�P�[���i�P�x�l�݂̂̉摜�j�ɕϊ�����B
�O���[�X�P�[���摜��}1�Ɏ����B


![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai7-1.png)
�}1 �O���[�X�P�[���摜


imhist(ORG); % �Z�x�q�X�g�O�����𐶐��A�\��

pause;


�ȏ�ɂ���āA�Z�x�q�X�g�O�����𐶐�����B
�Z�x�q�X�g�O�����摜��}2�Ɏ����B


![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai7-2.png)
�}2 �Z�x�q�X�g�O�����摜


ORG = double(ORG);

mn = min(ORG(:)); % �Z�x�l�̍ŏ��l���Z�o

mx = max(ORG(:)); % �Z�x�l�̍ő�l���Z�o

ORG = (ORG-mn)/(mx-mn)*255;

imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��

pause;


�ȏ�ɂ��A��f�̃_�C�i�~�b�N�����W���O����Q�T�T�ɕϊ������B
��f�̃_�C�i�~�b�N�����W���O����Q�T�T�ɕϊ������摜��}3�Ɏ����B


![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai7-3.png)
�}3 ��f�̃_�C�i�~�b�N�����W���O����Q�T�T�ɕϊ������摜


ORG = uint8(ORG); % ���̍s�ɂ��čl�@����

imhist(ORG); % �Z�x�q�X�g�O�����𐶐��A�\��


�ȏ�ɂ��A��f�̃_�C�i�~�b�N�����W���O����Q�T�T�ɕϊ������q�X�g�O�����𐶐������B
��f�̃_�C�i�~�b�N�����W���O����Q�T�T�ɕϊ������q�X�g�O�����摜��}4�Ɏ����B

![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai7-4.png)
�}4 ��f�̃_�C�i�~�b�N�����W���O����Q�T�T�ɕϊ������q�X�g�O�����摜


�ϊ���̔Z�x�q�X�g�O�����̐����ŁuORG = uint8(ORG);�v��p�����͈̂�x�uORG = double(ORG);�v�ɂ���Đ��l�z��ƂȂ���org��8�r�b�g�����Ȃ������ւ̕ϊ����邽�߂ł���ƍl������B