% �ۑ�R�@臒l����

% 臒l��4�p�^�[���ݒ肵,臒l���������摜�������D

% ���L�̓T���v���v���O�����ł���D

% �ۑ�쐬�ɂ������ẮuLenna�v�ȊO�̉摜��p����D


�W���摜�uorg.jpg�v�����摜�Ƃ���D���̉摜�͏c480�摜�C��480��f�ɂ�鐳���`�̃f�B�W�^���J���[�摜�ł���B


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


�ȏ�ɂ��臒l�̕ω��̕����w�肷��B
�P�x�l�̕ω����w��BOX��}1�Ɏ����B

![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai3-1.png)
�}1 �ω����w��BOX

while (data1 < data2) % �J�Ԃ��ƒE�o����  
 
    IMG = ORG > data1; % �P�x�l��n�ȏ�̉�f��1�C���̑���0�ɕϊ�

    imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��

    pause(0.1);

    data1 = data1 + 1;

end

pause;

close;

�J��Ԃ���������|�[�Y���ԁi0.1�b�j���Ƃ�臒l��ω������ĉ摜���o�͂���B
臒l64�摜��}2�A臒l128�摜��}3�A臒l192�摜��}4�A臒l256�摜��}5�ɂ��ꂼ�ꎦ���B

![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai3-2.png)
�}2 臒l64�摜

![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai3-3.png)
�}3 臒l128�摜

![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai3-4.png)
�}4 臒l192�摜

![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai3-5.png)
�}5 臒l256�摜


�ȏ�̌��ʂ��A臒l�������Ȃ�قǍ��A�Ⴂ�قǔ��̈悪�����Ȃ�A��ʑ̂Ɣw�i�̊Ԃ̋P�x��臒l�ɂ��邱�ƂőN���ɔ�ʑ̂�F�����邱�Ƃ��ł���B