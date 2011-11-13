import UnityEngine

class LivesKeeper (MonoBehaviour): 

	public static Lives = 0

	def Start ():
		pass
	
	def Update ():
		pass

	def OnGUI():
		scoreLabel = GetComponent[of GUIText]()
		scoreLabel.text = "Lives: $(LivesKeeper.Lives)"

