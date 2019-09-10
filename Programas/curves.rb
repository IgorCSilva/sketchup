
# Access the current Entities object
ents = Sketchup.active_model.entities 

=begin
Create five points in three dimensions
Each point is the vertex of a star shape
=end

pt1 = [0,1,5]
pt2 = [0.5888, -0.809, 5]
pt3 = [-0.951, 0.309, 5]
pt4 = [0.951, 0.309, 5]
pt5 = [-0.588, -0.809, 5]

#curve = ents.add_curve pt1, pt2, pt3, pt4, pt5, pt1

#======================================================

# Criando uma circunferência
# (ponto central, vetor normal, raio, 'opcional' número de segmentos)

#circle = ents.add_circle [1,2,3], [4,5,6], 7, 72


#======================================================

# Using polygon and circle
normal = [0, 0, 1]
radius = 1.cm

# Polygon with 8 sides
ents.add_ngon [0, 0, 0], normal, radius, 8

# Circle with 8 sides
ents.add_circle [3, 0, 0], normal, radius, 8

# Polygon with 24 sides
ents.add_ngon [6, 0, 0], normal, radius, 24

# Circle with 24 sides
ents.add_circle [9, 0, 0], normal, radius, 24

#======================================================

# Creating an arc.
=begin
• center - A point identifying the center of the circular arc
• zero_vec - A vector identifying the direction of the zero angle
• normal - A vector perpendicular to the circular arc
• radius - Radius of the circular arc
• start_angle - Starting angle, measured from the zero_vec vector
• end_angle - Ending angle, measured from the zero_vec vector
• num_segments (Optional) - Number of line segments in the arc
=end

arc = ents.add_arc [0, 0, 3], [0, 1, 0], [0, 0, 1], 5, 0, 90.degrees
