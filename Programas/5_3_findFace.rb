
# Create the figure
ents = Sketchup.active_model.entities
face = ents.add_face [-1, -1, 0], [-1, 1, 0], [1, 1, 0], [1, -1, 0]
face.pushpull 1

# Find the face that points in the x-direction
xface = ents.find { |ent|
    ent.typename == "Face" && ent.normal == [1, 0, 0]
}
puts "The face is: " + xface.to_s
xface.pushpull 2