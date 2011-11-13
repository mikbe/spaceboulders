import UnityEngine

class GameController (MonoBehaviour): 

	_startLives = 3
	_playerSpawner as PlayerSpawner
	_boulderGenerator as BoulderGenerator 
 
	def Start ():
		_playerSpawner = GetComponent[of PlayerSpawner]()
		_boulderGenerator = GetComponent[of BoulderGenerator]()
		
	def Restart():
		LivesKeeper.Lives = _startLives
		GameOverController.GameOver = false
		
		_playerSpawner.Spawn()
		_boulderGenerator.Restart()
		_boulderGenerator.CreateBouldersForLevel(1)
		
		
	def Update ():
		Restart() if Input.GetKeyDown("return") and GameOverController.GameOver
