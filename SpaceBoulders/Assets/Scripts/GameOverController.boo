import UnityEngine

class GameOverController (MonoBehaviour): 

	public static GameOver = true

	_gameOverLabel as GUIText

	def Start():
		_gameOverLabel = GetComponent[of GUIText]()


	def OnGUI():
		
		if GameOverController.GameOver:
			_gameOverLabel.text = "Game Over\npress enter to start new game"

		_gameOverLabel.enabled = GameOverController.GameOver
