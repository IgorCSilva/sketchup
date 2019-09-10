
# Create the face
ents = Sketchup.active_model.entities
tran_face = ents.add_face [-1.cm, -1.cm, 0], [-1.cm, 1.cm, 0], [1.cm, 1.cm, 0], [1.cm, -1.cm, 0]

# Scaling
t = Geom::Transformation.scaling [-10.cm,1.cm,0.cm], 2
ents.transform_entities t, tran_face 

tran_face2 = ents.add_face [-1.cm, -1.cm, 0], [-1.cm, 1.cm, 0], [1.cm, 1.cm, 0], [1.cm, -1.cm, 0]
t = Geom::Transformation.scaling [10.cm,5.cm,0.cm], 0.5, 2, 1
ents.transform_entities t, tran_face2 

# Translate six units in the +y direction
ty = Geom::Transformation.new [0, 6.cm, 0]

# Rotation
# Combinando transformações.
tr = Geom::Transformation.new [4,0,0], [0,0,1], 30.degrees
ents.transform_entities tr * ty, tran_face