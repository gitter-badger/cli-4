type
  Catering * = ref object of RootObj
    healthyFood: float
    junkFood: float
    soda: float
    water: float

proc newCatering * (healthyFood: float, junkFood: float, soda: float, water: float): Catering =
  result = new Catering

  result.healthyFood = healthyFood
  result.junkFood    = junkFood
  result.soda        = soda
  result.water       = water

proc healthyFood * (c: Catering) : float {.inline.} =
    result = c.healthyFood

proc junkFood * (c: Catering) : float {.inline.} =
  result = c.junkFood

proc soda * (c: Catering) : float {.inline.} =
  result = c.soda

proc water * (c: Catering) : float {.inline.} =
  result = c.water

proc `healthyFood =` * (c: Catering, healthyFood: float) {.inline.} =
  c.healthyFood = healthyFood

proc `junkFood =` * (c: Catering, junkFood: float) {.inline.} =
  c.junkFood = junkFood

proc `soda =` * (c: Catering, soda: float) {.inline.} =
  c.soda = soda

proc `water =` * (c: Catering, water: float) {.inline.} =
  c.water = water
