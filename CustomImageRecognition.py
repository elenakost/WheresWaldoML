from imageai.Prediction.Custom import CustomImagePrediction
import os
import sys
execution_path = os.getcwd()

prediction = CustomImagePrediction()
prediction.setModelTypeAsResNet()
prediction.setModelPath("datadir/models/model_ex-018_acc-0.893229.h5")
prediction.setJsonPath("datadir/json/model_class.json")
prediction.loadModel(num_objects=2)

predictions, probabilities = prediction.predictImage(sys.argv[1], result_count=2)

for eachPrediction, eachProbability in zip(predictions, probabilities):
    print(eachPrediction , " : " , eachProbability)

