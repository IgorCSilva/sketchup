
# Access the Entities container
entt = Sketchup.active_model.entities 

# Create the primary face
circle = entt.add_circle [0,0,0], [0,0,1], 2
circle_face = entt.add_face circle

# Create path
path = entt.add_curve [10,0,0], [10,0,5], [10,5,5], [10,5,0]

# Extrude the circle along the path
circle_face.followme path

