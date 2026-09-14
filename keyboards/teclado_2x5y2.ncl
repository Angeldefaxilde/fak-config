let fak = import "../fak.ncl" in

{
  # 1. Configuración del chip (Tu CH552G)
  mcu = "ch552",

  # 2. Definición de la Matriz Física (Filas y Columnas)
  # NOTA: Si al probarlo las teclas no responden, habrá que cambiar estos pines por los reales.
  matrix = {
    rows = ["P1.1", "P1.4"],
    cols = ["P1.5", "P1.6", "P1.7", "P3.0", "P3.1"],
  },

  # 3. Configuración de las 2 Perillas Rotativas (Encoders)
  encoders = [
    { pad_a = "P3.2", pad_b = "P3.3" }, # Perilla 1
    { pad_a = "P3.4", pad_b = "P3.5" }  # Perilla 2
  ],

  # 4. Asignación de Funciones a las Teclas (Keymap)
  layers = [
    [
      # Fila 1 (Botones 1 al 5)
      ["KeyA", "KeyB", "KeyC", "KeyD", "KeyE"],
      # Fila 2 (Botones 6 al 10) - ¡Aquí tienes Ctrl y Shift funcionando de forma continua!
      ["LCtrl", "LShift", "KeyF", "KeyG", "KeyH"],
    ]
  ],

  # 5. Asignación de Funciones a las Perillas (Giro izquierda, Giro derecha, Pulsación)
  encoder_layers = [
    [
      # Perilla 1: Baja volumen, Sube volumen, Silencia (Pulsación asignada al Botón 11)
      { left = "VolumeDown", right = "VolumeUp", press = "Mute" },
      # Perilla 2: Flecha Izquierda, Flecha Derecha, Intro (Pulsación asignada al Botón 12)
      { left = "Left", right = "Right", press = "Enter" }
    ]
  ],
}
