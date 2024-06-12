% Simulasi Interferensi

% x dalam cm
lambda = 350 * 10^-7;
k = 2 * pi / lambda;
d = 0.001; % dlm cm
a = 0.4; % dlm cm
n = k*d/2;
L = 28; %dlm cm
 
m = k*a/2;
x = -pi/8: 0.01 :pi/8;
u = n*(x./(sqrt(L^2+x.*x)));
v = m*(x./(sqrt(L^2+x.*x)));
w = sin(u)./u;
y = cos(v);
z = (w.*w).*(y.*y);
figure(1);
plot(x,z);



%MEMBACA DATA GAMBAR
gm1 = imread("D:\Campus\Semester 4\Optika\Project 2\Pictures\Picture1.png");
blue = gm1 (:,:,3);
 
% Menentukan kolom yang ingin dihitung rata-ratanya, misalnya kolom ke-50
kolom_index_1 = 1:1:363;
baris_index = 1:1:363;

% Menghitung rata-rata nilai piksel di kolom tersebut
rata_kolom = mean(blue(:, kolom_index_1));
 
% Menampilkan hasil
disp(['Rata-rata nilai piksel pada kolom ', num2str(kolom_index_1), ' adalah ',num2str(rata_kolom)]);
 
%plotting
figure(2);
plot(baris_index,rata_kolom/188.3834);


%MEMBACA DATA GAMBAR
gm2 = imread("D:\Campus\Semester 4\Optika\Project 2\Pictures\Picture2.png");
blue = gm2 (:,:,3);
 
% Menentukan kolom yang ingin dihitung rata-ratanya, misalnya kolom ke-50
kolom_index_2 = 1:1:190;
baris_index = 1:1:190;

% Menghitung rata-rata nilai piksel di kolom tersebut
rata_kolom = mean(blue(:, kolom_index_2));
 
% Menampilkan hasil
disp(['Rata-rata nilai piksel pada kolom ', num2str(kolom_index_2), ' adalah ', num2str(rata_kolom)]);
 
%plotting
figure(3);
plot(baris_index,rata_kolom/207.9313);