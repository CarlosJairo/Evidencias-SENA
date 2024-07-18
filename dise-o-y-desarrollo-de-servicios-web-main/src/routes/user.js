import express from "express";
import User from "../models/user.js";

const router = express.Router();

router.get("/login", async (req, res) => {
  const { name, password } = req.body;

  try {
    // Buscar el usuario
    const user = await User.findOne({ name });

    // si el Usuario no está registrado
    if (!user) {
      return res.status(400).json({ message: "Error en la autenticación" });
    }

    // Comparar la contraseña
    const isCorrect = password === user.password;

    if (!isCorrect) {
      return res.status(400).json({ message: "Error en la autenticación" });
    }

    // Mensaje de confirmación
    res.json({ message: "Autenticación satisfactoria" });
  } catch (error) {
    res.json(error);
  }
});

export default router;
