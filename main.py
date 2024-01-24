import gspread
import pandas as pd
from datetime import datetime
import time
das_time = datetime.now()
str(das_time)
print(das_time)

# set variables
docid = '1SO9cnlYr5lN2rWPa9ix8DHBOm9VwnftCDhLQDrdmb9o'
worksheetid = '0'
credfile = 'credentials.json'

f = open("sn.txt",'r').read().split('\n')
g = open("findmy.txt",'r').read().split('\n')

print(f)
print(g)
SN=' '.join(f)
str(SN)
FINDmy=' '.join(g)
str(FINDmy)
print(SN)
print(FINDmy)

GSHEET_name = 'Mac OS System Info Responses'
GSHEET_tab = 'Responses'

def get_sheet_data(GSHEET_name, GSHEET_tab):
    gc = gspread.service_account(filename='credentials.json')
    sh = gc.open(GSHEET_name)
    worksheet = sh.worksheet(GSHEET_tab)
    df = pd.DataFrame(worksheet.get_all_records())
    return df

# set variables
docid = '1SO9cnlYr5lN2rWPa9ix8DHBOm9VwnftCDhLQDrdmb9o'
worksheetid = 'Serials'
credfile = 'credentials.json'


# load GSheet
gc = gspread.service_account(filename=credfile)
sheet = gc.open_by_key(docid)
worksheet = sheet.worksheet(worksheetid)

#df = get_sheet_data(GSHEET_name, GSHEET_tab)
#gs.values.append('Responses', {'valueInputOption': 'USER_ENTERED'}, {'Serial Number':input_variable})

def method2(worksheet: gspread.Worksheet, df: pd.DataFrame):
    """This method goes through the df row by row and adds
    it to the worksheet by using casting.
    https://www.w3schools.com/python/python_casting.asp

    Args:
        worksheet (gspread.Worksheet): the worksheet with which to work
        df (pd.DataFrame): the df to append
    """
    # go over the values in the df by row
    for row in df.values:
        # cast as list
        row = list(row)
        # if you leave out the table_range it will append at the end
        worksheet.append_row(row)

dataframe = pd.DataFrame([SN])
method2(worksheet, dataframe)
worksheet = sheet.worksheet("ID")
dataframe = pd.DataFrame([FINDmy])
method2(worksheet, dataframe)
