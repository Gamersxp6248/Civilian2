// Channels
//	CHAN_AUTO		= 0,
//	CHAN_WEAPON		= 1,
//	CHAN_VOICE		= 2,
//	CHAN_ITEM		= 3,
//	CHAN_BODY		= 4,
//	CHAN_STREAM		= 5,		// allocate stream channel from the static or dynamic area
//	CHAN_STATIC		= 6,		// allocate channel from the static area 
// these can be set with "channel" "2" or "channel" "chan_voice"

//-----------------------------------------------------------------------------
// common attenuation values
//-----------------------------------------------------------------------------

// DON'T USE THESE - USE SNDLVL_ INSTEAD!!!
//	ATTN_NONE		0.0f	
//	ATTN_NORM		0.8f
//	ATTN_IDLE		2.0f
//	ATTN_STATIC		1.25f 
//	ATTN_RICOCHET	1.5f
//	ATTN_GUNFIRE	0.27f

//	SNDLVL_NONE		= 0,
//	SNDLVL_25dB		= 25,
//	SNDLVL_30dB		= 30,
//	SNDLVL_35dB		= 35,
//	SNDLVL_40dB		= 40,
//	SNDLVL_45dB		= 45,
//	SNDLVL_50dB		= 50,	// 3.9
//	SNDLVL_55dB		= 55,	// 3.0
//	SNDLVL_IDLE		= 60,	// 2.0
//	SNDLVL_TALKING	= 60,	// 2.0
//	SNDLVL_60dB		= 60,	// 2.0
//	SNDLVL_65dB		= 65,	// 1.5
//	SNDLVL_STATIC	= 66,	// 1.25
//	SNDLVL_70dB		= 70,	// 1.0
//	SNDLVL_NORM		= 75,
//	SNDLVL_75dB		= 75,	// 0.8
//	SNDLVL_80dB		= 80,	// 0.7
//	SNDLVL_85dB		= 85,	// 0.6
//	SNDLVL_90dB		= 90,	// 0.5
//	SNDLVL_95dB		= 95,
//	SNDLVL_100dB	= 100,	// 0.4
//	SNDLVL_105dB	= 105,
//	SNDLVL_120dB	= 120,
//	SNDLVL_130dB	= 130,
//	SNDLVL_GUNFIRE	= 140,	// 0.27
//	SNDLVL_140dB	= 140,	// 0.2
//	SNDLVL_150dB	= 150,	// 0.2

// Physics Sounds
//
//	NOTE:  CHAN_BODY is used by sounds in many cases, but the code
//   uses CHAN_STATIC in others, so I didn't specify a channel here
//  Volume is determined procedurally by the physics code
//

// *****************
// SURFACE MATERIALS


"Default.FlareImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"physics/concrete/concrete_impact_flare1.wav"
		"wave"		"physics/concrete/concrete_impact_flare2.wav"
		"wave"		"physics/concrete/concrete_impact_flare3.wav"
		"wave"		"physics/concrete/concrete_impact_flare4.wav"
	}
}

"Player.Swim"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.2"
	"pitch"		"95,105"
	"soundlevel"	"SNDLVL_NORM"

	"rndwave"
	{
		"wave"		"player/footsteps/wade1.wav"
		"wave"		"player/footsteps/wade2.wav"
		"wave"		"player/footsteps/wade3.wav"
		"wave"		"player/footsteps/wade4.wav"
	}
}

"Player.Wade"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.2"
	"pitch"		"95,105"
	"soundlevel"  "SNDLVL_75dB"

	"rndwave"
	{
		"wave"	"player/footsteps/wade1.wav"
		"wave"	"player/footsteps/wade2.wav"
		"wave"	"player/footsteps/wade3.wav"
		"wave"	"player/footsteps/wade4.wav"
	}
}

"Default.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"pitch"			"95,105"
	"volume"			".72"
	"rndwave"
	{
		"wave"		"player/footsteps/concrete1.wav"
		"wave"		"player/footsteps/concrete3.wav"
	}
}

"Default.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"pitch"			"95,105"
	"volume"			".72"
	"rndwave"
	{
		"wave"		"player/footsteps/concrete2.wav"
		"wave"		"player/footsteps/concrete4.wav"
	}
}

"Default.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"pitch"			"PITCH_NORM"
	"volume"			"0.7"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_hard1.wav"
		"wave"		"physics/plastic/plastic_box_impact_hard2.wav"
		"wave"		"physics/plastic/plastic_box_impact_hard3.wav"
	}
}

"Default.ScrapeSmooth"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.4"
	"pitch"		"96,104"
	"wave"		"physics/plastic/plastic_box_scrape_smooth_loop2.wav"
}

"Default.ScrapeRough"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/plastic/plastic_box_scrape_smooth_loop1.wav"
}

"Default.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"pitch"		"95,100"
	"volume"		"0.6"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft2.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft4.wav"
	}
}

"Default.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"pitch"		"95,100"
	"volume"		"0.6"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_hard1.wav"
		"wave"		"physics/plastic/plastic_box_impact_hard2.wav"
		"wave"		"physics/plastic/plastic_box_impact_hard3.wav"
	}
}

"SolidMetal.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"pitch"			"95,105"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/metal1.wav"
		"wave"		"player/footsteps/metal3.wav"
	}
}

"SolidMetal.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"pitch"			"95,105"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/metal2.wav"
		"wave"		"player/footsteps/metal4.wav"
	}
}

"SolidMetal.ImpactHard"
{
	"soundlevel"		"SNDLVL_70dB"
	"pitch"		"95,100"
	"volume"		"0.4"
	"rndwave"
	{
		"wave"		"physics/metal/metal_solid_impact_hard1.wav"
		"wave"		"physics/metal/metal_solid_impact_hard4.wav"
		"wave"		"physics/metal/metal_solid_impact_hard5.wav"
	}
}


"SolidMetal.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"pitch"		"95,100"
	"volume"		"0.6"
	"rndwave"
	{
		"wave"		"physics/metal/metal_solid_impact_soft1.wav"
		"wave"		"physics/metal/metal_solid_impact_soft2.wav"
		"wave"		"physics/metal/metal_solid_impact_soft3.wav"
	}
}

"SolidMetal.ScrapeRough"
{
	"soundlevel"		"SNDLVL_70dB"
	"pitch"		"95,105"
	"volume"		"0.5"
	"wave"		"physics/metal/metal_box_scrape_rough_loop1.wav"
}

"SolidMetal.ScrapeSmooth"
{
	"soundlevel"		"SNDLVL_70dB"
	"pitch"		"95,105"
	"volume"		"0.5"
	"wave"		"physics/metal/metal_box_scrape_smooth_loop1.wav"
}

"SolidMetal.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"pitch"			"PITCH_NORM"
	"volume"		"0.7"
	"rndwave"
	{
		"wave"		"physics/metal/metal_solid_impact_bullet1.wav"
		"wave"		"physics/metal/metal_solid_impact_bullet2.wav"
		"wave"		"physics/metal/metal_solid_impact_bullet3.wav"
		"wave"		"physics/metal/metal_solid_impact_bullet4.wav"
	}
}

"SolidMetal.Strain"
{
	"soundlevel"		"SNDLVL_75dB"
	"pitch"			"PITCH_NORM"
	"volume"		"0.7"
	"rndwave"
	{
		"wave"		"physics/metal/metal_solid_strain1.wav"
		"wave"		"physics/metal/metal_solid_strain4.wav"
		"wave"		"physics/metal/metal_solid_strain5.wav"
	}
}

"Dirt.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"pitch"			"95,105"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/dirt1.wav"
		"wave"		"player/footsteps/dirt3.wav"
	}
}

"Dirt.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"pitch"			"95,105"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		"player/footsteps/dirt2.wav"
		"wave"		"player/footsteps/dirt4.wav"
	}
}

"Dirt.Impact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"wave"		"physics/surfaces/sand_impact_bullet2.wav"
}

"Dirt.Scrape"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"		"95,100"
	"wave"		"physics/cardboard/cardboard_box_scrape_rough_loop1.wav"
}

"Dirt.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"physics/surfaces/sand_impact_bullet1.wav"
		"wave"		"physics/surfaces/sand_impact_bullet2.wav"
		"wave"		"physics/surfaces/sand_impact_bullet3.wav"
		"wave"		"physics/surfaces/sand_impact_bullet4.wav"
	}
}

"Mud.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"0.6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/mud1.wav"
		"wave"		"player/footsteps/mud3.wav"
	}
}

"Mud.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"0.6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/mud2.wav"
		"wave"		"player/footsteps/mud4.wav"
	}
}

"SlipperySlime.StepLeft"
{
	"soundlevel"	"SNDLVL_96dB"
	"volume"		"0.6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/mud1.wav"
		"wave"		"player/footsteps/mud3.wav"
	}
}

"SlipperySlime.StepRight"
{
	"soundlevel"	"SNDLVL_96dB"
	"volume"		"0.6"
	"pitch"			"90,105"
	"rndwave"
	{
		"wave"		"player/footsteps/mud2.wav"
		"wave"		"player/footsteps/mud4.wav"
	}
}

"Grass.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/grass1.wav"
		"wave"		"player/footsteps/grass3.wav"
	}
}

"Grass.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/grass2.wav"
		"wave"		"player/footsteps/grass4.wav"
	}
}

"MetalGrate.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/metalgrate1.wav"
		"wave"		"player/footsteps/metalgrate3.wav"
	}
}

