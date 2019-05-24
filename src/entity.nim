import sdl2
include math
type
    entity = ref object
        name*: string
        id*: uint8
        pos*: v2

proc `==`(self: entity, other: entity): bool =
    return self.name == other.name and self.id == other.id

proc `$`(ent: entity): string =
    return "Entity : " & ent.name

proc update(obj: entity, dT: float) =
    echo "Updating..."

proc draw(obj: entity) = 
    echo "Drawing..."

