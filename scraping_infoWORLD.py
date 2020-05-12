from bs4 import BeautifulSoup 
import requests
import pandas as pd
from sqlalchemy import create_engine
import pymysql


page= requests.get('https://news.google.com/covid19/map?hl=fr&gl=MA&ceid=MA:fr')
soup = BeautifulSoup(page.content,'html.parser')

data = {'TOTAL_CASES': [],'NEW_CASES': [],'TOTAL_DEATHS': [],'NEW_DEATHS': [],'TOTAL_RECOVERED': [],'ACTIVE_CASES': []}	
df_marks = pd.DataFrame(data)

sqlEngine = create_engine("mysql+pymysql://{user}:{pw}@localhost/{db}"
                       .format(user="root",
                               pw="",
                               db="coronavirus"))

dbConnection = sqlEngine.connect()


total_cases=soup.find('div',class_='fNm5wd qs41qe').find_all('div')[1].get_text()
total_recovered=soup.find('div',class_='fNm5wd gZvxhb').find_all('div')[1].get_text()
total_deaths=soup.find('div',class_='fNm5wd ckqIZ').find_all('div')[1].get_text()

new_cases=0
new_deaths=0
active_cases=0

print (total_cases)
new_row = {'TOTAL_CASES':total_cases, 'NEW_CASES':new_cases, 'TOTAL_DEATHS':total_deaths, 'NEW_DEATHS':new_deaths, 'TOTAL_RECOVERED':total_recovered, 'ACTIVE_CASES':active_cases}
df_marks = df_marks.append(new_row, ignore_index=True)


try:
	frame = df_marks.to_sql("world",dbConnection,if_exists='replace',index_label='ID')
	dbConnection.execute("ALTER TABLE world ADD PRIMARY KEY (ID);")
except Exception as ex:
    print(ex)
else:
    print("Table  created");   
finally:
	dbConnection.close()
