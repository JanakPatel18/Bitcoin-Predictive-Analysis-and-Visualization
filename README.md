
# PROJECT WORK

# Team Members

Anuradha Singh, Sherin Chacko, Janak Patel, Mark Melendez, Uttam Kumar

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

## c) Dashboard and Presentation.
1. Presentation. [Click Here](https://docs.google.com/presentation/d/1hqEKFD-_s7xPiY4kffiQOeBNFVU4e59aDoc2pJYWI-4/edit#slide=id.g40199f628d_2_149)
2. Dashboard [CLick Here](https://public.tableau.com/app/profile/uttam.kumar4024/viz/BitCoinDataVisualization/BITCOINApril2021PricePrediction#1)

## Project Structure Outline
1. Data analysis and handling
   
   a. Imported the raw data to MongoDB
   
   b. Cleaned the data using Python and reloaded the data in to a new table.
   
   c. As part of the cleaning process we took care of missing and resampled the data from minutes of information to hourly information. (Reduced the data to 86,000           rows)
   
2. EDA and feature enngineering
   
   a. Did multiple correlation through Matploblib among the attributes.
   ![Correlation](https://user-images.githubusercontent.com/91707734/159818451-6a0d277e-707f-48d5-a7a1-be71ecdf2171.png)
   
   Open, high, low, close and Volume_Currency are highly related which is negatively correlated with the weighted price.  Volume is not correlated with weighted price at all.  Year is moderately related with weighted price
   
   
   b. Tried to figure out the important attributes for the ML models.
   
   ![EDA Image 2](https://user-images.githubusercontent.com/91707734/159818307-181ee925-c3f1-4aa7-8dce-121209d57e69.png)
   
   The above graph shows the zoomed in version from 2012 - 2016.  As you see from the graph, the weighted price is relatively low to start and then goes on the rise starting in 2014 and starts to drop down as you get closer to 2016.
   
   ![EDA Image 3](https://user-images.githubusercontent.com/91707734/159818314-ebb6ff63-697d-4789-a0fd-1346b0f67d4a.png)
   
   The above image show the zoomed in version from 2016 - 2021.  The weighted price is in the low $100's in 2016 and starts to go on the rise very quickly by 2018.  The next three years show that the price was fluctuating over the next couple years and is currently on the rise.

3. Used different Machine Learning Models to do predictive analysis. SciKitLearn is the Machine Learning library we'll be using to create a classifier. 
   
   **a. Linear Regression** [Click Here](https://github.com/JanakPatel18/Bitcoin-Predictive-Analysis-and-Visualization/blob/main/Bitcoin%20Prediction%20with%20Linear%2C%20ARIMA%20%26%20SARIMA%20Model.ipynb)
   
   ![Linear](https://user-images.githubusercontent.com/91707734/159720379-8b5773b2-d591-4cff-af3e-60a659356cdc.jpg)
   
   It is the very first model we tried to predict the future values with but as you can see in the graph it did not predicted the price correctly and also got Mean Absolute Error very high. So planned to quite it and try different model.

   **b. Decision Tree Regressor** [Click Here](https://github.com/JanakPatel18/Bitcoin-Predictive-Analysis-and-Visualization/blob/main/Decision%20Tree%20Regression%20for%20Bitcoin-Scatter%20Matrix%20with%20KDE%20Plot.ipynb)
   
   ![decision tree regressor](https://user-images.githubusercontent.com/91707734/159720542-ff435824-951c-4f4f-89a1-fd13740faea5.png)

   We decided not to move forward with this model because accuracy score can't be calculated with this method.
   
   **c. Random Forest Classifier** [Click Here](https://github.com/JanakPatel18/Bitcoin-Predictive-Analysis-and-Visualization/blob/main/Bitcoin_RandomForest_Deliverable4.ipynb)
   
   ![Random_Forest Open Price Vs Year](https://user-images.githubusercontent.com/91707734/159720709-aa71c684-4bd4-4ec0-9abe-11654b251a8e.png)
  
   The model's predictive accuracy score is less than 40% so we decided to to explore time-series analysis to predict future bitcoin values

   **d. ARIMA Model**  [Click Here](https://github.com/JanakPatel18/Bitcoin-Predictive-Analysis-and-Visualization/blob/main/Bitcoin%20Prediction%20with%20Linear%2C%20ARIMA%20%26%20SARIMA%20Model.ipynb)
   
   ![ARIMA](https://user-images.githubusercontent.com/91707734/159720844-3f644e8a-2354-4313-b5ec-a22f6a057415.png)
   
      Time series ARIMA model was also not helpful to predict the future stock price as you can see in the graph above. ARIMA model does not work well with seasonal data and Bitcoin data is a seasonal data

   **e. SARIMA Model**  [Click Here](https://github.com/JanakPatel18/Bitcoin-Predictive-Analysis-and-Visualization/blob/main/Bitcoin%20Prediction%20with%20Linear%2C%20ARIMA%20%26%20SARIMA%20Model.ipynb)
   
   ![SARIMA April Month Prediction](https://user-images.githubusercontent.com/91707734/159722402-bd01f314-0996-44e4-a5e6-e819c9c1fe7f.jpg)

   As Bitcoin data is seasonal, SARIMA is the right model to go head with price prediction.
We created the Seasonal difference and it helped to predict the future prices as you can see in the graph. SARIMA predictions are much closer and aline with real prices