"MetalGrate.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/metalgrate2.wav"
		"wave"		"player/footsteps/metalgrate4.wav"
	}
}

"MetalGrate.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"95,100"
	"rndwave"
	{
		"wave"		"physics/metal/metal_grate_impact_hard1.wav"
		"wave"		"physics/metal/metal_grate_impact_hard2.wav"
		"wave"		"physics/metal/metal_grate_impact_hard3.wav"
	}
}

"MetalGrate.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.5"
	"pitch"		"95,100"
	"rndwave"
	{
		"wave"		"physics/metal/metal_grate_impact_soft1.wav"
		"wave"		"physics/metal/metal_grate_impact_soft2.wav"
		"wave"		"physics/metal/metal_grate_impact_soft3.wav"
	}
}

"MetalGrate.ScrapeRough"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"		"95,100"
	"wave"		"physics/metal/metal_box_scrape_rough_loop1.wav"
}

"MetalGrate.ScrapeSmooth"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"		"95,100"
	"wave"		"physics/metal/metal_box_scrape_smooth_loop1.wav"
}

"MetalGrate.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"physics/metal/metal_sheet_impact_bullet1.wav"
		"wave"		"physics/metal/metal_sheet_impact_bullet2.wav"
		"wave"		"physics/metal/metal_solid_impact_bullet2.wav"
	}
}

"MetalVent.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/duct2.wav"
		"wave"		"player/footsteps/duct4.wav"
	}
}

"MetalVent.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/duct1.wav"
		"wave"		"player/footsteps/duct3.wav"
	}
}

"MetalVent.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"		"physics/metal/metal_sheet_impact_hard6.wav"
		"wave"		"physics/metal/metal_sheet_impact_hard7.wav"
		"wave"		"physics/metal/metal_sheet_impact_hard8.wav"
	}
}


"Tile.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tile1.wav"
		"wave"		"player/footsteps/tile3.wav"
	}
}

"Tile.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/tile2.wav"
		"wave"		"player/footsteps/tile4.wav"
	}
}

"Tile.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/surfaces/tile_impact_bullet1.wav"
		"wave"	"physics/surfaces/tile_impact_bullet2.wav"
		"wave"	"physics/surfaces/tile_impact_bullet3.wav"
		"wave"	"physics/surfaces/tile_impact_bullet4.wav"	
	}	
}



"Water.StepLeft"
{
	"soundlevel"		"SNDLVL_91dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/slosh2.wav"
		"wave"		"player/footsteps/slosh4.wav"
	}
}

"Water.StepRight"
{
	"soundlevel"		"SNDLVL_91dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/slosh1.wav"
		"wave"		"player/footsteps/slosh3.wav"
	}
}

"Water.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"player/footsteps/slosh1.wav"
		"wave"	"player/footsteps/slosh3.wav"
		"wave"	"player/footsteps/slosh2.wav"
		"wave"	"player/footsteps/slosh4.wav"
	}
}

"Underwater.BulletImpact"
{
	"soundlevel"	"SNDLVL_95dB"
	"volume"		"0.9"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"	"#physics/surfaces/underwater_impact_bullet1.wav"
		"wave"	"#physics/surfaces/underwater_impact_bullet2.wav"
		"wave"	"#physics/surfaces/underwater_impact_bullet3.wav"
	}
}


// generic water splash, used for water explosions, water impacts

"Physics.WaterSplash"
{
	"channel"		"CHAN_VOICE"
	"volume"		"0.800, 1.000"
	"pitch"			"85, 115"

	"soundlevel"	"SNDLVL_NORM"

	"rndwave"
	{
		"wave"	"ambient/water/water_splash1.wav"
		"wave"	"ambient/water/water_splash2.wav"
		"wave"	"ambient/water/water_splash3.wav"
	}
}

"BaseEntity.EnterWater"
{
	"channel"	"CHAN_AUTO"
	"volume"	"1"
	"soundlevel"	"SNDLVL_70dB"
	"pitch"		"PITCH_NORM"
	"wave"		"player/footsteps/wade4.wav"
}

"BaseEntity.ExitWater"
{
	"channel"	"CHAN_AUTO"
	"volume"	"1"
	"soundlevel"	"SNDLVL_70dB"
	"pitch"		"PITCH_NORM"
	"wave"		"player/footsteps/wade1.wav"
}

"Wade.StepLeft"
{
	"soundlevel"		"SNDLVL_91dB"
	"volume"		"0.25"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"player/footsteps/wade1.wav"
		"wave"		"player/footsteps/wade3.wav"
	}
}

"Wade.StepRight"
{
	"soundlevel"		"SNDLVL_91dB"
	"volume"		"0.25"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"player/footsteps/wade2.wav"
		"wave"		"player/footsteps/wade4.wav"
	}
}

"Ladder.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/ladder1.wav"
		"wave"		"player/footsteps/ladder3.wav"
	}
}

"Ladder.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/ladder2.wav"
		"wave"		"player/footsteps/ladder4.wav"
	}
}

"Glass.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_sheet_step1.wav"
		"wave"		"physics/glass/glass_sheet_step2.wav"
	}
}

"Glass.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_sheet_step3.wav"
		"wave"		"physics/glass/glass_sheet_step4.wav"
	}
}


"Glass.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_sheet_impact_hard1.wav"
		"wave"	"physics/glass/glass_sheet_impact_hard2.wav"
		"wave"	"physics/glass/glass_sheet_impact_hard3.wav"
	}
}

"Glass.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.4"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_sheet_impact_soft1.wav"
		"wave"	"physics/glass/glass_sheet_impact_soft2.wav"
		"wave"	"physics/glass/glass_sheet_impact_soft3.wav"
	}
}

"Glass.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_impact_bullet1.wav"
		"wave"	"physics/glass/glass_impact_bullet2.wav"
		"wave"	"physics/glass/glass_impact_bullet3.wav"	
		"wave"	"physics/glass/glass_impact_bullet4.wav"
	}
}


"Glass.ScrapeRough"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.3"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_sheet_impact_hard1.wav"
		"wave"	"physics/glass/glass_sheet_impact_hard2.wav"
		"wave"	"physics/glass/glass_sheet_impact_hard3.wav"
	}
}

"Glass.ScrapeSmooth"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.2"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_sheet_impact_soft1.wav"
		"wave"	"physics/glass/glass_sheet_impact_soft2.wav"
		"wave"	"physics/glass/glass_sheet_impact_soft3.wav"
	}
}

"Glass.Break"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_sheet_break1.wav"
		"wave"	"physics/glass/glass_sheet_break2.wav"
		"wave"	"physics/glass/glass_sheet_break3.wav"
	}
}


"Pottery.Break"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_pottery_break1.wav"
		"wave"	"physics/glass/glass_pottery_break2.wav"
		"wave"	"physics/glass/glass_pottery_break3.wav"
	}
}

"Pottery.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_impact_hard1.wav"
		"wave"	"physics/glass/glass_impact_hard2.wav"
		"wave"	"physics/glass/glass_impact_hard3.wav"
	}
}

"Pottery.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.4"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_impact_soft1.wav"
		"wave"	"physics/glass/glass_impact_soft2.wav"
		"wave"	"physics/glass/glass_impact_soft3.wav"
	}
}

"Pottery.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_pottery_break1.wav"
		"wave"	"physics/glass/glass_pottery_break2.wav"
		"wave"	"physics/glass/glass_pottery_break3.wav"
	}
}



"Computer.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_impact_bullet1.wav"
		"wave"	"physics/glass/glass_impact_bullet2.wav"
		"wave"	"physics/metal/metal_computer_impact_bullet1.wav"
		"wave"	"physics/metal/metal_computer_impact_bullet2.wav"
		"wave"	"physics/metal/metal_computer_impact_bullet3.wav"
		"wave"	"physics/plastic/plastic_box_impact_bullet1.wav"
		"wave"	"physics/plastic/plastic_box_impact_bullet2.wav"
		"wave"	"physics/plastic/plastic_box_impact_bullet3.wav"
	}
}

"Computer.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/metal/metal_computer_impact_hard1.wav"
		"wave"	"physics/metal/metal_computer_impact_hard2.wav"
		"wave"	"physics/metal/metal_computer_impact_hard3.wav"
	}
}

"Computer.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.4"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/metal/metal_computer_impact_soft1.wav"
		"wave"	"physics/metal/metal_computer_impact_soft2.wav"
		"wave"	"physics/metal/metal_computer_impact_soft3.wav"
	}
}


"Concrete.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/concrete1.wav"
		"wave"		"player/footsteps/concrete3.wav"
	}
}

"Concrete.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/concrete2.wav"
		"wave"		"player/footsteps/concrete4.wav"
	}
}

"Concrete.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"physics/concrete/concrete_impact_bullet1.wav"
		"wave"		"physics/concrete/concrete_impact_bullet2.wav"
		"wave"		"physics/concrete/concrete_impact_bullet3.wav"
		"wave"		"physics/concrete/concrete_impact_bullet4.wav"
	}
}

"Concrete.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"physics/concrete/concrete_impact_hard1.wav"
		"wave"		"physics/concrete/concrete_impact_hard2.wav"
		"wave"		"physics/concrete/concrete_impact_hard3.wav"
	}
}

"Concrete.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"physics/concrete/concrete_impact_soft1.wav"
		"wave"		"physics/concrete/concrete_impact_soft2.wav"
		"wave"		"physics/concrete/concrete_impact_soft3.wav"
	}
}

