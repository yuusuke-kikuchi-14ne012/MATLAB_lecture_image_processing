% �ۑ�T�@���ʕ��͖@
% ���ʕ��͖@��p���ĉ摜��l������D
% 14NE012 �e�r�S��


�W���摜�uorg.jpg�v�����摜�Ƃ���D���̉摜�͏c480�摜�C��480��f�ɂ�鐳���`�̃f�B�W�^���J���[�摜�ł���B


ORG=imread('image/org.jpg'); % ���摜�̓���

ORG = rgb2gray(ORG); % �J���[�摜�𔒍��Z�W�摜�֕ϊ�

imagesc(ORG); colormap(gray); colorbar;

pause;


�ȏ�ɂ��A�J���[�摜�𔒍��Z�W�摜�֕ϊ�����B
�O���[�X�P�[���摜��}1�Ɏ����B


![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai5-1.png)
�}1 �O���[�X�P�[���摜


H = imhist(ORG); %�q�X�g�O�����̃f�[�^���x�N�g��E�Ɋi�[

myu_T = mean(H);

max_val = 0;

max_thres = 1;

for i=1:255

C1 = H(1:i); %�q�X�g�O������2�̃N���X�ɕ�����

C2 = H(i+1:256);

n1 = sum(C1); %��f���̎Z�o

n2 = sum(C2);

myu1 = mean(C1); %���ϒl�̎Z�o

myu2 = mean(C2);

sigma1 = var(C1); %���U�̎Z�o

sigma2 = var(C2);

sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2); %�N���X�����U�̎Z�o

sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2); %�N���X�ԕ��U�̎Z�o

if max_val<sigma_B/sigma_w

max_val = sigma_B/sigma_w;

max_thres =i;

end

end


�ȏ�ɂ���Ĕ��ʕ��͖@���s���B�N���X�����U���ŏ��ŃN���X�ԕ��U���ő�ƂȂ�i��臒l�Ƃ���B


IMG = ORG > max_thres;

imagesc(IMG); colormap(gray); colorbar;

pause;


�ȏ�ɂ��A臒l�́u226�v�ƎZ�o���ꂽ�B
���ʕ��͖@�ɂ���l�����ʂ�}2�Ɏ����B

![���摜](https://github.com/yuusuke-kikuchi-14ne012/MATLAB_lecture_image_processing/blob/master/image/kadai5-2.png)
�}2 ���ʕ��͖@�ɂ���l������

�ȏ�̌��ʂ��A�ۑ�4�ŋ��߂��q�X�g�O��������ڎ��œǂݎ����臒l�ɋ߂��l�ƂȂ����B
����͔�ʑ̂Ɣw�i�̋��E���͂����肵�Ă������߂ƍl������B