extends RigidBody3D
class_name CarBody

@export var FlSuspension : Suspension
@export var FrSuspension : Suspension
@export var RlSuspension : Suspension
@export var RrSuspension : Suspension

var SuspensionList : Array[Suspension]

func _ready() -> void:
	SuspensionList = [FlSuspension, FrSuspension, RlSuspension, RrSuspension]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _physics_process(delta: float) -> void:
	for Sus in SuspensionList:
		Sus.force_raycast_update()