"Concrete.ScrapeSmooth"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	
	"wave"		"physics/concrete/concrete_scrape_smooth_loop1.wav"
}

"Concrete.ScrapeRough"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	
	"wave"		"physics/concrete/rock_scrape_rough_loop1.wav"
}

"Rock.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"physics/concrete/rock_impact_hard4.wav"
		"wave"		"physics/concrete/rock_impact_hard5.wav"
		"wave"		"physics/concrete/rock_impact_hard6.wav"
	}
}

"Rock.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"physics/concrete/rock_impact_soft1.wav"
		"wave"		"physics/concrete/rock_impact_soft2.wav"
		"wave"		"physics/concrete/rock_impact_soft3.wav"
	}
}


"Boulder.ScrapeSmooth"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.4"
	"pitch"			"80"
	
	"wave"		"physics/concrete/rock_scrape_rough_loop1.wav"
}

"Boulder.ScrapeRough"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.6"
	"pitch"			"95"
	
	"wave"		"physics/concrete/concrete_block_scrape_rough_loop1.wav"
}

"Boulder.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.3"
	"pitch"			"90"
	"rndwave"
	{
		"wave"		"physics/concrete/rock_impact_hard1.wav"
		"wave"		"physics/concrete/rock_impact_hard2.wav"
		"wave"		"physics/concrete/rock_impact_hard3.wav"
	}
}

"Boulder.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.85"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"physics/concrete/boulder_impact_hard1.wav"
		"wave"		"physics/concrete/boulder_impact_hard3.wav"
		"wave"		"physics/concrete/boulder_impact_hard4.wav"
	}
}

"Concrete_Block.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"physics/concrete/concrete_block_impact_hard1.wav"
		"wave"		"physics/concrete/concrete_block_impact_hard2.wav"
		"wave"		"physics/concrete/concrete_block_impact_hard3.wav"
	}
}


"Gravel.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/gravel1.wav"
		"wave"		"player/footsteps/gravel3.wav"
	}
}

"Gravel.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/gravel2.wav"
		"wave"		"player/footsteps/gravel4.wav"
	}
}

"ChainLink.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/chainlink1.wav"
		"wave"		"player/footsteps/chainlink3.wav"
	}
}

"ChainLink.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/chainlink2.wav"
		"wave"		"player/footsteps/chainlink4.wav"
	}
}

"ChainLink.ScrapeRough"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"		"95,100"
	"wave"		"physics/metal/metal_chainlink_scrape_rough_loop1.wav"
}

"ChainLink.ScrapeSmooth"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.2"
	"pitch"		"95,100"
	"wave"		"physics/metal/metal_chainlink_scrape_rough_loop1.wav"
}

"ChainLink.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"95,100"
	"rndwave"
	{
		"wave"		"physics/metal/metal_chainlink_impact_hard1.wav"
		"wave"		"physics/metal/metal_chainlink_impact_hard2.wav"
		"wave"		"physics/metal/metal_chainlink_impact_hard3.wav"
	}
}

"ChainLink.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"95,100"
	"rndwave"
	{
		"wave"		"physics/metal/metal_chainlink_impact_soft1.wav"
		"wave"		"physics/metal/metal_chainlink_impact_soft2.wav"
		"wave"		"physics/metal/metal_chainlink_impact_soft3.wav"
	}
}

"ChainLink.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"player/footsteps/chainlink1.wav"
		"wave"		"physics/metal/metal_chainlink_impact_hard2.wav"
		"wave"		"player/footsteps/chainlink3.wav"
		"wave"		"physics/metal/metal_chainlink_impact_hard3.wav"
	}
}

"Chain.ScrapeRough"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"		"95,100"
	"wave"		"physics/metal/chain_scrape_rough_loop1.wav"
}

"Chain.ScrapeSmooth"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.2"
	"pitch"		"95,100"
	"wave"		"physics/metal/chain_scrape_rough_loop1.wav"
}

"Chain.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"95,100"
	"rndwave"
	{
		"wave"		"physics/metal/chain_impact_hard1.wav"
		"wave"		"physics/metal/chain_impact_hard2.wav"
	}
}

"Chain.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"95,100"
	"rndwave"
	{
		"wave"		"physics/metal/chain_impact_soft1.wav"
		"wave"		"physics/metal/chain_impact_soft2.wav"
		"wave"		"physics/metal/chain_impact_soft3.wav"
	}
}

"Chain.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"physics/metal/chain_impact_hard1.wav"
		"wave"		"physics/metal/chain_impact_hard2.wav"
	}
}

"Flesh.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"0.3"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"	"physics/flesh/flesh_impact_hard1.wav"
		"wave"	"physics/body/body_medium_impact_soft3.wav"
	}
}

"Flesh.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"0.3"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"	"physics/flesh/flesh_impact_hard2.wav"
		"wave"	"physics/body/body_medium_impact_soft4.wav"
	}
}

"Flesh.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/body/body_medium_impact_soft1.wav"
		"wave"	"physics/body/body_medium_impact_soft2.wav"
		"wave"	"physics/body/body_medium_impact_soft5.wav"
		"wave"	"physics/body/body_medium_impact_soft7.wav"
	}
}



"Flesh.ImpactHard"
{
	"soundlevel"		"SNDLVL_85dB"
	"volume"		"0.8"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/body/body_medium_impact_hard1.wav"
		"wave"	"physics/body/body_medium_impact_hard2.wav"
		"wave"	"physics/body/body_medium_impact_hard4.wav"
		"wave"	"physics/body/body_medium_impact_hard5.wav"
	}
}

"Flesh.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/flesh/flesh_impact_bullet1.wav"
		"wave"	"physics/flesh/flesh_impact_bullet2.wav"
		"wave"	"physics/flesh/flesh_impact_bullet3.wav"
		"wave"	"physics/flesh/flesh_impact_bullet4.wav"
		"wave"	"physics/flesh/flesh_impact_bullet5.wav"
	}
}

"Flesh.ScrapeRough"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	"wave"		"physics/body/body_medium_scrape_rough_loop1.wav"
}


"Flesh.ScrapeSmooth"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.35"
	"pitch"			"PITCH_NORM"
	"wave"		"physics/body/body_medium_scrape_smooth_loop1.wav"
}


"Flesh.Strain"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.3"
	"pitch"			"100"
	"rndwave"
	{
		"wave"	"physics/body/body_medium_strain1.wav"
		"wave"	"physics/body/body_medium_strain2.wav"
		"wave"	"physics/body/body_medium_strain3.wav"
	}
}


"Flesh.Break"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"			"100"
	"rndwave"
	{
		"wave"	"physics/body/body_medium_break2.wav"
		"wave"	"physics/body/body_medium_break3.wav"
		"wave"	"physics/body/body_medium_break4.wav"
	}
}

"Flesh_Bloody.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"			"100"
	"rndwave"
	{
		"wave"	"physics/flesh/flesh_squishy_impact_hard2.wav"
		"wave"	"physics/flesh/flesh_squishy_impact_hard3.wav"
		"wave"	"physics/flesh/flesh_squishy_impact_hard4.wav"
	}
}

"Carpet.Impact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"player/footsteps/sand1.wav"
		"wave"	"player/footsteps/sand2.wav"
		"wave"	"player/footsteps/sand3.wav"
		"wave"	"player/footsteps/sand4.wav"
	}
}

"Carpet.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/surfaces/sand_impact_bullet1.wav"
		"wave"	"physics/surfaces/sand_impact_bullet2.wav"
		"wave"	"physics/surfaces/sand_impact_bullet3.wav"
		"wave"	"physics/surfaces/sand_impact_bullet4.wav"
	}
}

"Carpet.Scrape"
{
	"pitch"			"PITCH_NORM"
	"volume"		"0.5"
	"soundlevel"		"SNDLVL_70dB"
	"wave"		"physics/flesh/flesh_scrape_rough_loop.wav"
}



"Sand.StepLeft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/sand1.wav"
		"wave"		"player/footsteps/sand3.wav"
	}
}

"Sand.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/sand2.wav"
		"wave"		"player/footsteps/sand4.wav"
	}
}


"Sand.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/surfaces/sand_impact_bullet1.wav"
		"wave"	"physics/surfaces/sand_impact_bullet2.wav"
		"wave"	"physics/surfaces/sand_impact_bullet3.wav"
		"wave"	"physics/surfaces/sand_impact_bullet4.wav"
	}
}

// *****************
// PROP MATERIALS

"Watermelon.Impact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/flesh/flesh_squishy_impact_hard2.wav"
		"wave"	"physics/flesh/flesh_squishy_impact_hard3.wav"
		"wave"	"physics/flesh/flesh_squishy_impact_hard4.wav"
	}
}

"Watermelon.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/flesh/flesh_squishy_impact_hard2.wav"
		"wave"	"physics/flesh/flesh_squishy_impact_hard3.wav"
		"wave"	"physics/flesh/flesh_squishy_impact_hard4.wav"
	}
}

"Watermelon.Scrape"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	"wave"	"physics/flesh/flesh_squishy_impact_hard4.wav"
}


"ArmorFlesh.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"physics/metal/metal_sheet_impact_bullet1.wav"
		"wave"		"physics/metal/metal_sheet_impact_bullet2.wav"
	}
}

"Metal_SeafloorCar.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"wave"		"doors/heavy_metal_stop1.wav"
}

