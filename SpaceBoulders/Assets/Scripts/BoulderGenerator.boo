import UnityEngine

class BoulderGenerator (MonoBehaviour): 

	public MinBoulderCount = 10
	public MaxBoulderCount = 18

	public boulder as Boulder

	def Start ():
		for i in range(1, Random.Range(MinBoulderCount, MaxBoulderCount)):
			x = Random.Range(-14.0f, 14.0f)
			y = Random.Range(-10.0f, 10.0f)
			rotation = Quaternion.Euler(0, 0, Random.Range(0, 359))
			Instantiate(boulder, Vector3(x,y,0), rotation)
	
	def Update ():
		pass
