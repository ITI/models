import json
import os
import pandas as pd
all_csvs = pd.DataFrame()
all_jsons = pd.DataFrame()
for folder in os.listdir('.'):
    if not os.path.isdir(folder):
        continue
    csv_file = os.path.join(folder,'base','opendss','substations.csv')
    csv_input = pd.read_csv(csv_file)
    all_csvs = all_csvs.append(csv_input,ignore_index=True)

    json_file = os.path.join(folder,'base','opendss','substations.json')
    json_input = pd.read_json(json_file)
    all_jsons = all_jsons.append(json_input,ignore_index=True)
print(all_csvs)
print(all_jsons)
all_csvs.to_csv('all_substations.csv',header=True,index=False)
json_data = all_jsons.to_dict()
with open('all_substations.json','w') as json_output:
    json.dump(json_data,json_output, indent=4)

