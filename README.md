# Digit Recognition Neural Network  

This project implements a **digit recognition system** using a **neural network** with a sigmoid activation function and **logistic regression** for the output layer. It includes a **cost function**, a **gradient function**, and an optimization step using the **fmincg algorithm**.  

## Features  
✅ Train a new neural network for digit recognition  
✅ Load a **pretrained** neural network model  
✅ Predict a **random digit** from the dataset  
✅ Uses **gradient descent** and **regularization** for optimization  

## How It Works  
1. The program either **trains a new model** from scratch or **loads a pretrained model**.  
2. Once loaded, it selects a **random digit** from the dataset.  
3. The neural network predicts the digit based on its learned weights.  

## Programming Language and Algorithms  
- **Programming Language:** MATLAB  
- **Algorithms:**  
  - **Cost Function:** Logistic regression cost function
  - **Activation Function:** Sigmoid function  
  - **Optimization Algorithm:** fmincg optimization  
  - **Training Algorithm:** Backpropagation with gradient descent  

## Requirements  
🔹 **MATLAB** or **GNU Octave** is required to run this application.  

## How to Run  
1. Open MATLAB or Octave.  
2. Navigate to the project folder.  
3. Open `Main.m` and execute it:  
   ```matlab
   Main
