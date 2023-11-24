extends RigidBody3D
class_name Ball

@export var _texture: Texture2D

@onready var ball_mesh = $BallMesh


func _ready():
	var new_material = StandardMaterial3D.new()
	new_material.albedo_texture = _texture
	ball_mesh.material_override = new_material
	
	# version precedente => problème, la ressource est partagée entre toutes les balles
	# peu importe les texture dans la variable d'export, une seule serait utilisée
	#var ball_material = ball_mesh.get_active_material(0) as StandardMaterial3D
	#ball_material.albedo_texture = _texture

# https://www.youtube.com/watch?v=k0vZbIclXjE&t=3910s
