require 'sinatra'

# Ruta principal
get '/' do
  erb :index # Para renderizar, en este caso llama a la plantilla index que en el HTML se llama @@index
end

# Función que suma dos números
def suma(a, b)
  a + b
end

# Ruta para sumar dos números y devolver "Hello World" con el resultado
get '/suma' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  # El paramas es para acceder al número que se envía a través de la solicitud HTTP desde el formulario
  resultado = suma(num1, num2)
  "Hello World! El resultado de la suma es: #{resultado}"
end

# Este END final es para especificar el final del código ejecutable
__END__

@@index
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejemplo de Ruby con Sinatra</title>
</head>
<body>
    <h1>Bienvenido a la aplicación de suma</h1>
    <form action="/suma" method="get">
        <label for="num1">Número 1:</label>
        <input type="number" name="num1" required>
        <br>
        <label for="num2">Número 2:</label>
        <input type="number" name="num2" required>
        <br>
        <input type="submit" value="Sumar">
    </form>
</body>
</html>
