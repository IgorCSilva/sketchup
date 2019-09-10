
# Create the box
entt = Sketchup.active_model.entities

main_face = entt.add_face [0,0,0], [6.cm,0,0], [6.cm,8.cm,0], [0,8.cm,0]
main_face.reverse!
main_face.pushpull 5.cm

# Draw a line across the upper-right corner
cut = entt.add_line [6.cm,6.cm,5.cm], [4.cm,8.cm,5.cm]

# Remove the new face
cut.faces[1].pushpull -5.cm