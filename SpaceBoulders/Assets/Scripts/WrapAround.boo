import UnityEngine

class WrapAround (MonoBehaviour): 

	def Update ():
		transform.position.y = -10.5f if transform.position.y > 10.5f
		transform.position.y = 10.5f if transform.position.y < -10.5f
		
		transform.position.x = -14.0f if transform.position.x > 14.0f
		transform.position.x = 14.0f if transform.position.x < -14.0f
