# Issues Fixed

- I replaced toLocaleString with toLocaleDateString, because I am only using the date.
- For error handling I throw an exception if the wrong data type is provided and ensured that options are correctly formatted.
- Added a timezone for consistency