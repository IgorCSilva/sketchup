
# Create the figure
ents = Sketchup.active_model.entities
face = ents.add_face [1, 1, 0], [1, -1, 0], [-1, -1, 0], [-1, 1, 0]
face.pushpull 1

# Create and populate the array
# Here the array will contain only unique Vertex object,
# because the operator | prevents vertex_array from receiving duplicate elements.
vertex_array = []
ents.each { |ent|
    if (ent.typename == "Edge")
        vertex_array = vertex_array | ent.vertices
    end
}

vertex_array.each { |pt| 
    puts "Point: " + pt.position.to_s
}