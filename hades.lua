
-- define way how australia stones etc. hase been created in Hades Revisited world

local S = minetest.get_translator("australia")

local function add_metamorphosis_report(node_name, report)
  local def = minetest.registered_nodes[node_name]
  if def._metamorphosis_report then
    report = def._metamorphosis_report.."\n\n"..report
  end
  minetest.override_item(node_name, {
      _metamorphosis_report = report
    })
end

function half_time_calc(interval, chance, treshold)
  local steps = math.log(0.5)/math.log((chance-1)/chance)
  -- 1.41 like calculation error compensation for param_treshold 15
  return math.floor(1.41*(treshold+1)*steps*interval/360+0.5)/10
end

local param_treshold = 15

-- rhyolitic tuff
-- from burned tuff
minetest.register_abm({
  label = "Create red stone",
  nodenames = {"hades_core:tuff_bak"},
	neighbors = {"group:water"},
	interval = 337,
	chance = 31,
  action = function(pos, node)
    if (minetest.find_node_near(pos, 1, {"group:lava"}) ~= nil) then
			node.param1 = node.param1 + 1
			if (node.param1>param_treshold) then
				minetest.set_node(pos, {name="hades_australia:red_stone"})
			else
				minetest.swap_node(pos, node)
			end
		end
	end,
})

add_metamorphosis_report("hades_core:tuff_baked",
    string.format(S("Burned tuff metamorphoses into rhyolitic tuff. It requires contact with water and lava. Half-metamorphose time is %i hours."),half_time_calc(337, 31, param_treshold))
  )

add_metamorphosis_report("hades_australia:red_stone", 
    S("Rhyolitic tuff arise by metamorphosis from burned tuff.")
  )
