-- mods/australia/init.lua

-- MOD: australia
-- See README.md for licensing and other information.
-- Designed for valleys mapgen in Minetest 0.4.14, but will work with mgv5,
-- mgv7, flat and fractal with limitations.

-- Check for necessary mod functions and abort if they aren't available.
if not minetest.get_biome_id then
	minetest.log()
	minetest.log("* Not loading MOD: Australia *")
	minetest.log("MOD: Australia requires mod functions which are")
	minetest.log(" not exposed by your Minetest build.")
	minetest.log()
	return
end

-- Definitions made by this mod that other mods can use too
aus = {}
aus.path = minetest.get_modpath(minetest.get_current_modname())
aus.schematics = {}

-- Set the following to 1 to enable biome or 0 to disable
aus.biome_underground				= 0
aus.biome_mangroves					= 0
aus.biome_tasman_sea				= 0
aus.biome_great_australian_bight	= 0
aus.biome_indian_ocean				= 0
aus.biome_great_barrier_reef		= 0
aus.biome_timor_sea					= 0
aus.biome_jarrah_karri_forests		= 0
aus.biome_eastern_coasts			= 0
aus.biome_goldfields_esperence		= 0
aus.biome_arnhem_land				= 0
aus.biome_gulf_of_carpentaria		= 0
aus.biome_far_north_queensland		= 0
aus.biome_pilbara					= 0
aus.biome_kimberley					= 0
aus.biome_tasmania					= 0
aus.biome_great_dividing_range		= 0
aus.biome_victorian_forests			= 0
aus.biome_murray_darling_basin		= 0
aus.biome_mulga_lands				= 0
aus.biome_flinders_lofty			= 0
aus.biome_central_australia			= 0
aus.biome_simpson_desert			= 0
aus.biome_australian_alps			= 0

-- Load files
dofile(aus.path .. "/functions.lua")
dofile(aus.path .. "/nodes.lua")
dofile(aus.path .. "/noairblocks.lua")
dofile(aus.path .. "/craftitems.lua")
dofile(aus.path .. "/crafting.lua")
dofile(aus.path .. "/trees.lua")
--dofile(aus.path .. "/mapgen.lua")
dofile(aus.path .. "/saplings.lua")
--dofile(aus.path .. "/voxel.lua")

minetest.log("MOD: Australia loaded")
