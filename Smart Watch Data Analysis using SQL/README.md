# Smart watch data analysis using SQL and python
Analyze smart watch dataset and answer the questions below. 

## Project Objective
Data Engineering Aspect
Write a Python script that does the following when run:
* Clean imported dataset
* Connet to postgres SQL database 
* Create table
* Upload cleaned dataset

Query the Postgre SQL database and answers the questions below
* What top 5 brands has the highest price?
* What is the most commonly used os by smart watches?
* What connectivity medium do most of the smart watches use?
* What top 5 brands has the longest battery life in days?
* What percentage of smart watch have and have not GPS (inclusive of brands)?
* What percentage of smart watch have and have not NFC (inclusive of brands)?

## Dataset Information
Columns:
* Brand: the manufacturer of the smartwatch
* Model: the specific model of the smartwatch
* Operating System: the operating system used by the smartwatch (e.g. watchOS, Wear OS, Garmin OS, Fitbit OS, etc.)
* Connectivity: the types of connectivity supported by the smartwatch (e.g. Bluetooth, Wi-Fi, Cellular)
* Display Type: the type of display technology used by the smartwatch (e.g. AMOLED, Retina, E-Ink, LCD)
* Display Size (inches): the size of the smartwatch's display in inches
* Resolution: the resolution of the smartwatch's display in pixels
* Water Resistance (meters): the depth to which the smartwatch can be submerged in water without damage
* Battery Life (days): the estimated battery life of the smartwatch in days
* Heart Rate Monitor: whether or not the smartwatch has a built-in heart rate monitor
* GPS: whether or not the smartwatch has built-in GPS for location tracking
* NFC: whether or not the smartwatch has NFC (Near Field Communication) for contactless payments or other wireless data transfer.
* Price (USD): the price of the smartwatch in US dollars

**Reference**:
https://www.kaggle.com/datasets/rkiattisak/smart-watch-prices
