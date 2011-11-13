import UnityEngine

class PlayerSpawner (MonoBehaviour): 

	public PlayerPrefab as GameObject

	def Spawn():
		if LivesKeeper.Lives == 0:
			GameOverController.GameOver = true
			return
			
		LivesKeeper.Lives--
		
		player as GameObject = Instantiate(PlayerPrefab, Vector3(0,0,0), Quaternion.identity)
		playDeath as PlayerDeath = player.GetComponent[of PlayerDeath]()
		
		playDeath.Died += Spawn