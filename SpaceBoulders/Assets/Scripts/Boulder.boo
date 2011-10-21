import UnityEngine

class Boulder (MonoBehaviour): 

	public Speed as single
	public MinSpeed = 3.0f
	public MaxSpeed = 6.0f


	def Start ():
		Speed = Random.Range(MinSpeed, MaxSpeed)
		rigidbody.velocity = transform.up * Speed
		
	def Update ():
		rigidbody.velocity = rigidbody.velocity.normalized * Speed
