import UnityEngine

class PlayerSpawner (MonoBehaviour): 

	public PlayerPrefab as GameObject

	_player as GameObject

	def Spawn():
		if LivesKeeper.Lives == 0:
			GameOverController.GameOver = true
			return
		
		LivesKeeper.Lives--
		
		_player = Instantiate(PlayerPrefab, Vector3(0,0,0), Quaternion.identity)
		SafePlayer()
		
		playDeath as PlayerDeath = _player.GetComponent[of PlayerDeath]()
		playDeath.Died += Spawn

	def SafePlayer():
		_player.AddComponent(SafeSpawn)
