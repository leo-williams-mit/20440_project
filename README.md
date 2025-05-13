# Utilizing a multi-omics approach to identify potential peptide MHC signatures in metastasizing breast cancer cells for improved immunotherapy. 

In this repository we contain the code and the files utilized to do all of the data analysis. 
## For the RNAseq data
To recapitulate any of the data, run the RNA_DE_Plots_T.ipynb

It is important that you run RNA_DE_Plots_T which will allow you to take the counts table and run the differential analysis, making significance cutoffs as well as 'safe' and 'super safe' cutoffs. The only necessary
imports are numpy, scipy, and statsmodels. Bokeh and iqplot was used for initial plotting however those plots were taken out from the final code. All plots fin the paper were made using GraphPad Prism, using a sorted 
counts table.

## For the Immunopeptidomics data
To recapitulate these results, the user must first run the preprocessing file. This will output a preprocessed file, which the user should the change the name of, and input that file into the analysis. In more detail:
1. Run initial_preprocessing_pMHCdata.ipynb
 - This will output a preprocessed file
2. Change the filename of the outputted file and place in the desired location
3. Input the newly named file into analysis_pMHC_data.ipynb and run the file to perform the analysis

Scattered throughout the github we also have multiple formats of the data as well as iterations of the code to show that we are human and that this took multiple iterations. If you want to stray into the other files
you may, however remember that they might not be complete or fully working. 

If you have any questions feel free to reach out to Leo Williams or Sergion Quispe Sanchez :)

![image](https://github.com/user-attachments/assets/d0de4c2a-cf47-4bc1-b6f7-ef658e22aa00)
