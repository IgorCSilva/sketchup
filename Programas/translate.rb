
# Create the face
ents = Sketchup.active_model.entities
tran_face = ents.add_face [-1.cm, -1.cm, 0], [-1.cm, 1.cm, 0], [1.cm, 1.cm, 0], [1.cm, -1.cm, 0]

# Translate four units in the +x direction
t = Geom::Transformation.new [4.cm, 0, 0]
ents.transform_entities t, tran_face 

# Translate six units in the +y direction
t = Geom::Transformation.new [0, 6.cm, 0]
ents.transform_entities t, tran_face

# Rotation
# Rotacionando o objeto baseado no vetor z ([0,0,1]) centrado na posição [4,0,0]
tr = Geom::Transformation.new [4,0,0], [0,0,1], 30.degrees
ents.transform_entities tr, tran_face