% Membaca gambar
gambar1 = imread('nama file');
gambar2 = imread('nama file');
gambar3 = imread('nama file');

% Tentukan batas kotak pemotongan gambar 1 (dalam pixel)
x1 = 
y1 = 
x2 = 
y2 = 

% Tentukan batas kotak pemotongan gambar 2 (dalam pixel)
x3 = 
y3 = 
x4 = 
y4 = 

% Tentukan batas kotak pemotongan gambar 3 (dalam pixel)
x5 = 
y5 = 
x6 = 
y6 = 

% Potong gambar 1 menggunakan indeks piksel
gambar_crop1 = gambar1(y1:y2, x1:x2, :);

% Potong gambar 2 menggunakan indeks piksel
gambar_crop2 = gambar2(y3:y4, x3:x4, :);

% Potong gambar 3 menggunakan indeks piksel
gambar_crop3 = gambar3(y5:y6, x5:x6, :);

% Memisahkan RGB gambar 1
r_1 = gambar_crop1(:,:,1); % merah
g_1 = gambar_crop1(:,:,2); % hijau
b_1 = gambar_crop1(:,:,3); % biru

% Mencari gradien Red gambar 1 (size: )
for n = 1:1:size
    for m = 1:1:size-1
        Gr_y1(n,m)=abs(r_1(n,m+1)-r_1(n,m));
    end
end
for n = 1:1:262-1
    for m = 1:1:1378
        Gr_x1(n,m) = abs(r_1(n+1,m)-r_1(n,m));
    end
end
Gr_ty1 = sum(sum(Gr_y1));
Gr_tx1 = sum(sum(Gr_x1));
Gr_t1 = Gr_ty1 + Gr_tx1;

% Mencari gradien Green gambar 1 (size: )
for n = 1:1:size
    for m = 1:1:size-1
        Gg_y1(n,m)=abs(g_1(n,m+1)-g_1(n,m));
    end
end
for n = 1:1:size-1
    for m = 1:1:size
        Gg_x1(n,m) = abs(g_1(n+1,m)-g_1(n,m));
    end
end
Gg_ty1 = sum(sum(Gg_y1));
Gg_tx1 = sum(sum(Gg_x1));
Gg_t1 = Gg_ty1 + Gg_tx1;

% Mencari gradien Blue gambar 1 (size: )
for n = 1:1:size
    for m = 1:1:size-1
        Gb_y1(n,m)=abs(b_1(n,m+1)-b_1(n,m));
    end
end
for n = 1:1:262-1
    for m = 1:1:1378
        Gb_x1(n,m) = abs(b_1(n+1,m)-b_1(n,m));
    end
end
Gb_ty1 = sum(sum(Gb_y1));
Gb_tx1 = sum(sum(Gb_x1));
Gb_t1 = Gb_ty1 + Gb_tx1;

% Memisahkan RGB gambar 2 
r_2 = gambar_crop2(:,:,1); % merah
g_2 = gambar_crop2(:,:,2); % hijau
b_2 = gambar_crop2(:,:,3); % biru

% Mencari gradien Red gambar 2 (size: )
for n = 1:1:size
    for m = 1:1:size-1
        Gr_y2(n,m)=abs(r_2(n,m+1)-r_2(n,m));
    end
end
for n = 1:1:size-1
    for m = 1:1:size
        Gr_x2(n,m) = abs(r_2(n+1,m)-r_2(n,m));
    end
end
Gr_ty2 = sum(sum(Gr_y2));
Gr_tx2 = sum(sum(Gr_x2));
Gr_t2 = Gr_ty2 + Gr_tx2;

% Memisahkan RGB gambar 2
r_3 = gambar_crop3(:,:,1); % merah
g_3 = gambar_crop3(:,:,2); % hijau
b_3 = gambar_crop3(:,:,3); % biru

% Mencari gradien Red 632 (size: )
for n = 1:1:size
    for m = 1:1:size-1
        Gr_y3(n,m)=abs(r_3(n,m+1)-r_3(n,m));
    end
end
for n = 1:1:size-1
    for m = 1:1:size
        Gr_x3(n,m) = abs(r_3(n+1,m)-r_3(n,m));
    end
end
Gr_ty3 = sum(sum(Gr_y3));
Gr_tx3 = sum(sum(Gr_x3));
Gr_t3 = Gr_ty3 + Gr_tx3;

% Menampilkan gradien red gambar 1
disp('Gradien Red gambar 1 : '); 
disp(Gr_t1);
% Menampilkan gradien green gambar 1
disp('Gradien Green gambar 1 : '); 
disp(Gg_t1);
% Menampilkan gradien blue gambar 1
disp('Gradien Blue gambar 1 : '); 
disp(Gb_t1);
% Menampilkan gradien red gambar 2
disp('Gradien Red gambar 2 : '); 
disp(Gr_t2);
% Menampilkan gradien red gambar 3
disp('Gradien Red gambar 3 : '); 
disp(Gr_t3);