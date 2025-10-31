1. data collection
2. feature engineering; select the features
3. split data
4. model selection and train data 
5. model eval and optim
6. deplou
7. ci/cd

Train, Test, Validate 

train -> build model 

Logistic regression: binary classifier supervised output can be numerical or categorical; linear model  too simple
decision tree: works as tree, end nodes: predicted values overfit
random forest: combines prediction of multiple decision trees -> becomes robust, accurate   too expensive 

overfitting good training but poor testing

underfitting; poor training as the data is too simple so it has high bias and low variance 
insufficient feature engineering; the 

parameter finetuning  - cross validation 
same model but tune/change the parameters
ex: randomforestclassifier(n_estimators = 10)
    randomforestclassifier(n_estimators = 40)
    randomforestclassifier(n_estimators = 30)
so basically this can give us better results, performance 

hyper tuning - choosing optimal parameters 
find the best hyperparameter settings for a model  we use GRIDSEARCH

#classifier = gridsearchcv(model, {parameter grid}, CV cross_validations, return_train_Score = Fale/true); the parameter grid works 
#classifier.fit 