"MetalVehicle.ImpactHard"
{
	"soundlevel"		"SNDLVL_110dB"
	"volume"		"0.9"
	"pitch"			"80,110"
	"rndwave"
	{
		"wave"		"vehicles/v8/vehicle_impact_heavy2.wav"
		"wave"		"vehicles/v8/vehicle_impact_heavy3.wav"
		"wave"		"vehicles/v8/vehicle_impact_heavy4.wav"
	}
}

"MetalVehicle.ImpactSoft"
{
	"soundlevel"		"SNDLVL_90dB"
	"volume"		"0.5"
	"pitch"			"80,110"
	"rndwave"
	{
		"wave"		"vehicles/v8/vehicle_impact_medium1.wav"
		"wave"		"vehicles/v8/vehicle_impact_medium3.wav"
	}
}

"MetalVehicle.ScrapeRough"
{
	"soundlevel"		"SNDLVL_90dB"
	"volume"		"0.5"
	"pitch"			"110,130"
	"rndwave"
	{
		"wave"		"vehicles/v8/vehicle_rollover1.wav"
		"wave"		"vehicles/v8/vehicle_rollover2.wav"
	}
}


"MetalVehicle.ScrapeSmooth"
{
	"soundlevel"		"SNDLVL_90dB"
	"volume"		"0.3"
	"pitch"			"110,130"
	"rndwave"
	{
		"wave"		"vehicles/v8/vehicle_rollover1.wav"
		"wave"		"vehicles/v8/vehicle_rollover2.wav"
	}
}


"GlassBottle.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"0.2"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft1.wav"
		"wave"		"physics/glass/glass_impact_soft2.wav"
	}
}

"GlassBottle.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"0.2"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/glass/glass_impact_soft2.wav"
		"wave"		"physics/glass/glass_impact_soft3.wav"
	}
}

"GlassBottle.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"	"95,100"
	"rndwave"
	{
		"wave"	"physics/glass/glass_bottle_impact_hard1.wav"
		"wave"	"physics/glass/glass_bottle_impact_hard2.wav"
		"wave"	"physics/glass/glass_bottle_impact_hard3.wav"
	}
}

"GlassBottle.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.5"
	"pitch"	"95,100"
	"rndwave"
	{
		"wave"	"physics/glass/glass_impact_soft1.wav"
		"wave"	"physics/glass/glass_impact_soft2.wav"
		"wave"	"physics/glass/glass_impact_soft3.wav"
	}
}

"GlassBottle.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_bottle_break1.wav"
		"wave"	"physics/glass/glass_bottle_break2.wav"
	}
}

"GlassBottle.ScrapeRough"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.3"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/glass/glass_bottle_impact_hard1.wav"
		"wave"	"physics/glass/glass_bottle_impact_hard2.wav"
		"wave"	"physics/glass/glass_bottle_impact_hard3.wav"
	}
}

"GlassBottle.ScrapeSmooth"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.3"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/glass/glass_impact_soft1.wav"
		"wave"	"physics/glass/glass_impact_soft2.wav"
		"wave"	"physics/glass/glass_impact_soft3.wav"
	}
}

"GlassBottle.Break"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/glass/glass_bottle_break1.wav"
		"wave"	"physics/glass/glass_bottle_break2.wav"
	}
}




"Canister.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/metal_canister_impact_hard1.wav"
		"wave"	"physics/metal/metal_canister_impact_hard2.wav"
		"wave"	"physics/metal/metal_canister_impact_hard3.wav"
	}
}

"Canister.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.45"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/metal_canister_impact_soft1.wav"
		"wave"	"physics/metal/metal_canister_impact_soft2.wav"
		"wave"	"physics/metal/metal_canister_impact_soft3.wav"
	}
}

"Canister.ScrapeRough"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	"wave"	"physics/metal/canister_scrape_rough_loop1.wav"
}

"Canister.ScrapeSmooth"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.45"
	"pitch"			"PITCH_NORM"
	"wave"	"physics/metal/canister_scrape_smooth_loop1.wav"
}

"Canister.Roll"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	"wave"	"physics/metal/canister_roll_loop1.wav"
}

"Metal_Barrel.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/metal_barrel_impact_hard1.wav"
		"wave"	"physics/metal/metal_barrel_impact_hard2.wav"
		"wave"	"physics/metal/metal_barrel_impact_hard3.wav"
	}
}

"Metal_Barrel.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.5"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/metal_barrel_impact_soft1.wav"
		"wave"	"physics/metal/metal_barrel_impact_soft2.wav"
		"wave"	"physics/metal/metal_barrel_impact_soft3.wav"
		"wave"	"physics/metal/metal_barrel_impact_hard7.wav"
	}
}


"Metal_Barrel.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/metal/metal_sheet_impact_bullet1.wav"
		"wave"	"physics/metal/metal_sheet_impact_bullet2.wav"
		"wave"	"physics/metal/metal_solid_impact_bullet2.wav"
		"wave"	"physics/metal/metal_solid_impact_bullet3.wav"
	}
}


"Metal_Barrel.Roll"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.2"
	"pitch"			"PITCH_NORM"
	"wave"	"physics/metal/canister_roll_loop1.wav"
}


"Roller.Impact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/metal_solid_impact_bullet1.wav"
		"wave"	"physics/metal/metal_solid_impact_bullet2.wav"
		"wave"	"physics/metal/metal_solid_impact_bullet3.wav"
		"wave"	"physics/metal/metal_solid_impact_bullet4.wav"
	}
}

"Popcan.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/soda_can_impact_hard1.wav"
		"wave"	"physics/metal/soda_can_impact_hard2.wav"
		"wave"	"physics/metal/soda_can_impact_hard3.wav"
	}
}

"Popcan.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.4"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/soda_can_impact_soft1.wav"
		"wave"	"physics/metal/soda_can_impact_soft2.wav"
		"wave"	"physics/metal/soda_can_impact_soft3.wav"
	}
}

"Popcan.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/metal/soda_can_impact_hard1.wav"
		"wave"	"physics/metal/soda_can_impact_hard2.wav"
		"wave"	"physics/metal/soda_can_impact_hard3.wav"
	}
}

"Popcan.ScrapeRough"
{
	"soundlevel"	"SNDLVL_75dB"
	"volume"		"0.4"
	"pitch"		"98,100"
	"wave"	"physics/metal/soda_can_scrape_rough_loop1.wav"
}

"Popcan.ScrapeSmooth"
{
	"soundlevel"	"SNDLVL_75dB"
	"volume"		"0.3"
	"pitch"		"130,140"
	"wave"	"physics/plastic/plastic_box_scrape_smooth_loop2.wav"
}

"Popcan.Scrape"
{
	"soundlevel"	"SNDLVL_75dB"
	"volume"		"0.3"
	"pitch"		"130,140"
	"wave"	"physics/plastic/plastic_box_scrape_smooth_loop2.wav"
}

"Paintcan.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/paintcan_impact_hard1.wav"
		"wave"	"physics/metal/paintcan_impact_hard2.wav"
		"wave"	"physics/metal/paintcan_impact_hard3.wav"
	}
}

"Paintcan.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.4"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/paintcan_impact_soft1.wav"
		"wave"	"physics/metal/paintcan_impact_soft2.wav"
		"wave"	"physics/metal/paintcan_impact_soft3.wav"
	}
}

"Paintcan.Roll"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.4"
	"pitch"		"98,100"
	"wave"	"physics/metal/paintcan_roll_loop1.wav"
}

"Papercup.Impact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/cardboard/cardboard_cup_impact_hard1.wav"
		"wave"	"physics/cardboard/cardboard_cup_impact_hard2.wav"
		"wave"	"physics/cardboard/cardboard_cup_impact_hard3.wav"
	}
}

"Papercup.Scrape"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/cardboard/cardboard_cup_impact_hard1.wav"
		"wave"	"physics/cardboard/cardboard_cup_impact_hard2.wav"
		"wave"	"physics/cardboard/cardboard_cup_impact_hard3.wav"
	}
}

"ceiling_tile.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/plaster/ceiling_tile_step1.wav"
		"wave"		"physics/plaster/ceiling_tile_step3.wav"
	}
}

"ceiling_tile.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/plaster/ceiling_tile_step2.wav"
		"wave"		"physics/plaster/ceiling_tile_step4.wav"
	}
}

"ceiling_tile.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"1.0"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/plaster/ceiling_tile_impact_bullet1.wav"
		"wave"	"physics/plaster/ceiling_tile_impact_bullet2.wav"
		"wave"	"physics/plaster/ceiling_tile_impact_bullet3.wav"
	}
}

"ceiling_tile.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/plaster/ceiling_tile_impact_soft1.wav"
		"wave"	"physics/plaster/ceiling_tile_impact_soft2.wav"
		"wave"	"physics/plaster/ceiling_tile_impact_soft3.wav"
	}
}


"ceiling_tile.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/plaster/ceiling_tile_impact_hard1.wav"
		"wave"	"physics/plaster/ceiling_tile_impact_hard2.wav"
		"wave"	"physics/plaster/ceiling_tile_impact_hard3.wav"
	}
}

"ceiling_tile.ScrapeRough"
{
	"soundlevel"	"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/plaster/ceiling_tile_scrape_smooth_loop1.wav"
}

"ceiling_tile.ScrapeSmooth"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/plaster/ceiling_tile_scrape_smooth_loop1.wav"
}

"ceiling_tile.Break"
{
	"soundlevel"		"SNDLVL_85dB"
	"volume"		"0.8"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/plaster/ceilingtile_break1.wav"
		"wave"	"physics/plaster/ceilingtile_break2.wav"
	}
}


