% �ۑ�R�@臒l����
% 臒l��4�p�^�[���ݒ肵,臒l���������摜�������D
% ���L�̓T���v���v���O�����ł���D
% �ۑ�쐬�ɂ������ẮuLenna�v�ȊO�̉摜��p����D

clear; % �ϐ��̃I�[���N���A

ORG=imread('image/org.jpg'); % ���摜�̓���
ORG= rgb2gray(ORG); % �J���[�摜�𔒍��Z�W�摜�֕ϊ�

prompt = {'臒l�̏����l�𐮐��œ��͂��Ă�������','臒l�̍ŏI�l�𐮐��œ��͂��Ă�������'};
dlg_title = '臒l';
num_lines = 1;
defaultans = {'0','256'};
n = inputdlg(prompt,dlg_title,num_lines,defaultans);
data1 = n(1);
data1 = str2num(data1{:});
data2 = n(2);
data2 = str2num(data2{:});

while (data1 < data2) % �J�Ԃ��ƒE�o����   
    IMG = ORG > data1; % �P�x�l��n�ȏ�̉�f��1�C���̑���0�ɕϊ�
    imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��
    pause(0.1);
    data1 = data1 + 1;
end

pause;
close;