data = table2array(ecg);

signals = data(:,1:140);

labels = data(:,141);

%% plotting

plot(signals(1,:))

title('ECG Signal')
xlabel('Sample Number')
ylabel('Amplitude')

grid on

%% noise removal

ecg_signal = signals(1,:);

Fs=360;

filtered_signal = bandpass(ecg_signal,[0.5 40],Fs);

%% compare plots

subplot(2,1,1)
plot(ecg_signal)

title('Original ECG Signal')
xlabel('Sample Number')
ylabel('Amplitude')

grid on


subplot(2,1,2)
plot(filtered_signal)

title('Filtered ECG Signal')
xlabel('Sample Number')
ylabel('Amplitude')

grid on

%% finding peaks

[peaks,locations] = findpeaks(filtered_signal,'MinPeakHeight',0.5, 'MinPeakDistance',15);

%% plotting peaks

plot(filtered_signal)

hold on

plot(locations,peaks,'ro')

title('Peak Detection')
xlabel('Sample Number')
ylabel('Amplitude')

grid on

%% fft analysis

Y = fft(filtered_signal);

N = length(Y);

P = abs(Y/N);

f = (0:N-1)*(Fs/N);

plot(f(1:floor(N/2)),P(1:floor(N/2)))

title('Frequency Spectrum of ECG Signal')
xlabel('Frequency (Hz)')
ylabel('Magnitude')
grid on

%% signal statistics

mean_value = mean(ecg_signal);
max_value = max(ecg_signal);
min_value = min(ecg_signal);
std_value = std(ecg_signal);

fprintf('Mean = %.3f\n',mean_value);
fprintf('Maximum = %.3f\n',max_value);
fprintf('Minimum = %.3f\n',min_value);
fprintf('Standard Deviation = %.3f\n',std_value);
