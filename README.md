# ECG-Signal-Processing-and-Analysis-MATLAB
MATLAB-based ECG signal processing project involving noise filtering, R-peak detection, frequency spectrum analysis using FFT, and statistical feature extraction.

## Overview

This project focuses on the processing and analysis of Electrocardiogram (ECG) signals using MATLAB. The objective is to remove noise from raw ECG data, detect important cardiac peaks, analyze the frequency spectrum of the signal, and extract statistical features for further analysis.

The project demonstrates fundamental concepts of biomedical signal processing and digital signal analysis.

---

## Features

* ECG signal visualization
* Noise removal using bandpass filtering
* R-peak detection
* Frequency spectrum analysis using FFT
* Statistical feature extraction
* Data visualization and analysis

---

## Tools Used

* MATLAB
* Signal Processing Toolbox

---

## Dataset

The ECG dataset consists of multiple ECG recordings where:

* Columns 1–140 contain ECG signal samples
* Column 141 contains class labels

---

## Methodology

### 1. ECG Signal Visualization

The ECG waveform is plotted to observe signal characteristics and identify noise components.

### 2. Noise Removal

A bandpass filter is applied with cutoff frequencies:

* Lower cutoff: 0.5 Hz
* Upper cutoff: 40 Hz
* Sampling Frequency: 360 Hz

This removes baseline wander and high-frequency noise while preserving important ECG components.

### 3. Peak Detection

The filtered ECG signal is analyzed using MATLAB's `findpeaks()` function to identify significant peaks.

Parameters used:

* Minimum Peak Height = 0.5
* Minimum Peak Distance = 15 samples

### 4. Frequency Analysis

Fast Fourier Transform (FFT) is applied to analyze the frequency content of the ECG signal.

The frequency spectrum helps identify dominant frequency components and evaluate signal quality.

### 5. Statistical Feature Extraction

The following statistical parameters are computed:

* Mean
* Maximum Value
* Minimum Value
* Standard Deviation

These features provide quantitative information about the ECG signal.

---

## Results

The project generates:

* Original ECG Signal Plot
* Filtered ECG Signal Plot
* Peak Detection Visualization
* Frequency Spectrum Plot
* Statistical Analysis Results

---

## Applications

* Biomedical signal processing
* Cardiac health monitoring
* ECG feature extraction
* Medical data analysis
* Machine learning preprocessing

---

## Learning Outcomes

Through this project, the following concepts were explored:

* Digital Signal Processing (DSP)
* Biomedical Signal Analysis
* MATLAB Programming
* Frequency Domain Analysis
* Peak Detection Techniques
* Feature Extraction

---

## Future Improvements

* Heart Rate Calculation
* QRS Complex Detection
* Arrhythmia Classification
* Machine Learning-Based Diagnosis
* Real-Time ECG Monitoring

---

## Author

Divanshi Arora
