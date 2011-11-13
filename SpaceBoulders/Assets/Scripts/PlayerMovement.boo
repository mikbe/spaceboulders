import UnityEngine

class PlayerMovement(MonoBehaviour): 

	_maxSpeed = 10.0f
	_acceleration = 10.0f
	_rotateSpeed = 180.0f
	
	def Start ():
		pass
	
	def Update():
		pass
		
	def FixedUpdate():
		rigidbody.AddRelativeForce(Vector3.up * _acceleration) if Input.GetKey('up')
		rigidbody.velocity = transform.up * _maxSpeed if rigidbody.velocity.magnitude > _maxSpeed
		
		transform.Rotate(Vector3.back * _rotateSpeed * Time.deltaTime * Input.GetAxisRaw('Horizontal'))

