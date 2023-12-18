function calcGoertzel()

    V = [%voltage signal]
    I = [%current signal]
    
    Fs = 100000; % Sampling frequency in Hz


    N = length(V);

    for frequency_of_interest = [976.56 1953.13 4980.47 9960.94]
    
            % Calculate the Goertzel coefficients for the chosen frequency
            k = round(frequency_of_interest * N / Fs); % Calculate the k value
            w = 2 * pi * k / N; % Calculate the angular frequency
            
            % Initialize Goertzel algorithm variables
            s1 = 0;
            s2 = 0;
            
            % Perform the Goertzel algorithm
            for n = 1:N
                s0 = V(n) + 2 * cos(w) * s1 - s2;
                s2 = s1;
                s1 = s0;
            end
            
            r = s1 - s2*cos(w);
            i = s2*sin(w);
            
            comp = complex(r,i);
            
            DFT_V = sqrt(r^2 + i^2);

            % Initialize Goertzel algorithm variables
            s1 = 0;
            s2 = 0;
            
            % Perform the Goertzel algorithm
            for n = 1:N
                s0 = I(n) + 2 * cos(w) * s1 - s2;
                s2 = s1;
                s1 = s0;
            end
            
            r1 = s1 - s2*cos(w);
            i1 = s2*sin(w);
            
            DFT_I = sqrt(r1^2 + i1^2);
            comp1 = complex(r1,i1);

     end

end
