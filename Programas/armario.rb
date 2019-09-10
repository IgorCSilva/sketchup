
def armario (ents, initial_point, largura, altura, profundidade, dw, dh, dp, qtd_type, esp_porta, sentido_div, type)
    # Armário
    arm = block ents, initial_point, largura, altura, profundidade

    # Calculando altura e largura das portas de acordo com sua disposição (horizontal ou vertical)
    medidas = medidas_div sentido_div, largura, altura, dw, dh, dp, qtd_type

    # Criando ponto inicial para a primeira porta
    first_initial_point = initial_point_type initial_point, dw, dh, profundidade

    # Criando os tipos
    generate_types ents, qtd_type, first_initial_point, medidas, esp_porta, profundidade, sentido_div, dp, type
    
end

def generate_types (ents, qtd, initial_point, medidas, esp_porta, profundidade, sentido_div, dp, type)
    i = 0
    until i == qtd do
        if type == 'porta' || type == 'gaveta'
            frente ents, initial_point, medidas[0], medidas[1], esp_porta, type
        elsif type == 'vao'
            vao ents, initial_point, medidas[0], medidas[1], profundidade
        end

        # Next initial point.
        if sentido_div == 'v'
            initial_point[0] = initial_point[0] - medidas[0] - dp
        elsif sentido_div == 'h'
            initial_point[2] = initial_point[2] - medidas[1] - dp
        end
        i += 1
    end
end

def initial_point_type (initial_point, dw, dh, profundidade)
    initial_point_type = initial_point
    initial_point_type[0] = initial_point_type[0] - dw[0]
    initial_point_type[1] = initial_point_type[1] + profundidade
    initial_point_type[2] = initial_point_type[2] - dh[0]

    return initial_point_type
end

def medidas_div (sentido_div, largura, altura, dw, dh, dp, qtd)
    if sentido_div == 'v'
        largura_tipo = ((largura - (dw[0] + dw[1]) - ((qtd - 1) * dp)) / qtd)
        altura_tipo = altura - (dh[0] + dh[1])
    elsif sentido_div == 'h'
        largura_tipo = largura - (dw[0] + dw[1])
        altura_tipo = ((altura - (dh[0] + dh[1]) - ((qtd - 1) * dp)) / qtd)
    end

    return [largura_tipo, altura_tipo]
end

def vao (ents, initial_point, largura, altura, profundidade)
    # Vao
    vao = face_quadrado ents, initial_point, largura, altura
    vao.reverse!
    vao.pushpull (profundidade - 1.5.cm)
end

def block (ents, initial_point, largura, altura, profundidade)
    block = face_quadrado ents, initial_point, largura, altura
    block.reverse!
    block.pushpull profundidade, true
end

def frente (ents, initial_point, largura, altura, espessura, type)
    frente = face_quadrado ents, initial_point, largura, altura
    frente.pushpull espessura, true
    
    # Adicionando puxador
    if type == 'porta'
        start_puxador = [initial_point[0], initial_point[1] + espessura, initial_point[2] - altura + 3.cm]
    elsif type == 'gaveta'
        start_puxador = [initial_point[0], initial_point[1] + espessura, initial_point[2] - 3.cm]
    end
    end_puxador = [start_puxador[0] - largura, start_puxador[1], start_puxador[2]]
    ents.add_line start_puxador, end_puxador
end

def face_quadrado (ents, initial_point, largura, altura)
    face = ents.add_face initial_point,
        [initial_point[0] - largura, initial_point[1],initial_point[2]],
        [initial_point[0] - largura, initial_point[1],initial_point[2] - altura],
        [initial_point[0], initial_point[1],initial_point[2] - altura]
    
    return face
end

# Create walls
height_wall = 8.m
width_wall = 10.m
comp_floor = 10.m
ents = Sketchup.active_model.entities
wall = ents.add_face [0,0,0], [width_wall,0,0], [width_wall,0,height_wall], [0,0,height_wall]
floor = ents.add_face [0,0,0], [width_wall,0,0], [width_wall,comp_floor,0], [0,comp_floor,0]


# Função para se construir um armário.
# def armario (ents, initial_point, largura, altura, profundidade, dw, dh, dp, qtd_type, esp_porta, sentido_div, type)

# Dados adicionais
dw = 0.9.cm # Espaço para porta horizontal
dh = 0.9.cm # Espaço para porta vertical
dp = 0.75.cm # Distância entre as portas
esp_porta = 1.5.cm # Espessura da porta

