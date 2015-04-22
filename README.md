The data files are taken from http://www.cs.cmu.edu/~epxing/Class/10701/HW/
The Kmean algorithm can also be found: http://www.cs.cmu.edu/~epxing/Class/10701/Lecture/lecture10-clustering.pdf
The basic algorithm is as following:
1) First choose the number of cluster, say K, you wish to find. If the number of clusters is not known a priori, there are methods to find the optimal number. 
2) Randomly assign K training data as initial centre of cluster. 
3) Find the (Euclidean) distance of training data with each of training data. 
4) Assign each data point to the cluster centre whose mean yields the minimum. 
5) Update the cluster centroids as the mean of all those points assigned to the particular cluster. 

In using Kmean some points are important to note. First, Kmean is sensitive to initialization. Hence, one should run the program many times. Second, Kmean algorithm could stuck in a local minimum, and feature scaling could improve clustering (to see this explicitly compare Kmean++ with and without normalization). In the case, where the number of clusters are not known, it is customary to plot the Kmean objective (cost) function vs the total number of clusters, and choose the value of K where cost function drop substantially, if such a point exist. 

Kmean++ is another version of Kmean with improved initialization,  proposed in 2007 by David Arthur and Sergei Vassilvitskii. The initialization algorithm is as following:

1) Choose one center uniformly at random from among the data points.
2) For each data point x, compute D(x), the distance between x and the nearest center that has already been chosen.
3) Choose one new data point at random as a new center, using a weighted probability distribution where a point x is chosen with 4) probability proportional to D(x)^2.
5) Repeat Steps 2 and 3 until k centers have been chosen.

