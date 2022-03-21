
# PROJECT WORK

## Selected Topic - Bitcoin Predictive Analysis and Visualization
Our group selected to work with the Bitcoin Historical Data (Jan 2012 to March 2021). Bitcoin / BTC (shorthand) - A form of digital currency created in 2009, that is created and distributed on a peer-to-peer basis. It has no central bank - transactions are conducted directly between individuals. Bitcoin is the most popular cryptocurrency. Bitcoin is the longest running and most well known cryptocurrency. 

## Reason the topic was selected
1) The team members are cryptocurrency enthusiasts.
2) We find the dataset interesting as it is merely numerical values.
3) We believe that there lies plenty of functionality within this dataset and are eager to dive into some of these values through machine learning methods.
4) We are interested in determining a short and long term market prediction using machine learning models
5) Since the dataset is primarily numerical values, and we have a historical dataset, we can possibly use both supervised and unsupervised machine learning models to predidct Bitcoin prices

## Description of the source of data
Data is available on Kaggle at [Bitcoin Historical Data](https://www.kaggle.com/mczielinski/bitcoin-historical-data)

## Questions we would like to answer with the data:
1)  How was Bitcoin journey over the last decade?
2)  How has Bitcoin's price in USD varied over time?
3)  Can we predict Bitcoin's price in the future based prices from the previous days, months, or years? 

## Technologies Used: 

## a) Exploratory Data Analysis
We will be using various Libraries like Pandas, numpy, matplotlib and date. Seaborn will be used to perform EDA. sklearn.model_selection and all ML model libraries for predictive analysis were also used.

## b) Database Storage
MongoDB is the database we intend to use, and we will integrate Flask to display the data.
We created 2 tables
1. The first table includes the raw data: CRYPTO_RAW_DATA

![rawdata](https://user-images.githubusercontent.com/91766890/158105223-d9e80222-9ca7-4325-a1bb-4b303650ea4c.png)

2. The second will have preprocessing data: CRYPTO_DATA_FEED

![hourlydataset](https://user-images.githubusercontent.com/91766890/158105235-0076686b-845d-4753-9316-7e3ea42ba28c.png)

## d) Dashboard and Presentation.
1. Presentation. [Click Here](https://docs.google.com/presentation/d/1hqEKFD-_s7xPiY4kffiQOeBNFVU4e59aDoc2pJYWI-4/edit#slide=id.g40199f628d_2_149)

2. Dashboard Link. [Click Here](

## Project Structure Outline
1. Data analysis and handling
   a. Imported the raw data to MongoDB
   b. Cleaned the data using Python and reloaded the data in to a new table.
   c. As part of the cleaning process we took care of missing and resampled the data from minutes of information to hourly information. (Reduced the data to 86,000           rows)
2. EDA and feature enngineering
   a. Did multiple correlation through Matploblib among the attributes.
   b. Tried to figure out the important attributes for the ML models.
3. Used different Machine Learning Models to do predictive analysis. SciKitLearn is the Machine Learning library we'll be using to create a classifier. 
   a. Linear Regression
   b. Decision Tree Regressor
   c. Random Forest
   d. ARIMA Model
   e. SARIMA Model
