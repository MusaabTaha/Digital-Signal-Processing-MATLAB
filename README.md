Those DSP algorithms were developed by Musaab Taha as a research project : Investigation of AC Analysis for Low Power Embedded Impedance Spectroscopy System based on STM32 at the Chair of Measurement and Sensor Technology
as part of his ongoing Masters studies at TU Chemnitz, Germany. 
Musaab Taha analyzed the theoritical background of each algorithm, developed each MATLAB script and evaluated the results of those DSP methods

1 - The Goertzel algorithm is a method used to compute the Fourier transform value at a specific spectral bin.
The algorithm is widely used as a tone detector in dual tone multi-frequency systems (DTMF).
The Goertzel algorithm, named after its creator Gerald Goertzel, is used to efficiently detect a specific frequency component within a signal.
Unlike the more computation-ally demanding Fast Fourier Transform (FFT), the Goertzel algorithm focuses on a predetermined frequency,
making it suitable for real-time applications with limited computational resources. Widely used in telecommunications, audio processing, and embedded systems, 
it offers a streamlined solution for targeted frequency analysis. The algorithm's simplicity and efficiency make it a valuable choice for scenarios where real-time 
processing and resource optimization are crucial. 

2 - The Fast Fourier Transform (FFT) is a method that speeds up the computation of the DFT values by removing redundant spectral components computation .
The Fast Fourier Transform (FFT) is a pivotal algorithm in signal processing, efficiently computing the Discrete Fourier Transform (DFT). Developed by Cooley and Tukey. The FFT drastically reduces computational complexity to O(N log⁡〖N)〗 from O(N^2). It employs a divide-and-conquer strategy, exploiting symmetries in complex exponentials. The FFT's speed and scalability make it integral in real-time applications, telecommunications, audio signal processing, and scientific simulations. Its broad applicability and impact on computational efficiency highlight its significance in diverse scientific and engineering domains. 