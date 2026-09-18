fprintf('\n=== LOOPING FOR ===\n');

for i = 2:2:12
    hasil = i^2;
    fprintf('Kuadrat %d = %d\n', i, hasil);
end

fprintf('\n=== LOOPING WHILE ===\n');

nilai = 2;

while nilai <= 10
    hasil = nilai + 3;
    fprintf('Nilai = %d, hasil = %d\n', nilai, hasil);
    nilai = nilai + 2;
end

fprintf('\n=== CONTINUE ===\n');

for i = 1:8
    if mod(i,2) == 0
        continue;
    end

    fprintf('Bilangan ganjil = %d\n', i);
end

fprintf('\n=== BREAK ===\n');

for i = 1:10
    fprintf('Nilai = %d\n', i);

    if i == 6
        break;
    end
end

fprintf('\n=== DIFERENSIAL ===\n');

pkg load symbolic

syms x

f = 4*x^3 - 3*x^2 + 6*x - 2;
turunan = diff(f, x);

disp('Fungsi f(x):');
disp(f);

disp('Turunan f(x):');
disp(turunan);

fprintf('\n=== INTEGRAL ===\n');

f = 5*x^2 + 4*x - 7;
integral_f = int(f, x);

disp('Fungsi f(x):');
disp(f);

disp('Integral f(x):');
disp(integral_f);

fprintf('\n=== FUNCTION SATU RETURN ===\n');

panjang = 12;
lebar = 7;

hasil_luas = luasPersegiPanjang(panjang, lebar);

fprintf('Panjang = %d\n', panjang);
fprintf('Lebar = %d\n', lebar);
fprintf('Luas persegi panjang = %d\n', hasil_luas);

fprintf('\n=== FUNCTION BEBERAPA RETURN ===\n');

a = 18;
b = 6;

[jumlah, selisih, hasilKali] = operasiBilangan(a, b);

fprintf('Jumlah = %d\n', jumlah);
fprintf('Selisih = %d\n', selisih);
fprintf('Hasil perkalian = %d\n', hasilKali);

fprintf('\n=== FUNCTION DENGAN RETURN ===\n');

nilai = 8;

hasil = cekNilai(nilai);

fprintf('Nilai = %d\n', nilai);
disp(hasil);

fprintf('\n=== ANONYMOUS FUNCTION ===\n');

f_anonim = @(x) 3*x^2 - 2*x + 5;

x_anonim = 4;
hasil_anonim = f_anonim(x_anonim);

fprintf('Hasil f(%d) = %d\n', x_anonim, hasil_anonim);

fprintf('\n=== GRAFIK GARIS 2D ===\n');

x = linspace(-4, 4, 100);
y = x.^2 - 2*x + 1;

figure;
plot(x, y);
xlabel('X');
ylabel('Y');
title('Grafik y = x^2 - 2x + 1');
grid on;

fprintf('\n=== GRAFIK GARIS 3D ===\n');

t = linspace(0, 6*pi, 150);

x = cos(t);
y = sin(t);
z = t/3;

figure;
plot3(x, y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Grafik Garis 3D');
grid on;

fprintf('\n=== MESH PLOT ===\n');

x = -3:0.25:3;
y = -3:0.25:3;

[X, Y] = meshgrid(x, y);
Z = X.^2 - Y.^2;

figure;
mesh(X, Y, Z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Mesh Plot Z = X^2 - Y^2');

fprintf('\n=== CONTOUR PLOT ===\n');

x = -3:0.25:3;
y = -3:0.25:3;

[X, Y] = meshgrid(x, y);
Z = X.^2 + Y.^2;

figure;
contour3(X, Y, Z, 12);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Contour Plot Z = X^2 + Y^2');
grid on;

function luas = luasPersegiPanjang(panjang, lebar)
    luas = panjang * lebar;
end

function [jumlah, selisih, hasilKali] = operasiBilangan(a, b)
    jumlah = a + b;
    selisih = a - b;
    hasilKali = a * b;
end

function hasil = cekNilai(nilai)
    if nilai < 0
        hasil = 'Nilai tidak boleh negatif';
        return;
    end

    hasil = nilai^2;
end
