
# Create a square Face centered on the origin, and
# show how the classify_point method locates points relatie to it


face = Sketchup.active_model.entities.add_face [-1, -1, 0], [-1, 1, 0], [1, 1, 0], [1, -1, 0]

puts('Ponto [0, 0, 0]:' + (face.classify_point [0, 0, 0]).to_s + " - ponto na face")
puts('Ponto [1, 1, 0]:' + (face.classify_point [1, 1, 0]).to_s + " - ponto no vértice")
puts('Ponto [1, 0, 0]:' + (face.classify_point [1, 0, 0]).to_s + " - ponto na aresta")
puts('Ponto [1, 2, 0]:' + (face.classify_point [1, 2, 0]).to_s + " - ponto no plano da face")
puts('Ponto [1, 1, 1]:' + (face.classify_point [1, 1, 1]).to_s + " - ponto fora do plano da face")
