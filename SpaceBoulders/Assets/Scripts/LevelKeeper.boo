import UnityEngine

class LevelKeeper (MonoBehaviour): 


	public static Level = 1
	
	def Start ():
		pass
	
	def Update ():
		pass

	def OnGUI():
		scoreLabel = GetComponent[of GUIText]()
		scoreLabel.text = "Level: $(LevelKeeper.Level)"

