type 
    v2 = ref object
        x*: int
        y*: int

    unit_direction = enum 
        right,
        left,
        up,
        down


# Overloaded operators
proc `+=` (lhs: v2, rhs: v2) =
    lhs.x += rhs.x
    lhs.y += rhs.y
proc `-=` (lhs: v2, rhs: v2) = 
    lhs.x -= rhs.x
    lhs.y -= rhs.y

proc `+` (a: v2, b: v2): v2 =
    return v2(x: a.x + b.x, y: a.y + b.y)

proc `-` (a: v2, b: v2): v2 =
    return v2(x: a.x - b.x, y: a.y - b.y)

proc `*` (a: v2, b: v2): v2 =
    return v2(x: a.x * b.x, y: a.y * b.y)

proc `==` (a: v2, b: v2): bool = 
    return a.x == b.x and a.y == b.y

# common vectors
proc zero(): v2 =
    var zeroed: v2
    zeroed = v2(x:0, y:0)
    return zeroed

proc unit(dir:unit_direction): v2 =
    case dir:
    of right: return v2(x:1, y:0)
    of left: return v2(x: -1, y:0)
    of up: return v2(x:0, y:1)
    of down: return v2(x:0, y: -1)
