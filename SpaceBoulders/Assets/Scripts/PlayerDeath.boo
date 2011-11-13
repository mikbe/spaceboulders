import UnityEngine

class PlayerDeath (MonoBehaviour): 

	callable DeathEvent()
	event Died as DeathEvent

	def OnTriggerEnter(collider as Collider):
		Died
		Destroy(gameObject)
		
