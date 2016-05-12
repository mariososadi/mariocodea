table = []

table[0] = ["Nombre", "Edad", "Genero", "Grupo", "Calificaciones"]
table[1] = ["Rodrigo García", 13, "Masculino", "Primero", [9, 9, 7, 6, 8]]
table[2] = ["Fernanda Gonzalez",12,  "Femenino", "Tercero " , [6, 9, 8, 6, 8]]
table[3] = ["Luis Perez", 13, "Masculino", "Primero" , [8, 7, 7, 9, 8]]            
table[4] = ["Ana Espinosa", 14, "Femenino",  "Segundo" , [9, 9, 6, 8, 8]]        
table[5] = ["Pablo Moran", 11, "Masculino", "Segundo" , [7, 8, 9, 9, 8]]

a=[]
1.upto(5){ |x| a<< Hash[table[0].zip(table[x])]}
p a[0]["Edad"] == 13
p a[1]["Nombre"] == "Fernanda Gonzalez"
p a[2]["Genero"] == "Masculino"
p a[3]["Calificaciones"] == [9, 9, 6, 8, 8]
p a[4]["Grupo"] == "Segundo"