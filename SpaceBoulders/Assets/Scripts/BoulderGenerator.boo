import UnityEngine

class BoulderGenerator (MonoBehaviour): 

	public MinBoulderCount = 5
	public MaxBoulderCount = 8

	public boulder as Boulder

	def Start ():
		for i in range(1, Random.Range(MinBoulderCount, MaxBoulderCount)):
			x = Random.Range(Scene.MinVertical, Scene.MaxVertical)
			y = Random.Range(Scene.MinHorizontal, Scene.MinHorizontal)
			rotation = Quaternion.Euler(0, 0, Random.Range(0, 359))
			Instantiate(boulder, Vector3(x,y,0), rotation)
	
	def Update ():
		pass
