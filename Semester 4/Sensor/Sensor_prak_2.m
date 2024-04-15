audioFile= "D:\Campus\Semester 4\Sensor\Praktik\2\SULING (mp3cut.net).wav";
[y, Fs] = audioread(audioFile);
t = (0:length(y)-1) / Fs; % Membuat vektor waktu

figure(1);
plot(t, y);
xlabel('Waktu (detik)');
ylabel('Amplitudo');
title('Grafik Keseluruhan Sinyal Audio');
grid minor

N = 2^nextpow2(length(y));

y = fft(y, N);
ymag = abs(y(1:length(y)/2+1));
f = Fs/2 * linspace(0,1, N/2 +1);

figure(2);
plot(f, ymag);
title('Spektrum Sinyal Audio');
xlabel('Frekuensi (Hz)');
ylabel('Amplitudo');