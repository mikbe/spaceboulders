import UnityEngine

class SafeSpawn (MonoBehaviour): 

	_blinkRate = 0.25f
	_spawnTime = 2.5f
	
	_stopAt = 0.0f
	_nextBlink = 0.0f

	def Start ():
		_stopAt = Time.time + _spawnTime
		collider.enabled = false
		
	def Update ():
		_setBlink()
		if Time.time > _stopAt:
			collider.enabled = true
			renderer.enabled = true
			Destroy(self)
			
			
	def _setBlink():
		if Time.time > _nextBlink:
			_nextBlink = Time.time + _blinkRate
			renderer.enabled = not renderer.enabled

			
