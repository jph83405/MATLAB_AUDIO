[music_unfiltered,sample] = audioread('Audio.wav');
music_unfilter = music_unfiltered(:,1);
spectrum = fft(music_unfilter);
plot(abs(spectrum(:,1)))
figure();

window = 100;
kernel = ones(1,window)/window;
smoothed_music = conv(music_unfilter,kernel);
spectrum_smoothed = fft(smoothed_music);
plot(abs(spectrum_smoothed));

%sound(music_unfilter,sample);
%sound(smoothed_music,sample);