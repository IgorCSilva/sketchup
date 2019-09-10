
# Create the figure
ents = Sketchup.active_model.entities
face = ents.add_face [1, 1, 0], [1, -1, 0], [-1, -1, 0], [-1, 1, 0]
face.pushpull 1

# Smooth the edges with positive x-values
ents.each { |ent| 
    if (ent.typename == "Edge" && ent.start.position.x > 0 && ent.end.position.x > 0)
        ent.smooth = true        
    end
}