import json
import sqlite3
import os


# Creating DB connection
print('Connection to db...')
try:
    sqliteConnection = sqlite3.connect('database/planes.db')
    cursor = sqliteConnection.cursor()
    print('DB connection successful')

except sqlite3.Error as error:

    print("Error while connecting to sqlite", error)
    
sql_query = """SELECT name FROM sqlite_master  
  WHERE type='table';"""

cursor.execute(sql_query)
print(cursor.fetchall())


for filename in os.listdir('src/main/java/boeingData'):
    filePath = os.path.join('src/main/java/boeingData', filename)
    # checking if it is a file
    if os.path.isfile(filePath):
        # Opening JSON file
        f = open(filePath)

        data = json.load(f)

        # print('\n\nNEXT FILE\n\n')

        # Iterating through the json
        insertString = '''INSERT INTO RunDetails(FileName, FilePath, LoadNumber, Equipment, RunRecipe, RunStart, RunEnd, RunDuration, FileLength, OperatorName, ExportControl) VALUES('''
            
        
        for i in data['RunDetails']:  
            
            if i == 'IP':
                insertString += ''
            elif i != 'ExportControl':
                insertString += "'" + str(data['RunDetails'][i]) + "'" + ', '
            else:
                insertString += "'" + str(data['RunDetails'][i])  + "'" 
                
        insertString += ");"
        
        # print(insertString)     
        
        cursor.execute(insertString)
        sqliteConnection.commit()
        
        
        loadNumber = data['RunDetails']['LoadNumber']
        for each in data['PartInformation']:
            
            # print(each)
            insertString = '''INSERT INTO PartInformation(PartID, LoadNumber, EntryNumber, WorkOrder, PartNumber, PartDescription, ToolLocation, Comment1, Comment2, Comment3) VALUES('''
            
            TCInsert = '''INSERT INTO PartTCs(PartID, PartTC) VALUES('''
            tempTc = TCInsert
            
            probeInsert = '''INSERT INTO PartProbes(PartID,PartProbe) VALUES('''
            tempProbe = probeInsert
            
            sensorInsert = '''INSERT INTO OthersSensors(PartID, OtherSensor) VALUES('''
            tempSensor = sensorInsert
            
            partID = loadNumber + ' -- ' + str(each['Index'])
            insertString +=  "'" + partID + "'" 
            insertString += ', ' +  "'" + loadNumber + "'" 
            for i in each:
                if i == 'PartProbes':
                    
                    for j in each['PartProbes']:
                        probeInsert = tempProbe
                        probeInsert +=  "'" + partID + "', " +  "'" + j + "');"
                        
                        cursor.execute(probeInsert)
                        sqliteConnection.commit()
                        print(probeInsert)
                        
                elif i == 'PartTCs':
                    
                    for j in each['PartTCs']:
                        TCInsert = tempTc
                        TCInsert +=  "'" + partID + "', " +  "'" + j + "');" 
                        
                        cursor.execute(TCInsert)
                        sqliteConnection.commit()
                        print(TCInsert)
                        
                elif i == 'OtherSensors':
                    
                    for j in each['OtherSensors']:
                        sensorInsert = tempSensor
                        sensorInsert +=  "'" + partID + "', " +  "'" + j + "');" 
                        
                        cursor.execute(sensorInsert)
                        sqliteConnection.commit()
                        print(sensorInsert)
                        
                else:
                    insertString += ', ' +  "'" + str(each[i]) + "'" 
                    
            
            
            insertString += ");"
        
            cursor.execute(insertString)
            sqliteConnection.commit()
            print(insertString)

# Closing file

print('All data has been inserted. Closing file..')
f.close()
print('File closed')
