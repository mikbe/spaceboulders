import UnityEngine

class PlayerDeath (MonoBehaviour): 

	callable DeathEvent()
	event Died as DeathEvent

	def OnTriggerEnter(collider as Collider):
		return if collider.tag == "Beam"
		Died
		Destroy(gameObject)
		
