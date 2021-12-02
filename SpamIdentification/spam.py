#importing the required libraries
import numpy as np
import pandas as pd
import joblib
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.svm import SVC
from sklearn.metrics import accuracy_score,classification_report,confusion_matrix,precision_score, recall_score, f1_score
from sklearn.pipeline import Pipeline
from sklearn.feature_extraction.text import TfidfVectorizer
import mysql.connector
import seaborn as sns

#connection to db and reading the training data
db_connect = mysql.connector.connect(host='127.0.0.1', user='root',password='',database='final_prj',)
df = pd.read_sql("SELECT * FROM spamidentification_data", con=db_connect)
#print(df.shape)

#graphical representation of data
#sns.displot(df["label"], bins = 30)
#plt.show()

#removing the duplicate data
df.drop_duplicates(inplace=True)

#labeling the spam data as 2 and ham as 1
hamDf = df[df['category_id']==1]
spamDf = df[df['category_id']==2]

#selecting equal no of data for training the model
if(hamDf.shape[0]>spamDf.shape[0]):
	hamDf = hamDf.sample(spamDf.shape[0])

else:
	spamDf = spamDf.sample(hamDf.shape[0])

finalDf = hamDf.append(spamDf, ignore_index = True)

#graphical representation after selecting equal no of data
#sns.displot(finalDf["label"], bins = 30)
#plt.show()

#train test split
X_train,X_test,Y_train,Y_test = train_test_split(finalDf['message'],finalDf['category_id'],test_size = 0.2,random_state=0,shuffle= True,stratify=finalDf['category_id'])


#applying the SVC model for test classification
model = Pipeline([('tfidf',TfidfVectorizer(analyzer='word',stop_words='english')),('model',SVC())])

model.fit(X_train,Y_train)

Y_predict = model.predict(X_test)

print("Confusion matrix:")
print(confusion_matrix(Y_test,Y_predict))
print("Classification report:")
print(classification_report(Y_test,Y_predict))
print("Accuracy Score:")
print(accuracy_score(Y_test,Y_predict))
print("Precision Score:")
print(precision_score(Y_test,Y_predict))
print("Recall Score:")
print(recall_score(Y_test,Y_predict))
print("F1 Score:")
print(f1_score(Y_test,Y_predict))

print(model.predict(["To claim your reward call us"]))

joblib.dump(model,"finmoddel.pkl")