extends Node3D

var interface: XRInterface

# Called when the node enters the scene tree for the first time.
func _ready():
	interface = XRServer.find_interface("OpenXR")
	if interface and interface.is_initialized():

		# Turn off v-sync because the headset performs its own sync and we don't want to limit it by the monitor
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)

		get_viewport().use_xr = true

		enablePassthrough()
	else:
		print('OpenXR not initialized, please check if your headset is connected')


func enablePassthrough() -> bool:
	var xr_interface: XRInterface = XRServer.primary_interface

	if xr_interface and xr_interface.is_passthrough_supported():
		if !xr_interface.start_passthrough():
			return false
	else:
		var modes = xr_interface.get_supported_environment_blend_modes()
		if xr_interface.XR_ENV_BLEND_MODE_ALPHA_BLEND in modes:
			xr_interface.set_environment_blend_mode(XRInterface.XR_ENV_BLEND_MODE_ALPHA_BLEND)
		else:
			return false

	get_viewport().transparent_bg = true
	return true
