import UnityEngine

class LaserWeapon (MonoBehaviour): 

	_maxBeams = 6
	_currentBeams = 0

	public LaserBeamPrefab as LaserBeam

	def Start ():
		pass
	
	def Update ():
		_fire
		
	def _fire():
		
		return unless _currentBeams < _maxBeams and Input.GetKeyDown("space")
		
		_currentBeams++
		
		LaserBeamPrefab.transform.position = transform.position
		LaserBeamPrefab.transform.rotation = transform.rotation
		
		offset = (transform.localScale.y / 2.0f) + (LaserBeamPrefab.transform.localScale.y / 2.0f)
		LaserBeamPrefab.transform.Translate(Vector3.up * offset)
		
		laserBeam as LaserBeam = Instantiate(LaserBeamPrefab)
		laserBeam.BeamDied += { self._currentBeams-- }
