-- mods/australia/crafting.lua

minetest.register_craft({
	output = 'hades_australia:red_stonebrick 4',
	recipe = {
		{'hades_australia:red_stone', 'hades_australia:red_stone', ''},
		{'', 'hades_australia:red_stone', 'hades_australia:red_stone'},
	}
})

minetest.register_craft({
	output = 'hades_australia:bluestone_brick 4',
	recipe = {
		{'hades_australia:bluestone', 'hades_australia:bluestone', ''},
		{'', 'hades_australia:bluestone', 'hades_australia:bluestone'},
	}
})

	-- Fences
for i in ipairs(aus.treelist) do
	local treename			= aus.treelist[i][1]
	minetest.register_craft({
		output = "hades_australia:fence_"..treename.."_wood 4",
		recipe = {
			{"hades_australia:"..treename.."_wood", "group:stick", "hades_australia:"..treename.."_wood"},
			{"hades_australia:"..treename.."_wood", "group:stick", "hades_australia:"..treename.."_wood"},
		}
	})
end

minetest.register_craft({
	type = "shapeless",
	output = "hades_australia:fiddlehead 3",
	recipe = {"hades_australia:fern_01"},
	replacements = {
		{"hades_australia:fern_01", "hades_australia:ferntuber"}
	},
})

minetest.register_craft({
	type = "shapeless",
	output = "hades_australia:fiddlehead 3",
	recipe = {"hades_australia:tree_fern_leaves"},
	replacements = {
		{"hades_australia:tree_fern_leaves", "hades_australia:sapling_tree_fern"}
	},
})

	-- Wood planks
for i in ipairs(aus.treelist) do
	local treename			= aus.treelist[i][1]
	minetest.register_craft({
		output = "hades_australia:"..treename.."_wood 4",
		recipe = {
			{"hades_australia:"..treename.."_tree"}
		}
	})
end



--
-- Cooking recipes
--

minetest.register_craft({
	type = "cooking",
	output = "hades_australia:bluestone",
	recipe = "hades_australia:bluestone_cobble",
})

minetest.register_craft({
	type = "cooking",
	output = "hades_australia:red_stone",
	recipe = "hades_australia:red_cobble",
})

minetest.register_craft({
	type = "cooking",
	output = "hades_australia:ferntuber_roasted",
	recipe = "hades_australia:ferntuber",
	cooktime = 3,
})

minetest.register_craft({
	type = "cooking",
	output = "hades_australia:fiddlehead_roasted",
	recipe = "hades_australia:fiddlehead",
	cooktime = 1,
})



--
-- Fuels
--

