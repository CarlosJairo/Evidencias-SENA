// Importar los módulos necesarios
import express from "express";
import mongoose from "mongoose";
import dotenv from "dotenv"; // Módulo para manejar variables de entorno
import userRouter from "./routes/user.js"; // Importar las rutas de usuario

// Configurar dotenv para cargar variables de entorno desde un archivo .env
dotenv.config();

// Crear una instancia de la aplicación Express
const app = express();
const port = 3000; // Definir el puerto en el que el servidor escuchará

// Middleware para parsear JSON en las solicitudes entrantes
app.use(express.json());

// Usar el enrutador de usuario para todas las rutas que comienzan con /api
app.use("/api", userRouter);

// Ruta de prueba para la raíz del servidor
app.get("/", (req, res) => {
  res.send("Bienvenido al servidor");
});

// Conectar a MongoDB usando la URL de conexión definida en las variables de entorno
mongoose
  .connect(process.env.MONGODB_URI)
  .then(() => console.log("Conectado a MongoDB")) // Mensaje de éxito en la conexión
  .catch((err) => console.log(err)); // Manejo de errores en la conexión

// Iniciar el servidor y escuchar en el puerto definido
app.listen(port, () =>
  console.log(`Servidor en ejecución en http://127.0.0.1:${port}`),
);
