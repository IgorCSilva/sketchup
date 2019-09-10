
# Create the five points of the pentagon
pt1 = [0.cm,1.cm,0]
pt2 = [-0.951.cm, 0.309.cm, 0]
pt3 = [-0.588.cm, -0.809.cm, 0]
pt4 = [0.588.cm, -0.809.cm, 0]
pt5 = [0.951.cm, 0.309.cm, 0]

# Draw the face
pent = Sketchup.active_model.entities.add_face pt1, pt2, pt3, pt4, pt5 

# Display the locations of the stored vertices
puts("Point 0: " + pent.vertices[0].position.to_s)
puts("Point 1: " + pent.vertices[1].position.to_s)
puts("Point 2: " + pent.vertices[2].position.to_s)
puts("Point 3: " + pent.vertices[3].position.to_s)
puts("Point 4: " + pent.vertices[4].position.to_s)