# Medidas para armário 1
initial_point = [7.m, 0, 2.50.m]
largura = 70.cm
altura = 90.cm
profundidade = 45.cm
type = 'porta'
qtd_type = 2
sentido_div = 'v'

armario ents, initial_point, largura, altura, profundidade, [dw, dw], [dh, dh], dp, qtd_type, esp_porta, sentido_div, type

# Medidas para armário 2
initial_point = [6.30.m, 0, 2.50.m]
largura = 80.cm
altura = 60.cm
profundidade = 45.cm
type = 'porta'
qtd_type = 2
sentido_div = 'v'

armario ents, initial_point, largura, altura, profundidade, [dw, dw], [dh, dh], dp, qtd_type, esp_porta, sentido_div, type

# Medidas para armário 3
initial_point = [5.50.m, 0, 2.50.m]
largura = 60.cm
altura = 90.cm
profundidade = 50.cm
type = 'porta'
qtd_type = 2
sentido_div = 'h'

armario ents, initial_point, largura, altura, profundidade, [dw, dp/2], [dh, dh], dp, qtd_type, esp_porta, sentido_div, type

# Medidas para armário 4
initial_point = [4.90.m, 0, 2.50.m]
largura = 60.cm
altura = 45.cm
profundidade = 50.cm
type = 'porta'
qtd_type = 1

armario ents, initial_point, largura, altura, profundidade, [dp/2 , dw], [dh, dp/2], dp, qtd_type, esp_porta, sentido_div, type

# Medidas para armário 5
initial_point = [4.90.m, 0, 2.05.m]
largura = 60.cm
altura = 45.cm
profundidade = 50.cm
type = 'vao'
qtd_type = 1

armario ents, initial_point, largura, altura, profundidade, [dp/2 , dw], [dp/2, dh], dp, qtd_type, esp_porta, sentido_div, type

# Medidas para armário 6
initial_point = [4.30.m, 0, 2.50.m]
largura = 80.cm
altura = 50.cm
profundidade = 50.cm
type = 'porta'
qtd_type = 1

armario ents, initial_point, largura, altura, profundidade, [dw , dw], [dh, dp/2], dp, qtd_type, esp_porta, sentido_div, type

# Medidas para armário 6
initial_point = [4.30.m, 0, 2.m]
largura = 80.cm
altura = 11.cm
profundidade = 50.cm
type = 'vao'
qtd_type = 6
sentido_div = 'v'

armario ents, initial_point, largura, altura, profundidade, [dw , dw], [dp/2, dp/2], dp, qtd_type, esp_porta, sentido_div, type

# Medidas para armário 6
initial_point = [4.30.m, 0, 1.89.m]
largura = 80.cm
altura = 1.79.m
profundidade = 50.cm
type = 'vao'
qtd_type = 1

armario ents, initial_point, largura, altura, profundidade, [dw , dw], [dp/2, 0.1.cm], dp, qtd_type, esp_porta, sentido_div, type

# Medidas para armário 6
initial_point = [6.30.m, 0, 0.86.m]
largura = 80.cm
altura = 0.76.m
profundidade = 52.cm
type = 'vao'
qtd_type = 1

armario ents, initial_point, largura, altura, profundidade, [3.cm , 3.cm], [3.cm, 3.cm], dp, qtd_type, esp_porta, sentido_div, type


# Medidas para armário 6
initial_point = [5.50.m, 0, 0.86.m]
largura = 20.cm
altura = 0.76.m
profundidade = 52.cm
type = 'gaveta'
qtd_type = 1

armario ents, initial_point, largura, altura, profundidade, [dw , dp/2], [dh, dh], dp, qtd_type, esp_porta, sentido_div, type

# Medidas para armário 6
initial_point = [5.30.m, 0, 0.86.m]
largura = 60.cm
altura = 0.76.m
profundidade = 52.cm
type = 'gaveta'
qtd_type = 2
sentido_div = 'h'

armario ents, initial_point, largura, altura, profundidade, [dp/2 , dp/2], [dh, dh], dp, qtd_type, esp_porta, sentido_div, type


# Medidas para armário 6
initial_point = [4.70.m, 0, 0.86.m]
largura = 40.cm
altura = 0.76.m
profundidade = 52.cm
type = 'gaveta'
qtd_type = 4
sentido_div = 'h'

armario ents, initial_point, largura, altura, profundidade, [dp/2 , dw], [dh, dh], dp, qtd_type, esp_porta, sentido_div, type

