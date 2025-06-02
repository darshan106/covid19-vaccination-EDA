# COVID-19 Vaccination Analysis in R 📊💉

This project analyzes and visualizes COVID-19 vaccination data for India, the United Kingdom, and France using R. The dataset is sourced from [Kaggle](https://www.kaggle.com/tunguz/data-on-covid19-coronavirus).

---

## 📁 Dataset

The data used is from the Kaggle dataset:
**[Data on COVID-19 (coronavirus)](https://www.kaggle.com/tunguz/data-on-covid19-coronavirus)**

File used: `covid-data.csv`

---

## 📦 Packages Used

- `data.table`
- `tidyverse`
- `funModeling`
- `Hmisc`
- `ggplot2`

---

## 🔍 Features of the Analysis

1. **Data Profiling**
   - Checked for missing values, zero counts, and data types.
   - Summarized categorical and numerical features.

2. **Data Cleaning**
   - Filtered data for India, UK, and France.
   - Selected relevant columns related to vaccination progress.
   - Removed rows with missing values in key columns.

3. **Visualization**
   - Created a time series plot of the percentage of people vaccinated (at least one dose) in each country.

---

## 📊 Visualization Example

The plot shows the percentage of people vaccinated per hundred over time:

- **x-axis**: Date  
- **y-axis**: Percentage vaccinated  
- **Color**: Country (India, UK, France)

---

## 📂 Project Structure

```bash
├── covid-data.csv                      # Dataset
├── script.R                            # Main R script
└── README.md                           # Project documentation
```

---

## 🚀 Getting Started

1. Clone the repository  
```bash
git clone https://github.com/your-username/covid19-vaccination-EDA.git
```
2.	Open the R script and run in RStudio or any R environment.
3.	Make sure you install the required packages before running:
```bash
install.packages("data.table")
install.packages("tidyverse")
install.packages("funModeling")
install.packages("Hmisc")
```

---

## 📌 License

This project is licensed under the MIT License.

---

## ✨ Author

### Darshan

```bash

Let me know if you’d like me to generate a `.Rproj` file, `.gitignore`, or publish the repo structure for upload to GitHub!

```


