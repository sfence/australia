-- mods/australia/craftitems.lua

	-- Fiddlehead
minetest.register_craftitem("hades_australia:fiddlehead", {
	description = "Fiddlehead",
	inventory_image = "aus_fiddlehead.png",
	on_use = minetest.item_eat(-1), -- slightly poisonous when raw
})

minetest.register_craftitem("hades_australia:fiddlehead_roasted", {
	description = "Roasted Fiddlehead",
	inventory_image = "aus_fiddlehead_roasted.png",
	on_use = minetest.item_eat(1), -- edible when cooked
})

	-- Fern tuber
minetest.register_craftitem("hades_australia:ferntuber", {
	description = "Fern Tuber",
	inventory_image = "aus_ferntuber.png",
})

minetest.register_craftitem("hades_australia:ferntuber_roasted", {
	description = "Roasted Fern Tuber",
	inventory_image = "aus_ferntuber_roasted.png",
	on_use = minetest.item_eat(3),
})

	-- Bucket muddy_water
bucket.register_liquid(
	"hades_australia:muddy_river_water_source",
	"hades_australia:muddy_river_water_flowing",
	"hades_australia:bucket_muddy_river_water",
	"aus_bucket_muddy_water.png",
	"Muddy Water Bucket",
	{water_bucket = 1}
)

	-- Stairs and slabs
for i in ipairs(aus.treelist) do
	local treename			= aus.treelist[i][1]
	local treedesc			= aus.treelist[i][2]
	local nodename = "hades_australia:"..treename.."_wood"

	if minetest.get_modpath("hades_moreblocks") then
		local ndef = table.copy(minetest.registered_nodes[nodename])
		ndef.sunlight_propagates = true
		stairsplus:register_all(
				"hades_australia",
				"aus_"..treename.."_wood",
				nodename,
				ndef
			)
	elseif minetest.get_modpath("hades_stairs") then
		hades_stairs.register_stair_and_slab(
			"aus_"..treename.."_wood",
			nodename,
			{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
			{"aus_"..treename.."_wood.png" },
			treedesc.." Wood Stair",
			treedesc.." Wood Outer Stair",
			treedesc.." Wood Inner Stair",
			treedesc.." Wood Slab",
			hades_sounds.node_sound_wood_defaults()
		)
	end
end

