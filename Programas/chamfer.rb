
# Create the box
ents = Sketchup.active_model.entities

main_face = ents.add_face [0,0,0], [5.cm,0,0], [5.cm,8.cm,0], [0,8.cm,0]
main_face.reverse!
# O true é colocado para o pushpull não deletar a face.
main_face.pushpull 6.cm, true

# Draw a line across a corner
cut = ents.add_line [5.cm,7.cm,6.cm], [5.cm,8.cm,5.cm]

# Create the chamfer
cut.faces[0].followme main_face.edges