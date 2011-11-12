import UnityEngine

class BoulderGenerator (MonoBehaviour): 

	_minBoulderCount = 5
	_maxBoulderCount = 8

	public BoulderPrefab as Boulder
	
	
	_boulderSize = [{"scale" : 3, "count" : 1}, {"scale" : 2, "count" : 2}, {"scale" : 1, "count" : 4}]
	_defaultBoulderSize = 0
	
	def Start ():
		MakeBoulders(Random.Range(_minBoulderCount, _maxBoulderCount))
		
	def Update ():
		pass

	def MakeBoulders(count as int):
		for i in range(0, count):
			x = Random.Range(Scene.MinVertical, Scene.MaxVertical)
			y = Random.Range(Scene.MinHorizontal, Scene.MinHorizontal)
			_makeBoulder(x, y, _defaultBoulderSize)
			
			
	def _makeSmallerBoulders(boulder as Boulder):
		new_size = boulder.Size + 1
		
		return if new_size == _boulderSize.Count
		
		for i in range(0, (_boulderSize[new_size] as Hash)["count"]):
			_makeBoulder(boulder.X, boulder.Y, new_size)
		

	def _makeBoulder(x as single, y as single, size as single):
		rotation = Quaternion.Euler(0, 0, Random.Range(0, 359))

		boulder as Boulder = Instantiate(BoulderPrefab, Vector3(x,y,0), rotation)
		boulder.Size = size
		scale = (_boulderSize[size] as Hash)["scale"]
		boulder.transform.localScale = Vector3(scale, scale, scale)
		
		boulder.BoulderHit += _makeSmallerBoulders

