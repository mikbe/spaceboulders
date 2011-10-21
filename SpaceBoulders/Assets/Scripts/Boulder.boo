import UnityEngine

class Boulder (MonoBehaviour): 

	public Speed as single
	public MinSpeed = 3.0f
	public MaxSpeed = 6.0f


	def Start ():
		Speed = Random.Range(MinSpeed, MaxSpeed)

		
	def Update ():
		transform.Translate(Vector3.up * Speed * Time.deltaTime)