"drywall.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/plaster/drywall_footstep1.wav"
		"wave"		"physics/plaster/drywall_footstep3.wav"
	}
}

"drywall.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/plaster/drywall_footstep2.wav"
		"wave"		"physics/plaster/drywall_footstep4.wav"
	}
}


"drywall.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/plaster/drywall_impact_soft1.wav"
		"wave"	"physics/plaster/drywall_impact_soft2.wav"
		"wave"	"physics/plaster/drywall_impact_soft3.wav"
	}
}


"drywall.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/plaster/drywall_impact_hard1.wav"
		"wave"	"physics/plaster/drywall_impact_hard2.wav"
		"wave"	"physics/plaster/drywall_impact_hard3.wav"
	}
}




// **********************
// legacy Func_breakables

"Breakable.Crate"
{
	"channel"	"CHAN_VOICE"
	"soundlevel"		"SNDLVL_NORM"
	"volume"		"0.7"

	"rndwave"
	{
		"wave"	"physics/wood/wood_crate_break1.wav"
		"wave"	"physics/wood/wood_crate_break4.wav"
	}
}

"Breakable.Flesh"
{
	"channel"	"CHAN_VOICE"
	"soundlevel"		"SNDLVL_NORM"
	"volume"		"0.7"

	"rndwave"
	{
		"wave"	"physics/flesh/flesh_bloody_break.wav"
	}
}

"Breakable.Spark"
{
	"channel"	"CHAN_VOICE"
	"soundlevel"		"SNDLVL_NORM"
	"volume"		"0.7"

	"rndwave"
	{
		"wave"	"ambient/energy/spark5.wav"
		"wave"	"ambient/energy/spark6.wav"
	}
}

"Breakable.Metal"
{
	"channel"	"CHAN_VOICE"
	"soundlevel"		"SNDLVL_NORM"
	"volume"		"0.7"

	"rndwave"
	{
		"wave"	"physics/metal/metal_box_break1.wav"
		"wave"	"physics/metal/metal_box_break2.wav"
	}
}

"Breakable.Glass"
{
	"channel"	"CHAN_VOICE"
	"soundlevel"		"SNDLVL_NORM"
	"volume"		"0.7"

	"rndwave"
	{
		"wave"	"physics/glass/glass_largesheet_break1.wav"
		"wave"	"physics/glass/glass_largesheet_break2.wav"
		"wave"	"physics/glass/glass_largesheet_break3.wav"
	}
}

"Breakable.Concrete"
{
	"channel"	"CHAN_VOICE"
	"soundlevel"		"SNDLVL_NORM"
	"volume"		"0.7"

	"rndwave"
	{
		"wave"	"physics/concrete/concrete_break2.wav"
		"wave"	"physics/concrete/concrete_break3.wav"
	}
}

"Breakable.Ceiling"
{
	"channel"	"CHAN_VOICE"
	"soundlevel"		"SNDLVL_NORM"
	"volume"		"0.7"

	"rndwave"
	{
		"wave"	"physics/plaster/ceilingtile_break1.wav"
		"wave"	"physics/plaster/ceilingtile_break2.wav"
	}
}

"Breakable.MatWood"
{
	"channel"	"CHAN_BODY"
	"volume"		"0.7"
	"rndwave"
	{
		"wave"	"physics/wood/wood_plank_break1.wav"
		"wave"	"physics/wood/wood_plank_break3.wav"
		"wave"	"physics/wood/wood_plank_break4.wav"
	}
}

"Breakable.MatFlesh"
{
	"channel"	"CHAN_BODY"
	"volume"		"0.7"
	"rndwave"
	{
		"wave"	"physics/body/body_medium_break2.wav"
		"wave"	"physics/body/body_medium_break3.wav"
		"wave"	"physics/body/body_medium_break4.wav"
	}
}

"Breakable.MatMetal"
{
	"channel"	"CHAN_BODY"
	"volume"		"0.7"
	"rndwave"
	{
		"wave"	"physics/metal/metal_box_break1.wav"
		"wave"	"physics/metal/metal_box_break2.wav"
	}
}

"Breakable.MatConcrete"
{
	"channel"	"CHAN_BODY"
	"volume"		"0.7"
	"rndwave"
	{
		"wave"	"physics/concrete/concrete_break2.wav"

	}
}

"Breakable.MatGlass"
{
	"channel"	"CHAN_BODY"
	"volume"		"0.7"
	"rndwave"
	{
		"wave"	"physics/glass/glass_cup_break1.wav"
		"wave"	"physics/glass/glass_cup_break2.wav"
		"wave"	"physics/glass/glass_bottle_break2.wav"
	}
}


"Breakable.Computer"
{
	"channel"	"CHAN_VOICE"
	"volume"	"0.7,1.0"
	"soundlevel"  "SNDLVL_75dB"

	"rndwave"
	{
		"wave"	"ambient/energy/spark5.wav"
		"wave"	"ambient/energy/spark6.wav"
	}
}

// *************************
// Legacy Temp Entity Sounds

"Bounce.Glass"
{
	"pitch"		"90,124"
	"volume"	"0.8"
	"channel"	"CHAN_STATIC"
	"rndwave"
	{
		"wave"	"physics/glass/glass_impact_hard1.wav"
		"wave"	"physics/glass/glass_impact_hard2.wav"
		"wave"	"physics/glass/glass_impact_hard3.wav"
	}
}

"Bounce.Metal"
{
	"pitch"		"90,124"
	"volume"	"0.8"
	"channel"	"CHAN_STATIC"
	"rndwave"
	{
		"wave" "physics/metal/metal_box_impact_hard1.wav"
		"wave" "physics/metal/metal_box_impact_hard2.wav"
		"wave" "physics/metal/metal_box_impact_hard3.wav"
	}
}

"Bounce.Flesh"
{
	"pitch"		"90,124"
	"volume"	"0.8"
	"channel"	"CHAN_STATIC"
	"rndwave"
	{
		"wave"	"physics/flesh/flesh_squishy_impact_hard2.wav"
		"wave"	"physics/flesh/flesh_squishy_impact_hard3.wav"
		"wave"	"physics/flesh/flesh_squishy_impact_hard4.wav"	
	}
}

"Bounce.Wood"
{
	"pitch"		"90,124"
	"volume"	"0.8"
	"channel"	"CHAN_STATIC"
	"rndwave"
	{
		"wave" "physics/wood/wood_plank_impact_hard1.wav"
		"wave" "physics/wood/wood_plank_impact_hard2.wav"
		"wave" "physics/wood/wood_plank_impact_hard3.wav"
	}
}

"Bounce.Shrapnel"
{
	"pitch"		"90,124"
	"volume"	"0.8"
	"channel"	"CHAN_STATIC"
	"rndwave"
	{
		"wave" "weapons/fx/rics/ric1.wav"
		"wave" "weapons/fx/rics/ric2.wav"
		"wave" "weapons/fx/rics/ric3.wav"
		"wave" "weapons/fx/rics/ric4.wav"
		"wave" "weapons/fx/rics/ric5.wav"
	}
}

"Bounce.ShotgunShell"
{
	"pitch"		"PITCH_NORM"
	"volume"	"0.5"
	"channel"	"CHAN_STATIC"
	"rndwave"
	{
		"wave" "weapons/fx/tink/shotgun_shell1.wav"
		"wave" "weapons/fx/tink/shotgun_shell2.wav"
		"wave" "weapons/fx/tink/shotgun_shell3.wav"
	}
}

"Bounce.Shell"
{
	"pitch"		"PITCH_NORM"
	"volume"	"0.8"
	"channel"	"CHAN_STATIC"
	"rndwave"
	{
		"wave" "player/pl_shell1.wav"
		"wave" "player/pl_shell2.wav"
		"wave" "player/pl_shell3.wav"
	}
}

"Bounce.Concrete"
{
	"pitch"		"90,124"
	"volume"	"0.8"
	"channel"	"CHAN_STATIC"
	"rndwave"
	{
		"wave"	"physics/concrete/concrete_break2.wav"	
	}
}

"ItemSoda.Bounce"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1"
	"soundlevel"  "SNDLVL_75dB"

	"wave"	"physics/metal/metal_popcan_impact_hard1.wav"
	"wave"	"physics/metal/metal_popcan_impact_hard2.wav"
	"wave"	"physics/metal/metal_popcan_impact_hard3.wav"
}

// cardboard material - full physics implementation

"Cardboard.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/cardboard/cardboard_box_impact_soft1.wav"
		"wave"		"physics/cardboard/cardboard_box_impact_soft2.wav"
	}
}

"Cardboard.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/cardboard/cardboard_box_impact_soft3.wav"
		"wave"		"physics/cardboard/cardboard_box_impact_soft4.wav"
	}
}

"Cardboard.ImpactSoft"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"PITCH_NORM"
	"volume"	"0.6"
	"rndwave"
	{
		"wave" "physics/cardboard/cardboard_box_impact_soft1.wav"
		"wave" "physics/cardboard/cardboard_box_impact_soft2.wav"
		"wave" "physics/cardboard/cardboard_box_impact_soft3.wav"
		"wave" "physics/cardboard/cardboard_box_impact_soft4.wav"
	}
}

"Cardboard.ImpactHard"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"PITCH_NORM"
	"volume"	"0.8"
	"rndwave"
	{
		"wave" "physics/cardboard/cardboard_box_impact_hard1.wav"
		"wave" "physics/cardboard/cardboard_box_impact_hard2.wav"
		"wave" "physics/cardboard/cardboard_box_impact_hard3.wav"
	}
}

