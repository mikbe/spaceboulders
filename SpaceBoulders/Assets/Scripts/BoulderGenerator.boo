import UnityEngine

class BoulderGenerator (MonoBehaviour): 

	public BoulderPrefab as Boulder
	
	_boulderSpec = [
		{"scale" : 3, "count" : 1, "value" : 25}, 
		{"scale" : 2, "count" : 2, "value" : 50}, 
		{"scale" : 1, "count" : 4, "value" : 25}
	]
	_defaultBoulderSize = 0

	def CreateBouldersForLevel(level as int):
		MakeBoulders(2 + level)
				
	def Update ():
		pass

	def MakeBoulders(count as int):
		for i in range(0, count):
			x = Random.Range(Scene.MinVertical, Scene.MaxVertical)
			y = Random.Range(Scene.MinHorizontal, Scene.MinHorizontal)
			_makeBoulder(x, y, _defaultBoulderSize)

	def Restart():
		for boulder in GameObject.FindGameObjectsWithTag("Boulder"):
			Destroy(boulder)

	def _boulderHit(boulder as Boulder):
		ScoreKeeper.Score += boulder.ScoreValue
		_makeSmallerBoulders(boulder)


	def _makeSmallerBoulders(boulder as Boulder):
		new_size = boulder.Size + 1
		
		return if new_size == _boulderSpec.Count
		
		for i in range(0, (_boulderSpec[new_size] as Hash)["count"]):
			_makeBoulder(boulder.X, boulder.Y, new_size)


	def _makeBoulder(x as single, y as single, size as single):
		rotation = Quaternion.Euler(0, 0, Random.Range(0, 359))

		boulder as Boulder = Instantiate(BoulderPrefab, Vector3(x,y,0), rotation)
		boulder.Size = size
		
		spec  as Hash = _boulderSpec[size]
		boulder.ScoreValue = spec["value"]
		scale = spec["scale"]
		
		boulder.transform.localScale = Vector3(scale, scale, scale)
		
		boulder.BoulderHit += _boulderHit
		
		
		                                                                                                       
		