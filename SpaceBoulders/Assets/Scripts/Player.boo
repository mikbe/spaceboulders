import UnityEngine

class Player (MonoBehaviour): 

	public MaxSpeed = 10.0f
	public Acceleration = 10.0f

	def Start ():
		pass
	
	def Update ():
		rigidbody.AddRelativeForce(Vector3.up * Acceleration) if Input.GetKey("up")
								
		transform.Rotate(Vector3.back * 180 * Time.deltaTime * Input.GetAxisRaw("Horizontal"))
		
		transform.position.y = -10.5f if transform.position.y > 10.5f
		transform.position.y = 10.5f if transform.position.y < -10.5f
		
		transform.position.x = -14.0f if transform.position.x > 14.0f
		transform.position.x = 14.0f if transform.position.x < -14.0f
		
		Debug.Log("pos: $(transform.position)")
		