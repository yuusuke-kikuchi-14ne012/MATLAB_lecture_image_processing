% �ۑ�P�@�W�{���Ԋu�Ƌ�ԉ𑜓x

% 14NE012 �e�r�S��

�W���摜�uorg.jpg�v�����摜�Ƃ���D���̉摜�͏c480�摜�C��480��f�ɂ�鐳���`�̃f�B�W�^���J���[�摜�ł���B


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

���摜��1/2�T���v�����O����ɂ́C�摜��1/2�{�ɏk��������C2�{�Ɋg�傷��΂悢�D�Ȃ��C�g�傷��ۂɂ́C�P����Ԃ��邽�߂Ɂubox�v�I�v�V������ݒ肷��B
�]���āA�ȏ�̏�����n��J��Ԃ����Ƃ�1/2�A1/4�A1/8�ƃT���v�����O���邱�Ƃ��ł���B

while (i <= t) % �J�Ԃ��ƒE�o����
   
    IMG = imresize(x,0.5); % �摜�̏k��

    IMG2 = imresize(IMG,i,'box'); % �摜�̊g��

    i = i * 2; % �Q�{�Ɋg��

    x = IMG; % �k���摜��x�ɑ��

    imagesc(IMG2); axis image; % �摜�̕\��

    pause; % �ꎞ��~

end

close;

���摜��}2�A1/2�摜��}3�A1/4�摜��}4�A1/8�摜��}5�A1/16�摜��}6�A1/32�摜��}7�ɂ��ꂼ�ꎦ���B

![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai1-2.png)
�}2 ���摜

![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai1-3.png)
�}3 1/2�摜

![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai1-4.png)
�}4 1/4�摜

![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai1-5.png)
�}5 1/8�摜

![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai1-6.png)
�}6 1/16�摜

![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai1-7.png)
�}7 1/32�摜

���̂悤�ɃT���v�����O�����傫���Ȃ�ƁC���U�C�N��̃T���v�����O�c�݂���������B