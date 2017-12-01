library("foreign")

fer2017 <- read.csv("fer2017-testing.csv", TRUE, ",")
fer2017testing <- fer2017[sample(nrow(fer2017)),]

fer20171 <- read.csv("fer2017-training.csv", TRUE, ",")
fer2017training <- fer20171[sample(nrow(fer20171)),]

fer20172 <- read.csv("fer2017-training-happy.csv", TRUE, ",")
fer2017traininghappy <- fer20172[sample(nrow(fer20172)),]

fer20173 <- read.csv("fer2017-testing-happy.csv", TRUE, ",")
fer2017testinghappy <- fer20173[sample(nrow(fer20173)),]

write.arff(fer2017testing, "fer2017-testing.arff")
write.arff(fer2017training, "fer2017-training.arff")
write.arff(fer2017testinghappy, "fer2017-testing-happy.arff")
write.arff(fer2017traininghappy, "fer2017-training-happy.arff")