import UnityEngine

class Boulder (MonoBehaviour): 

	_speed as single
	_minSpeed = 3.0f
	_maxSpeed = 6.0f
			
	callable BoulderHitEvent(boulder as Boulder)
	event BoulderHit as BoulderHitEvent

	public Size as single
	
	public X as single:
		get:
			return transform.position.x
			
	public Y as single:
		get:
			return transform.position.y

	def Start ():
		_speed = Random.Range(_minSpeed, _maxSpeed)
		rigidbody.velocity = transform.up * _speed
		
	def Update ():
		pass
				
	def FixedUpdate ():
		rigidbody.velocity = rigidbody.velocity.normalized * _speed

	def OnTriggerEnter(collider as Collider):
		#Debug.Log("boulder collide: $(collider.tag)")	
		BoulderHit(self)
		Destroy(gameObject)