"Cardboard.BulletImpact"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_90dB"
	"pitch"		"PITCH_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave" "physics/cardboard/cardboard_box_impact_bullet1.wav"
		"wave" "physics/cardboard/cardboard_box_impact_bullet2.wav"
		"wave" "physics/cardboard/cardboard_box_impact_bullet3.wav"
		"wave" "physics/cardboard/cardboard_box_impact_bullet4.wav"
		"wave" "physics/cardboard/cardboard_box_impact_bullet5.wav"
		
	}
}

"Cardboard.Strain"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"PITCH_NORM"
	"volume"	"0.8"
	"rndwave"
	{
		"wave" "physics/cardboard/cardboard_box_strain1.wav"
		"wave" "physics/cardboard/cardboard_box_strain2.wav"
		"wave" "physics/cardboard/cardboard_box_strain3.wav"
	}
}

"Cardboard.Break"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"PITCH_NORM"
	"volume"	"0.8"
	"rndwave"
	{
		"wave" "physics/cardboard/cardboard_box_break1.wav"
		"wave" "physics/cardboard/cardboard_box_break2.wav"
		"wave" "physics/cardboard/cardboard_box_break3.wav"
	}
}

"Cardboard.Shake"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"PITCH_NORM"
	"volume"	"0.6"
	"rndwave"
	{
		"wave" "physics/cardboard/cardboard_box_shake1.wav"
		"wave" "physics/cardboard/cardboard_box_shake2.wav"
		"wave" "physics/cardboard/cardboard_box_shake3.wav"
	}
}

"Cardboard.ScrapeSmooth"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"96,104"
	"volume"	"0.55"

	"wave" "physics/cardboard/cardboard_box_scrape_smooth_loop1.wav"
}

"Cardboard.ScrapeRough"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"96,104"
	"volume"	"0.35"

	"wave" "physics/cardboard/cardboard_box_scrape_rough_loop1.wav"
}

// plastic barrel material - full physics implementation

"Plastic_Barrel.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft2.wav"
	}
}

"Plastic_Barrel.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"pitch"			"95,105"
	"volume"			"0.5"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_barrel_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_barrel_impact_soft4.wav"
	}
}

"Plastic_Barrel.ImpactSoft"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"96,104"
	"volume"	"0.6"
	"rndwave"
	{
		"wave" "physics/plastic/plastic_barrel_impact_soft1.wav"
		"wave" "physics/plastic/plastic_barrel_impact_soft2.wav"
		"wave" "physics/plastic/plastic_barrel_impact_soft3.wav"
		"wave" "physics/plastic/plastic_barrel_impact_soft4.wav"
	}
}

"Plastic_Barrel.ImpactHard"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"96,104"
	"volume"	"0.8"
	"rndwave"
	{

		"wave" "physics/plastic/plastic_barrel_impact_hard2.wav"
		"wave" "physics/plastic/plastic_barrel_impact_hard3.wav"
		"wave" "physics/plastic/plastic_barrel_impact_hard4.wav"
	}
}

"Plastic_Barrel.BulletImpact"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_90dB"
	"pitch"		"96,104"
	"volume"	"1.0"
	"rndwave"
	{
		"wave" "physics/plastic/plastic_barrel_impact_bullet1.wav"
		"wave" "physics/plastic/plastic_barrel_impact_bullet2.wav"
		"wave" "physics/plastic/plastic_barrel_impact_bullet3.wav"
		
	}
}

"Plastic_Barrel.Strain"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"PITCH_NORM"
	"volume"	"0.8"
	"rndwave"
	{
		"wave" "physics/plastic/plastic_barrel_strain1.wav"
		"wave" "physics/plastic/plastic_barrel_strain2.wav"
		"wave" "physics/plastic/plastic_barrel_strain3.wav"
	}
}

"Plastic_Barrel.Break"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"96,104"
	"volume"	"1.0"
	"rndwave"
	{
		"wave" "physics/plastic/plastic_barrel_break1.wav"
		"wave" "physics/plastic/plastic_barrel_break2.wav"
	}
}


"Plastic_Barrel.ScrapeSmooth"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"96,104"
	"volume"	"0.55"

	"wave" "physics/plastic/plastic_barrel_scrape_smooth_loop1.wav"
}

"Plastic_Barrel.ScrapeRough"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"96,104"
	"volume"	"0.35"

	"wave" "physics/plastic/plastic_barrel_scrape_rough_loop1.wav"
}

"Plastic_Barrel.Roll"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"PITCH_NORM"
	"volume"	"0.4"

	"wave" "physics/plastic/plastic_barrel_roll_loop1.wav"
}


// plastic box material - full physics implementation

"Plastic_Box.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"pitch"			"95,105"
	"volume"			"0.3"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft1.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft2.wav"
	}
}

"Plastic_Box.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"pitch"			"95,105"
	"volume"			"0.3"
	"rndwave"
	{
		"wave"		"physics/plastic/plastic_box_impact_soft3.wav"
		"wave"		"physics/plastic/plastic_box_impact_soft4.wav"
	}
}

"Plastic_Box.ImpactSoft"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"96,104"
	"volume"	"0.6"
	"rndwave"
	{
		"wave" "physics/plastic/plastic_box_impact_soft1.wav"
		"wave" "physics/plastic/plastic_box_impact_soft2.wav"
		"wave" "physics/plastic/plastic_box_impact_soft3.wav"
		"wave" "physics/plastic/plastic_box_impact_soft4.wav"
	}
}

"Plastic_Box.ImpactHard"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"96,104"
	"volume"	"0.8"
	"rndwave"
	{
		"wave" "physics/plastic/plastic_box_impact_hard1.wav"
		"wave" "physics/plastic/plastic_box_impact_hard2.wav"
		"wave" "physics/plastic/plastic_box_impact_hard3.wav"
		"wave" "physics/plastic/plastic_box_impact_hard4.wav"
	}
}

"Plastic_Box.BulletImpact"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_90dB"
	"pitch"		"96,104"
	"volume"	"1.0"
	"rndwave"
	{
		"wave" "physics/plastic/plastic_box_impact_bullet1.wav"
		"wave" "physics/plastic/plastic_box_impact_bullet2.wav"
		"wave" "physics/plastic/plastic_box_impact_bullet3.wav"
		"wave" "physics/plastic/plastic_box_impact_bullet4.wav"
		"wave" "physics/plastic/plastic_box_impact_bullet5.wav"	
	}
}

"Plastic_Box.Strain"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"PITCH_NORM"
	"volume"	"0.8"
	"rndwave"
	{
		"wave" "physics/plastic/plastic_box_strain1.wav"
		"wave" "physics/plastic/plastic_box_strain2.wav"
		"wave" "physics/plastic/plastic_box_strain3.wav"
	}
}

"Plastic_Box.Break"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"96,104"
	"volume"	"1.0"
	"rndwave"
	{
		"wave" "physics/plastic/plastic_box_break1.wav"
		"wave" "physics/plastic/plastic_box_break2.wav"
	}
}


"Plastic_Box.ScrapeSmooth"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"96,104"
	"volume"	"0.55"

	"wave" "physics/plastic/plastic_box_scrape_smooth_loop2.wav"
}

"Plastic_Box.ScrapeRough"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"96,104"
	"volume"	"0.35"

	"wave" "physics/plastic/plastic_box_scrape_rough_loop1.wav"
}



// rubber matt & rubber tire material 

"Rubber.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"pitch"			"98,102"
	"volume"			"0.2"
	"wave"		"physics/rubber/rubber_tire_impact_soft1.wav"
}

"Rubber.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"pitch"			"98,102"
	"volume"		"0.2"
	"wave"		"physics/rubber/rubber_tire_impact_soft1.wav"
}

"Rubber.BulletImpact"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_90dB"
	"pitch"		"90,96"
	"volume"	"0.7"
	"wave" "physics/rubber/rubber_tire_impact_bullet1.wav"
}

"Rubber.ImpactSoft"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"PITCH_NORM"
	"volume"	"0.4"
	"wave" "physics/rubber/rubber_tire_impact_soft1.wav"
}

"Rubber.ImpactHard"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"PITCH_NORM"
	"volume"	"0.5"

	"wave" "physics/rubber/rubber_tire_impact_hard3.wav"
}

"Rubber_Tire.ImpactSoft"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"PITCH_NORM"
	"volume"	"0.6"
	"rndwave"
	{
		"wave" "physics/rubber/rubber_tire_impact_soft1.wav"
		"wave" "physics/rubber/rubber_tire_impact_soft2.wav"
		"wave" "physics/rubber/rubber_tire_impact_soft3.wav"
	}
}

"Rubber_Tire.ImpactHard"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"PITCH_NORM"
	"volume"	"0.8"
	"rndwave"
	{
		"wave" "physics/rubber/rubber_tire_impact_hard1.wav"
		"wave" "physics/rubber/rubber_tire_impact_hard2.wav"
		"wave" "physics/rubber/rubber_tire_impact_hard3.wav"
	}
}

"Rubber_Tire.BulletImpact"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_90dB"
	"pitch"		"96,104"
	"volume"	"1.0"
	"rndwave"
	{
		"wave" "physics/rubber/rubber_tire_impact_bullet1.wav"
		"wave" "physics/rubber/rubber_tire_impact_bullet2.wav"
		"wave" "physics/rubber/rubber_tire_impact_bullet3.wav"
		
	}
}

