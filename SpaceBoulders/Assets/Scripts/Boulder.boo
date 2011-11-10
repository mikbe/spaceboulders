import UnityEngine

class Boulder (MonoBehaviour): 

	_speed as single
	_minSpeed = 3.0f
	_maxSpeed = 6.0f

	callable BoulderHitEvent()
	event BoulderHit as BoulderHitEvent

	def Start ():
		_speed = Random.Range(_minSpeed, _maxSpeed)
		rigidbody.velocity = transform.up * _speed
		
	def Update ():
		pass
				
	def FixedUpdate ():
		rigidbody.velocity = rigidbody.velocity.normalized * _speed
		
	def OnTriggerEnter(collider as Collider):
		BoulderHit
		Destroy(gameObject)
