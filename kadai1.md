% �ۑ�P�@�W�{���Ԋu�Ƌ�ԉ𑜓x

% 14NE012 �e�r�S��

�W���摜�uorg.jpg�v�����摜�Ƃ���D���̉摜�͏c480�摜�C��480��f�ɂ�鐳���`�̃f�B�W�^���J���[�摜�ł���D


clear; % �ϐ��̃I�[���N���A
ORG=imread('gravure_255_rika.jpg'); % ���摜�̓���
i = 2; % �ϐ��錾�i�����l�j
x = ORG; % �摜��x�ɑ��

prompt = {'�P��ɂ��T���v�����O�Ԋu��2�{�ɂ��܂��B����W�{�����܂����H�����œ��͂��Ă�������'};
dlg_title = '�W�{����';
num_lines = 1;
defaultans = {'10'};
n = inputdlg(prompt,dlg_title,num_lines,defaultans);
data = str2num(n{:});
t = i.^(data + 1);
imagesc(x); axis image; % �摜�̕\��
pause; % �ꎞ��~

�ȏ�ɂ��T���v�����O�񐔂̎w����s���B
�T���v�����O�񐔂̎w��BOX��}�P�Ɏ����B

![�T���v�����O�񐔂̎w��BOX](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai1-1.png)
�}1 �T���v�����O�񐔂̎w��BOX

while (i <= t) % �J�Ԃ��ƒE�o����   
    IMG = imresize(x,0.5); % �摜�̏k��
    IMG2 = imresize(IMG,i,'box'); % �摜�̊g��
    i = i * 2; % �Q�{�Ɋg��
    x = IMG; % �k���摜��x�ɑ��
    imagesc(IMG2); axis image; % �摜�̕\��
    pause; % �ꎞ��~
end

close;