"Rubber_Tire.Strain"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_75dB"
	"pitch"		"PITCH_NORM"
	"volume"	"0.8"
	"rndwave"
	{
		"wave" "physics/rubber/rubber_tire_strain1.wav"
		"wave" "physics/rubber/rubber_tire_strain2.wav"
		"wave" "physics/rubber/rubber_tire_strain3.wav"
	}
}

// hard metal grenade

"Grenade.StepLeft"
{
	"soundlevel"		"SNDLVL_74dB"
	"volume"		"1"
	"rndwave"
	{
		"wave"		"weapons/grenade_impact.wav"
		"wave"		"weapons/grenade_impact2.wav"
		"wave"		"weapons/grenade_impact3.wav"
	}
}

"Grenade.StepRight"
{
	"soundlevel"		"SNDLVL_74dB"
	"volume"		"1"
	"rndwave"
	{
		"wave"		"weapons/grenade_impact.wav"
		"wave"		"weapons/grenade_impact2.wav"
		"wave"		"weapons/grenade_impact3.wav"
	}
}

"Grenade.ImpactHard"
{
	"soundlevel"		"SNDLVL_74dB"
	"volume"		"1"
	"rndwave"
	{
		"wave"		"weapons/grenade_impact.wav"
		"wave"		"weapons/grenade_impact2.wav"
		"wave"		"weapons/grenade_impact3.wav"
	}
}

"Grenade.ImpactSoft"
{
	"soundlevel"		"SNDLVL_74dB"
	"volume"		"1"
	"rndwave"
	{
		"wave"		"weapons/grenade_impact.wav"
		"wave"		"weapons/grenade_impact2.wav"
		"wave"		"weapons/grenade_impact3.wav"
	}
}

"Grenade.ScrapeRough"
{
	"soundlevel"	"SNDLVL_70dB"
	"volume"		"0.4"
	"pitch"			"96,104"
	"wave"			"physics/metal/metal_grenade_scrape_rough_loop1.wav"
}

"Grenade.ScrapeSmooth"
{
	"soundlevel"	"SNDLVL_70dB"
	"volume"		"0.3"
	"pitch"			"96,104"
	"wave"			"physics/metal/metal_grenade_scrape_smooth_loop1.wav"
}

"Grenade.Roll"
{
	"soundlevel"	"SNDLVL_75dB"
	"volume"		"0.4"
	"pitch"			"PITCH_NORM"
	"wave"			"physics/metal/metal_grenade_roll_loop1.wav"
}

// generic wood

"Wood.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/wood1.wav"
		"wave"		"player/footsteps/wood3.wav"
	}
}

"Wood.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/wood2.wav"
		"wave"		"player/footsteps/wood4.wav"
	}
}

"Ladder.WoodStepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/wood2.wav"
		"wave"		"player/footsteps/wood4.wav"
	}
}

"Ladder.WoodStepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/wood1.wav"
		"wave"		"player/footsteps/wood3.wav"
	}
}

"Wood.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/wood/wood_solid_impact_bullet1.wav"
		"wave"	"physics/wood/wood_solid_impact_bullet2.wav"
		"wave"	"physics/wood/wood_solid_impact_bullet3.wav"
		"wave"	"physics/wood/wood_solid_impact_bullet4.wav"
		"wave"	"physics/wood/wood_solid_impact_bullet5.wav"
	}
}

"Wood.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/wood/wood_plank_impact_soft1.wav"
		"wave"	"physics/wood/wood_box_impact_soft1.wav"
		"wave"	"physics/wood/wood_solid_impact_soft2.wav"
	}
}


"Wood.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"96,104"

	"rndwave"
	{
		"wave"	"physics/wood/wood_box_impact_hard1.wav"
		"wave"	"physics/wood/wood_box_impact_hard2.wav"
		"wave"	"physics/wood/wood_box_impact_hard3.wav"
	}
}

"Wood.ScrapeRough"
{
	"soundlevel"	"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_solid_scrape_rough_loop1.wav"
}

"Wood.ScrapeSmooth"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_plank_scrape_smooth_loop1.wav"
}

"Wood.Break"
{
	"soundlevel"		"SNDLVL_85dB"
	"volume"		"0.8"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_plank_break2.wav"
		"wave"	"physics/wood/wood_plank_break3.wav"
		"wave"	"physics/wood/wood_plank_break4.wav"
	}
}

"Wood.Strain"
{
	"soundlevel"		"SNDLVL_85dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_strain2.wav"
		"wave"	"physics/wood/wood_strain3.wav"
		"wave"	"physics/wood/wood_strain4.wav"
	}
}


// wood box - small crate

"Wood_Box.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep1.wav"
		"wave"		"physics/wood/wood_box_footstep2.wav"
	}
}

"Wood_Box.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep3.wav"
		"wave"		"physics/wood/wood_box_footstep4.wav"
	}
}

"Wood_Box.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/wood/wood_box_impact_bullet1.wav"
		"wave"	"physics/wood/wood_box_impact_bullet2.wav"
		"wave"	"physics/wood/wood_box_impact_bullet3.wav"
		"wave"	"physics/wood/wood_box_impact_bullet4.wav"
	}
}

"Wood_Box.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_box_impact_soft1.wav"
		"wave"	"physics/wood/wood_box_impact_soft2.wav"
		"wave"	"physics/wood/wood_box_impact_soft3.wav"
	}
}


"Wood_Box.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_box_impact_hard1.wav"
		"wave"	"physics/wood/wood_box_impact_hard2.wav"
		"wave"	"physics/wood/wood_box_impact_hard3.wav"
	}
}

"Wood_Box.ScrapeRough"
{
	"soundlevel"	"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_box_scrape_rough_loop1.wav"
}

"Wood_Box.ScrapeSmooth"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_box_scrape_smooth_loop1.wav"
}

"Wood_Box.Break"
{
	"soundlevel"		"SNDLVL_85dB"
	"volume"		"0.8"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_box_break1.wav"
		"wave"	"physics/wood/wood_box_break2.wav"
	}
}

"Wood_Box.Strain"
{
	"soundlevel"		"SNDLVL_85dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_strain2.wav"
		"wave"	"physics/wood/wood_strain3.wav"
		"wave"	"physics/wood/wood_strain4.wav"
	}
}

// wood crate - large crate

"Wood_Crate.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep1.wav"
		"wave"		"physics/wood/wood_box_footstep2.wav"
	}
}

"Wood_Crate.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/wood/wood_box_footstep3.wav"
		"wave"		"physics/wood/wood_box_footstep4.wav"
	}
}


"Wood_Crate.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_crate_impact_soft1.wav"
		"wave"	"physics/wood/wood_crate_impact_soft2.wav"
		"wave"	"physics/wood/wood_crate_impact_soft3.wav"
	}
}

"Wood_Crate.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_crate_impact_hard4.wav"
		"wave"	"physics/wood/wood_crate_impact_hard5.wav"
		"wave"	"physics/wood/wood_panel_impact_hard1.wav"
	}
}

"Wood_Crate.ScrapeRough"
{
	"soundlevel"	"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_crate_scrape_rough_loop1.wav"
}

"Wood_Crate.ScrapeSmooth"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_box_scrape_smooth_loop1.wav"
}

"Wood_Crate.Break"
{
	"soundlevel"		"SNDLVL_85dB"
	"volume"		"0.8"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_crate_break1.wav"
		"wave"	"physics/wood/wood_crate_break2.wav"
	}
}

"Wood_Crate.Strain"
{
	"soundlevel"		"SNDLVL_85dB"
	"volume"		"0.6"
	"pitch"		"94,98"
	"rndwave"
	{
		"wave"	"physics/wood/wood_strain2.wav"
		"wave"	"physics/wood/wood_strain3.wav"
		"wave"	"physics/wood/wood_strain4.wav"
	}
}

// wood plank


"Wood_Plank.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/wood/wood_box_impact_bullet1.wav"
		"wave"	"physics/wood/wood_box_impact_bullet2.wav"
		"wave"	"physics/wood/wood_box_impact_bullet3.wav"
		"wave"	"physics/wood/wood_box_impact_bullet4.wav"
	}
}

"Wood_Plank.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_plank_impact_soft1.wav"
		"wave"	"physics/wood/wood_plank_impact_soft2.wav"
		"wave"	"physics/wood/wood_plank_impact_soft3.wav"
	}
}


"Wood_Plank.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_plank_impact_hard1.wav"
		"wave"	"physics/wood/wood_plank_impact_hard2.wav"
		"wave"	"physics/wood/wood_plank_impact_hard5.wav"
	}
}

"Wood_Plank.ScrapeRough"
{
	"soundlevel"	"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_plank_scrape_rough_loop1.wav"
}

"Wood_Plank.ScrapeSmooth"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_plank_scrape_smooth_loop1.wav"
}

"Wood_Plank.Break"
{
	"soundlevel"		"SNDLVL_85dB"
	"volume"		"0.8"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_plank_break1.wav"
		"wave"	"physics/wood/wood_plank_break3.wav"
		"wave"	"physics/wood/wood_plank_break4.wav"
	}
}

"Wood_Plank.Strain"
{
	"soundlevel"		"SNDLVL_85dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_strain2.wav"
		"wave"	"physics/wood/wood_strain3.wav"
		"wave"	"physics/wood/wood_strain4.wav"
	}
}

// wood solid - small 6x6 or larger post


