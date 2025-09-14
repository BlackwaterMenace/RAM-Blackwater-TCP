extends Node

# ? Adds 3 cosmetics for Aphid, Router, and Tachi, based on Sona, Umi, and Lizzy respectively.

const MOD_DIR := "Blackwater-TCP"
const LOG_NAME := "Blackwater-TCP:Main"

func _init() -> void:
	ModLoaderLog.info("Init", LOG_NAME)

func _ready() -> void:
	ModLoaderLog.info("Ready", LOG_NAME)
	add_skins()

func add_skins() -> void:
	VRAM_SkinsManager.register_skin(
		Enemy.EnemyType.FLAME,
		"Blackwater_TCP_Sona",
		"Sonaphid",
		["I can fix you.", "I know what's best for you.", "It's time for you to obey."].pick_random(),
		["Close your eyes...", "Stop resisting...", "Think, feel, love, believe, behave, dream, say and create just as I want you to."].pick_random(),
		"res://mods-unpacked/Blackwater-TCP/Art/Characters/FlamebotRAM/Blackwater_TCP_Sonaphid_Icon.png",
		Color.html("febbc2"),
		"res://mods-unpacked/Blackwater-TCP/Art/Characters/FlamebotRAM/Blackwater_TCP_Sonaphid_Skin.png",
		"res://mods-unpacked/Blackwater-TCP/Art/Characters/FlamebotRAM/Blackwater_TCP_Sonaphid_Nozzle.png",
	)
	ModLoaderLog.info("Added Sonaphid", LOG_NAME)
	
	VRAM_SkinsManager.register_skin(
		Enemy.EnemyType.WHEEL,
		"Blackwater_TCP_UM1",
		"UM1",
		"Surprisingly deep.",
		"Write an Umriss ending.",
		"res://mods-unpacked/Blackwater-TCP/Art/Characters/WheelbotRAM/Blackwater_TCP_UM1_Icon.png",
		Color.html("7aa5b1"),
		"res://mods-unpacked/Blackwater-TCP/Art/Characters/WheelbotRAM/Blackwater_TCP_UM1_Skin.png",
	)
	ModLoaderLog.info("Added UM1", LOG_NAME)
	
	VRAM_SkinsManager.register_skin(
		Enemy.EnemyType.SABER,
		"Blackwater_TCP_AZPT",
		"AZPT",
		"OTP",
		"Write an Azzypants fic.",
		"res://mods-unpacked/Blackwater-TCP/Art/Characters/SaberbotRAM/Blackwater_TCP_Lizzachi_Icon.png",
		Color.html("fde3c0"),
		"res://mods-unpacked/Blackwater-TCP/Art/Characters/SaberbotRAM/Blackwater_TCP_Lizzachi_Skin.png",
	)
	ModLoaderLog.info("Added AZPTachi", LOG_NAME)
