import sdl2
include entity
const
    max_renderables = 10

type
    renderer = ref object
        renderobj*: RendererPtr
        renderables*: seq[entity]
        active*: bool

proc add_renderable(self: renderer, renderable: entity) =
    self.renderables.add(renderable)

proc remove_renderable(self: renderer, id: uint8) = 
    for i in 0..<self.renderables.len:
        if self.renderables[i].id == id:
            self.renderables[i] = nil

proc render(self: renderer) = 
    for i in 0..<self.renderables.len:
        self.renderables[i].draw()
