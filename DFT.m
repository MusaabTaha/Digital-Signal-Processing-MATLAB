function calcDFT()

    V = [%voltage signal]
    I = [%current signal]

    voltageDFt = myDFT(voltage,1024);
    currentDFt = myDFT(current,1024);

    % Compute the frequency axis
    fs = 100000; % Sampling frequency
    N = length(voltage); % Num
    frequencies = (0:N-1) * fs / N; % Frequency axis

    %frequencies indices


end


function X=myDFT(x,N)
    
    L=length(x);

    if(N<L)
       error('N must be greater that or equal to length of x')
    end

    x = [x zeros(1,N-L)];

    X = zeros(1,N);

    for k=0:N-1
        %%for 
        n=[0:N-1];
            X(k+1)=sum(x(n+1).*exp(-j*2*pi*k*n/N));
        %end
    end

    end

