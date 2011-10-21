import UnityEngine

class WrapAround (MonoBehaviour): 

	def Update ():
		transform.position.y = Scene.MinVertical if transform.position.y > Scene.MaxVertical
		transform.position.y = Scene.MaxVertical if transform.position.y < Scene.MinVertical
		
		transform.position.x = Scene.MinHorizontal if transform.position.x > Scene.MaxHorizontal
		transform.position.x = Scene.MaxHorizontal if transform.position.x < Scene.MinHorizontal
