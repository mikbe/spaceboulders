import UnityEngine

class BoulderGenerator (MonoBehaviour): 

	_minBoulderCount = 5
	_maxBoulderCount = 8

	public boulder as Boulder
	
	def Start ():
		MakeBoulders(Random.Range(_minBoulderCount, _maxBoulderCount))
		
	def Update ():
		pass

	def MakeBoulders(count as int):
		for i in range(1, count):
			x = Random.Range(Scene.MinVertical, Scene.MaxVertical)
			y = Random.Range(Scene.MinHorizontal, Scene.MinHorizontal)
			rotation = Quaternion.Euler(0, 0, Random.Range(0, 359))
			Instantiate(boulder, Vector3(x,y,0), rotation)
