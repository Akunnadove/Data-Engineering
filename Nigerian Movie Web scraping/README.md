
# 🇳🇬 Nigerian Movie Data Scraper & Google Sheets Exporter

This project automates the process of collecting data on the highest-grossing Nigerian films from Wikipedia and storing the results in a Google Sheet.

## 📈 Business Scenario

In Nigeria’s fast-growing film industry (Nollywood), stakeholders such as producers, investors, and researchers need accessible, up-to-date insights on box office performance. However, this data is often scattered across sources or locked behind outdated interfaces.

This script addresses this challenge by **automatically scraping film data** from Wikipedia and **exporting it to Google Sheets**, allowing users to:

- Track top-performing films for financial or trend analysis.
- Maintain a live, shareable database of film earnings.
- Support market research and investment decisions.

## 🎯 Project Aim

To build an automated pipeline that:
1. Scrapes the list of highest-grossing Nigerian films from Wikipedia.
2. Extracts relevant data such as title, year, domestic gross, and directors.
3. Uploads the cleaned data to a Google Sheet for easy access and collaboration.

## 🚀 Features

- 🧹 Cleanly extracts structured film data using BeautifulSoup.
- ☁️ Saves data directly to Google Sheets using the Google Sheets API.
- 🔁 Avoids manual copy-pasting and keeps data updated in one click.

## 🛠️ Technologies Used

- Python
- Requests
- BeautifulSoup
- Google Sheets API (via `gspread`)
- Wikipedia (data source)

## 📦 Setup Instructions

1. **Clone the Repository**
   ```bash
   git clone https://github.com/your-username/nigerian-movie-scraper.git
   cd nigerian-movie-scraper
   ```

2. **Install Required Libraries**
   ```bash
   pip install requests beautifulsoup4 gspread google-auth
   ```

3. **Set Up Google Sheets API**
   - Go to [Google Cloud Console](https://console.cloud.google.com/).
   - Enable the **Google Sheets API** and **Google Drive API**.
   - Create a **Service Account** and download the JSON credentials file.
   - Rename the file to `nigeriamovie.json` or update the script to match your file name.
   - Share your target Google Sheet with the service account email.

4. **Run the Script**
   ```bash
   python main.py
   ```

## 📊 Sample Output (Google Sheet)

| Rank | Title                    | Year | Domestic Gross | Studio(s)       | Director(s)      |
|------|--------------------------|------|----------------|------------------|------------------|
| 1    | The Wedding Party        | 2016 | ₦453,000,000   | EbonyLife Films | Kemi Adetiba     |
| ...  | ...                      | ...  | ...            | ...              | ...              |

## 📌 Notes

- The script appends new data to the first sheet of the specified Google Spreadsheet.
- It checks for the sheet’s existence; if not found, it creates a new one.
- Only runs from the command line as a standalone script (`__main__` block).

## 🤝 Contributing

Got suggestions for new features or improvements? Open an issue or pull request!

## 📄 License

MIT License
