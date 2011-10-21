import UnityEngine

class Player (MonoBehaviour): 

	public MaxSpeed = 10.0f
	public Acceleration = 10.0f

	def Start ():
		pass
	
	def Update ():
		rigidbody.AddRelativeForce(Vector3.up * Acceleration) if Input.GetKey("up")
								
		transform.Rotate(Vector3.back * 180 * Time.deltaTime * Input.GetAxisRaw("Horizontal"))
				
		Debug.Log("pos: $(transform.position)")
		