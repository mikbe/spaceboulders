import UnityEngine

class LaserBeam (MonoBehaviour): 

	_speed = 20.0f
	_timeToLive = 0.85f
	_expireTime = 0.0f

	callable BeamDiedEvent()
	event BeamDied as BeamDiedEvent

	def Start ():
		_expireTime = Time.time + _timeToLive
		Update
		
	def Update ():
		_killBeam() if Time.time > _expireTime
		transform.Translate(Vector3.up * _speed * Time.deltaTime)

	def OnTriggerEnter(collider as Collider):
		#Debug.Log("beam collide: $(collider.tag)")
		_killBeam
		
	def _killBeam():
		BeamDied
		Destroy(gameObject)
		