"Wood_Solid.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/wood/wood_solid_impact_bullet1.wav"
		"wave"	"physics/wood/wood_solid_impact_bullet2.wav"
		"wave"	"physics/wood/wood_solid_impact_bullet3.wav"
		"wave"	"physics/wood/wood_solid_impact_bullet4.wav"
		"wave"	"physics/wood/wood_solid_impact_bullet5.wav"
	}
}

"Wood_Solid.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_solid_impact_soft1.wav"
		"wave"	"physics/wood/wood_solid_impact_soft2.wav"
		"wave"	"physics/wood/wood_solid_impact_soft3.wav"
	}
}


"Wood_Solid.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_solid_impact_hard1.wav"
		"wave"	"physics/wood/wood_solid_impact_hard2.wav"
		"wave"	"physics/wood/wood_solid_impact_hard3.wav"
	}
}

"Wood_Solid.ScrapeRough"
{
	"soundlevel"	"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_solid_scrape_rough_loop1.wav"
}

"Wood_Solid.ScrapeSmooth"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_plank_scrape_smooth_loop1.wav"
}

"Wood_Solid.Break"
{
	"soundlevel"		"SNDLVL_85dB"
	"volume"		"0.8"
	"pitch"		"90,98"
	"rndwave"
	{
		"wave"	"physics/wood/wood_plank_break1.wav"
		"wave"	"physics/wood/wood_plank_break3.wav"
	}
}

"Wood_Solid.Strain"
{
	"soundlevel"		"SNDLVL_85dB"
	"volume"		"0.6"
	"pitch"		"90,98"
	"rndwave"
	{
		"wave"	"physics/wood/wood_strain2.wav"
		"wave"	"physics/wood/wood_strain3.wav"
		"wave"	"physics/wood/wood_strain4.wav"
	}
}

// wood furniture - chairs, small tables


"Wood_Furniture.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_furniture_impact_soft1.wav"
		"wave"	"physics/wood/wood_furniture_impact_soft2.wav"
		"wave"	"physics/wood/wood_furniture_impact_soft3.wav"
	}
}

"Wood_Furniture.Break"
{
	"soundlevel"		"SNDLVL_85dB"
	"volume"		"0.8"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_furniture_break1.wav"
		"wave"	"physics/wood/wood_furniture_break2.wav"
	}
}

"Wood_Furniture.Strain"
{
	"soundlevel"		"SNDLVL_85dB"
	"volume"		"0.6"
	"pitch"		"100,104"
	"rndwave"
	{
		"wave"	"physics/wood/wood_strain2.wav"
		"wave"	"physics/wood/wood_strain3.wav"
		"wave"	"physics/wood/wood_strain4.wav"
	}
}

// wood panel - plywood panel sheet

"Wood_Panel.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/woodpanel1.wav"
		"wave"		"player/footsteps/woodpanel3.wav"
	}
}

"Wood_Panel.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"player/footsteps/woodpanel2.wav"
		"wave"		"player/footsteps/woodpanel4.wav"
	}
}

"Wood_Panel.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/wood/wood_box_impact_bullet1.wav"
		"wave"	"physics/wood/wood_box_impact_bullet2.wav"
		"wave"	"physics/wood/wood_box_impact_bullet3.wav"
		"wave"	"physics/wood/wood_box_impact_bullet4.wav"
	}
}

"Wood_Panel.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_box_impact_soft1.wav"
		"wave"	"physics/wood/wood_crate_impact_soft2.wav"
		"wave"	"physics/wood/wood_box_impact_soft3.wav"
	}
}


"Wood_Panel.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_crate_impact_hard2.wav"
		"wave"	"physics/wood/wood_crate_impact_hard3.wav"
		"wave"	"physics/wood/wood_panel_impact_hard1.wav"
	}
}

"Wood_Panel.ScrapeRough"
{
	"soundlevel"	"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_box_scrape_rough_loop1.wav"
}

"Wood_Panel.ScrapeSmooth"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/wood/wood_box_scrape_smooth_loop1.wav"
}

"Wood_Panel.Break"
{
	"soundlevel"		"SNDLVL_85dB"
	"volume"		"0.8"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_panel_break1.wav"
		"wave"	"physics/wood/wood_box_break1.wav"
	}
}

"Wood_Panel.Strain"
{
	"soundlevel"		"SNDLVL_85dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/wood/wood_strain2.wav"
		"wave"	"physics/wood/wood_strain3.wav"
		"wave"	"physics/wood/wood_strain4.wav"
	}
}


// metal box - smaller metal box (< 2' width/height/depth)

"Metal_Box.StepLeft"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/metal/metal_box_footstep1.wav"
		"wave"		"physics/metal/metal_box_footstep3.wav"
	}
}

"Metal_Box.StepRight"
{
	"soundlevel"		"SNDLVL_96dB"
	"volume"		"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		"physics/metal/metal_box_footstep2.wav"
		"wave"		"physics/metal/metal_box_footstep4.wav"
	}
}

"Metal_Box.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/metal/metal_box_impact_bullet1.wav"
		"wave"	"physics/metal/metal_box_impact_bullet2.wav"
		"wave"	"physics/metal/metal_box_impact_bullet3.wav"
	}
}

"Metal_Box.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/metal_box_impact_soft1.wav"
		"wave"	"physics/metal/metal_box_impact_soft2.wav"
		"wave"	"physics/metal/metal_box_impact_soft3.wav"
	}
}


"Metal_Box.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/metal_box_impact_hard1.wav"
		"wave"	"physics/metal/metal_box_impact_hard2.wav"
		"wave"	"physics/metal/metal_box_impact_hard3.wav"
	}
}

"Metal_Box.ScrapeRough"
{
	"soundlevel"	"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/metal/metal_box_scrape_rough_loop1.wav"
}

"Metal_Box.ScrapeSmooth"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.5"
	"pitch"		"96,104"
	"wave"		"physics/metal/metal_box_scrape_smooth_loop1.wav"
}

"Metal_Box.Break"
{
	"soundlevel"		"SNDLVL_85dB"
	"volume"		"0.8"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/metal_box_break1.wav"
		"wave"	"physics/metal/metal_box_break2.wav"
	}
}

"Metal_Box.Strain"
{
	"soundlevel"		"SNDLVL_85dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/metal_box_strain2.wav"
		"wave"	"physics/metal/metal_box_strain3.wav"
		"wave"	"physics/metal/metal_box_strain4.wav"
	}
}

// weapon body

"weapon.StepLeft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"1.0"
	"pitch"			"PITCH_NORM"
	"wave"		"physics/metal/weapon_footstep1.wav"
}

"weapon.StepRight"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"1.0"
	"pitch"			"PITCH_NORM"
	"wave"		"physics/metal/weapon_footstep2.wav"

}

"weapon.ImpactSoft"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/weapon_impact_soft1.wav"
		"wave"	"physics/metal/weapon_impact_soft2.wav"
		"wave"	"physics/metal/weapon_impact_soft3.wav"
	}
}


"weapon.ImpactHard"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.6"
	"pitch"		"98,100"
	"rndwave"
	{
		"wave"	"physics/metal/weapon_impact_hard1.wav"
		"wave"	"physics/metal/weapon_impact_hard2.wav"
		"wave"	"physics/metal/weapon_impact_hard3.wav"
	}
}

"weapon.BulletImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/plastic/plastic_box_impact_bullet5.wav"
		"wave"	"physics/metal/metal_computer_impact_bullet3.wav"
		"wave"	"physics/metal/metal_computer_impact_bullet1.wav"
	}
} 

"weapon.ScrapeRough"
{
	"soundlevel"	"SNDLVL_70dB"
	"volume"		"0.4"
	"pitch"		"75,85"
	"wave"		"physics/metal/soda_can_scrape_rough_loop1.wav"
}

"weapon.ScrapeSmooth"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"0.4"
	"pitch"		"96,104"
	"wave"		"physics/plastic/plastic_box_scrape_smooth_loop2.wav"
}

//Gunship

"Gunship.Impact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"1.0"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/metal/metal_solid_impact_hard1.wav"
	}
}

"Gunship.Scrape"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"1.0"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/metal/metal_solid_impact_hard1.wav"
	}
}

//Strider
"Strider.Impact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"1.0"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/flesh/flesh_strider_impact_bullet1.wav"
		"wave"	"physics/flesh/flesh_strider_impact_bullet2.wav"
		"wave"	"physics/flesh/flesh_strider_impact_bullet3.wav"
	}
}

"Strider.Scrape"
{
	"soundlevel"		"SNDLVL_70dB"
	"volume"		"1.0"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"	"physics/flesh/flesh_strider_impact_bullet1.wav"
		"wave"	"physics/flesh/flesh_strider_impact_bullet2.wav"
		"wave"	"physics/flesh/flesh_strider_impact_bullet3.wav"
	}
}

//Sawblade
"Metal.SawbladeStick"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"			"1.0"
	"pitch"			"98,104"
	
	"rndwave"
	{
		"wave"		"physics/metal/sawblade_stick1.wav"
		"wave"		"physics/metal/sawblade_stick2.wav"
		"wave"		"physics/metal/sawblade_stick3.wav"
	}
}

"Splash.SplashSound"
{
	"channel"		"CHAN_VOICE"
	"volume"		"0.800, 1.000"
	"pitch"			"85, 115"

	"soundlevel"	"SNDLVL_NORM"

	"rndwave"
	{
		"wave"	"ambient/water/water_splash1.wav"
		"wave"	"ambient/water/water_splash2.wav"
		"wave"	"ambient/water/water_splash3.wav"
	}
}