% �ۑ�Q�@�K�����Ƌ^���֊s
% m�r�b�gn�K���̉摜�𐶐�����
% 14NE012 �e�r�S��

clear; % �ϐ��̃I�[���N���A

ORG=imread('gravure_255_rika.jpg'); % ���摜�̓���
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % �摜�̕\��
pause; % �ꎞ��~
close;

prompt = {'�r�b�g��m�𐮐��œ��͂��Ă�������','m�r�b�g�K����n�𐮐��œ��͂��Ă�������'};
dlg_title = 'm�r�b�g�K����n';
num_lines = 1;
defaultans = {'8','4'};
n = inputdlg(prompt,dlg_title,num_lines,defaultans);
data1 = n(1);
data1 = str2num(data1{:});
data2 = n(2);
data2 = str2num(data2{:});

h = 2.^data1;
x = h/data2;
z = ORG;
IMG = z>x;
x = x + x;

while (x < h) % �J�Ԃ��ƒE�o����   
    IMG0 = z>x;
    IMG = IMG + IMG0;
    x = x + x;
end

imagesc(IMG); colormap(gray); colorbar;  axis image;% �摜�̕\��
pause; % �ꎞ��~
close;