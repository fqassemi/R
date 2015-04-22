The data files are taken from http://www.cs.cmu.edu/~epxing/Class/10701/HW/
The Kmean algorithm can also be found: http://www.cs.cmu.edu/~epxing/Class/10701/Lecture/lecture10-clustering.pdf
The basic algorithm is as following:
1) First choose the number of cluster, say K, you wish to find. If the number of clusters is not known a priori, there are methods to find the optimal number. 
2) Randomly assign K training data as initial centre of cluster. 
3) Find the (Euclidean) distance of training data with each of training data. 
4) Assign each data point to the cluster centre whose mean yields the minimum. 
5) Update the cluster centroids as the mean of all those points assigned to the particular cluster. 

In using Kmean some points are important to note. First, Kmean is sensitive to initialization. Hence, one should run the program many times. Second, Kmean algorithm could stuck in a local minimum, and feature scaling could improve clustering. In the case, where the number of clusters are not known, it is customary to plot the Kmean objective (cost) function vs the total number of clusters, and choose the value of K where cost function drop substantially, if such a point exist.   
