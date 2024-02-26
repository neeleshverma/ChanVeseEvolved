%-- Chan & Vese method on gray and color image
%   Find contours of objects
% close all
% clear all
% 
I = imread('Images/Baseline/brain.jpg');
% Customized Mask
% m = zeros(size(I,1),size(I,2));
% m(20:120,20:120) = 1;
% seg = chenvese(I,m,1000,0.1,'chan'); % ability on gray image
% % Built-in Mask
seg = chenvese(I,'medium',400,0.02,'chan'); % ability on gray image
%-- End 


%%
%-- Chan & Vese method on RGB/vector image
%   Strong ability to resist noise
% close all
% clear all
% P = imread('flowers.jpg');
% % Imnoise the original input
% I = P;
% I(:,:,1) = imnoise(I(:,:,1),'speckle');
% I(:,:,2) = imnoise(I(:,:,2),'salt & pepper',0.8);
% figure(),subplot(1,2,1),imshow(P),title('original image');
% subplot(1,2,2),imshow(I),title('original image with two components adding noise')
% 
% Normal Chan & Vese cannot work
% seg = chenvese(I,'medium',4000,0.02,'chan'); 
% 
% % Chan & Vese for vector image works here
% seg = chenvese(I,'large',300,0.02,'vector');
% % Using built-in mask = 'whole' leads faster and better segmentation
% seg = chenvese(I,'whole',1000,0.05,'vector');

%-- End 

%%
%-- Chan & Vese method for multiphase (Here I use only two phases)
% sigle phase can only distinguish two levels of objects 
% (background and foreground)in image
% two phases can distingush four levels of objects
% n phases can distinguish 2^n levels of objects

%------------------------------------------
% example on systhesis image
% close all
% clear all
% 
% I = imread('4colors.jpg');
% seg = chenvese(I,'whole',4000,0.2,'multiphase'); 
% %-------------------------------------------
% % example on real image
% close all
% clear all
% 
% I = imread('brain.png');
% seg = chenvese(I,'whole',800,0.2,'multiphase'); 
