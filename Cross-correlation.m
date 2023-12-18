function calcCrossCorr()

    V = [%voltage signal]
    I = [%current signal]
    
    samplingRate = 100000; % Sampling rate in Hz
    numSamples = 1024; % Number of samples
    Fs = 100000; % Sampling frequency in Hz

    for frequency = [976.56 1953.13 4980.47 9960.94]; % Frequency of the sine wave in Hz
    
        % Time vector from 0 to (numSamples - 1) divided by the sampling rate
        t = (0:numSamples-1) / samplingRate;
        
        % Generate the sine wave
        Signal = sin(2 * pi * frequency * t);
       
        % Calculate cross-correlation
        V_cross_corr= xcorr(V,Signal);
        I_cross_corr = xcorr(I, Signal);
    
        % Find the delay in samples (index of maximum correlation)
        delay_samples = find(V_cross_corr == max(V_cross_corr));
        delay_samples1 = find(I_cross_corr == max(I_cross_corr));
    
        delay_seconds = delay_samples / Fs;
        delay_seconds1 = delay_samples1 / Fs;

        phase_shift_radians = 2 * pi * frequency * delay_seconds;
        phase_shift_radians1 = 2 * pi * frequency * delay_seconds1;
        shift = phase_shift_radians1 - phase_shift_radians;

    end

