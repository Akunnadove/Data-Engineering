/* ANALYZE THE SMART WATCH DATA BY ANSWERING THE QUESTIONS AS FOLLOWS */

/* View entire table */
SELECT * FROM cleaned_watch;

/* What top 5 brands has the highest price? */
SELECT brand, _price_usd_ FROM cleaned_watch
ORDER BY _price_usd_ DESC
LIMIT 5;

/* What is the most commonly used os by smart watches? */
SELECT DISTINCT operating__system, COUNT(DISTINCT operating__system) FROM cleaned_watch;

/* What connectivity medium do most of the smart watches use? */
SELECT connectivity, COUNT(connectivity) FROM cleaned_watch;

/* What top 5 brands has the longest battery life in days? */
SELECT brand, battery_life_days FROM cleaned_watch
ORDER BY battery_life_days DESC
LIMIT 5;

/* What percentage of smart watch have and have not GPS (inclusive of brands)? */
WITH derived_gps AS (
    SELECT 
        gps, 
        CASE 
            WHEN gps = 'Yes' THEN 1 
            ELSE 0 
        END AS new_gps 
    FROM 
        cleaned_watch
)
SELECT 
    gps, new_gps, 
    COUNT(*) AS OCCURENCE,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER()) AS percentage
FROM 
    derived_gps 
GROUP BY 
    new_gps;
    
/* What percentage of smart watch have and have not NFC (inclusive of brands)? */
WITH derived_nfc AS (
    SELECT 
        nfc, 
        CASE 
            WHEN nfc = 'Yes' THEN 1 
            ELSE 0 
        END AS new_nfc 
    FROM 
        cleaned_watch
)
SELECT 
    nfc, new_nfc, 
    COUNT(*) AS occurence,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER()) AS percentage
FROM 
    derived_nfc 
GROUP BY 
    new_nfc;