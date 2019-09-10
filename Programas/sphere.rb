
# Access the Entities object
ents = Sketchup.active_model.entities 

# Create the initial circle
center = [0,0,0]
radius = 5
circle = ents.add_circle center, [0,0,1], radius 
circle_face = ents.add_face circle

# Create the circular path
path = ents.add_circle center, [0,1,0], radius + 2

# Create the sphere
circle_face.followme path

# Remove the path
ents.erase_entities path