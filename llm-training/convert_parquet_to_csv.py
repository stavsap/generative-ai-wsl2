from fastparquet import ParquetFile

# Reading the data from Parquet File
pf = ParquetFile("train.parquet")

# Converting data in to pandas dataFrame
dataFrame = pf.to_pandas()

# Converting to CSV
dataFrame.to_csv("converted.csv", index = False)
