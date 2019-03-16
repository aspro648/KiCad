
#https://stackoverflow.com/questions/48081690/how-to-find-points-on-a-circumference

import numpy as np

def get_points(radius, number_of_points):
    radians_between_each_point = 2*np.pi/number_of_points
    list_of_points = []
    for p in range(0, number_of_points):
        list_of_points.append( (radius*np.cos(p*radians_between_each_point) + center[0],
                                radius*np.sin(p*radians_between_each_point) + center[1]) )
    return list_of_points


center = (163.45, 81.79)
points = get_points(9, 12)

for point in points:
    print "   (at %s %s)" % (round(point[0] * 100)/100, round(point[1]*100)/100)
