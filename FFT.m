function calcFFT()

    V = [%voltage signal]
    I = [%current signal]
    
    voltageFft = fft(V);
    currentFft = fft(I);

    % Compute the frequency axis
    fs = 100000; % Sampling frequency
    N = length(voltage512); % Num
    frequencies = (0:N-1) * fs / N; % Frequency axis

    % Find the indices corresponding to the dominant frequency components
    plot(abs(voltageFft))
    [~, VIndex] = max(abs(voltageFft));
    [~, CIndex] = max(abs(currentFft));

    % Extract the dominant frequencies
    voltageFrequency = frequencies(VIndex)
    currentFrequency = frequencies(CIndex)
    t = 1:512
    %plot(frequencies)
    

end
