Those DSP algorithms were developed by Musaab Taha as a research project : Investigation of AC Analysis for Low Power Embedded Impedance Spectroscopy System based on STM32 at the Chair of Measurement and Sensor Technology
as part of his ongoing Masters studies at TU Chemnitz, Germany. 
Musaab Taha analyzed the theoritical background of each algorithm, developed each algorithm MATLAB code as separate script and evaluated the results of those DSP methods in terms of accuarcy and processing time.
The goal of this project is to study, develop, evaluate and select the most appropriate DSP method for Embedded Bio-Impedance Spectroscopy


1 - The Goertzel algorithm is a method used to compute the Fourier transform value at a specific spectral bin.
The algorithm is widely used as a tone detector in dual tone multi-frequency systems (DTMF).
The Goertzel algorithm, named after its creator Gerald Goertzel, is used to efficiently detect a specific frequency component within a signal.
Unlike the more computation-ally demanding Fast Fourier Transform (FFT), the Goertzel algorithm focuses on a predetermined frequency,
making it suitable for real-time applications with limited computational resources. Widely used in telecommunications, audio processing, and embedded systems, 
it offers a streamlined solution for targeted frequency analysis. The algorithm's simplicity and efficiency make it a valuable choice for scenarios where real-time 
processing and resource optimization are crucial. 

2 - The Discrete Fourier Transform (DFT) is a mathematical method used to convert signals from the time domain to the frequency domain.
DFT is a crucial mathematical tool in signal processing and scientific applications. It converts finite sequences of data points from the time or spatial domain to the fre-quency domain, allowing the analysis of frequency components. Computed through a mathematical formula, the DFT involves complex exponential functions and is often optimized using the Fast Fourier Transform (FFT) algorithm for efficiency. Applica-tions include audio signal processing, image analysis, and telecommunications. Despite its power, the DFT has limitations, such as assuming periodicity and potential spectral leakage. In summary, the DFT's efficiency, particularly with FFT, makes it indispensable for analyzing and manipulating signals in diverse fields.


3 - The Fast Fourier Transform (FFT) is a method that speeds up the computation of the DFT values by removing redundant spectral components computation .
The Fast Fourier Transform (FFT) is a pivotal algorithm in signal processing, efficiently computing the Discrete Fourier Transform (DFT). Developed by Cooley and Tukey. The FFT drastically reduces computational complexity to O(N log⁡〖N)〗 from O(N^2). It employs a divide-and-conquer strategy, exploiting symmetries in complex exponentials. The FFT's speed and scalability make it integral in real-time applications, telecommunications, audio signal processing, and scientific simulations. Its broad applicability and impact on computational efficiency highlight its significance in diverse scientific and engineering domains. 

4 - Cross-correlation is a method to calculate the similarity between the input sig-nal and the reference signal.
Cross-correlation is a fundamental statistical method widely used in signal pro-cessing, statistics, and various scientific disciplines.
It assesses the similarity between two signals by measuring their convolution.
In essence, cross-correlation quantifies the degree to which a signal resembles a shifted (or lagged) version of another.
