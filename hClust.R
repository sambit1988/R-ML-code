mydata1<-read_csv("D:/RPractice/Universities.csv")
mydata <- scale(mydata1[,2:7])
d <- dist(mydata, method = "euclidean") #Computing the distance natrix
fit <- hclust(d, method="centroid") # Building the algorithm # try with 'centroid'
plot(fit) # display dendogram
groups <- cutree(fit, k=4) # cut tree into 5 clusters
# draw dendogram with red borders around the 5 clusters 
rect.hclust(fit, k=4, border="red")
#Attach the cluster numbers to Uni
clusters=data.frame('Uni'=mydata1[,1],'Cluster' =groups)
