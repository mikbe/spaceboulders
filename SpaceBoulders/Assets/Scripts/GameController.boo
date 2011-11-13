import UnityEngine

class GameController (MonoBehaviour): 

	_startLives = 3
	_playerSpawner as PlayerSpawner
	_boulderGenerator as BoulderGenerator 
 
	def Start ():
		_playerSpawner = GetComponent[of PlayerSpawner]()
		_boulderGenerator = GetComponent[of BoulderGenerator]()
		_boulderGenerator.CreateBouldersForLevel(6)
		_boulderGenerator.BouldersGone += _nextLevel

	def _nextLevel():
		LevelKeeper.Level++
		_playerSpawner.SafePlayer()
		
		_boulderGenerator.CreateBouldersForLevel(LevelKeeper.Level)
								
	def Restart():
		LivesKeeper.Lives = _startLives
		GameOverController.GameOver = false
		LevelKeeper.Level = 1
		
		_playerSpawner.Spawn()
		_boulderGenerator.Restart()
		_boulderGenerator.CreateBouldersForLevel(1)
		
		
	def Update ():
		Restart() if Input.GetKeyDown("return") and GameOverController.GameOver
