import UnityEngine

class ScoreKeeper (MonoBehaviour): 

	public static Score = 0

	def Start ():
		pass
		
	def Update ():
		pass

	def OnGUI():
		scoreLabel = GetComponent[of GUIText]()
		scoreLabel.text = "Score: $(ScoreKeeper.Score)"
