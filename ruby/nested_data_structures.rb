Asian_Computer_Cafe = {
	people: ['students', 'workers', 'civilians'],
	technology: { computers: ['keyboard','mouse','tower'],
				  server: ['processor','firewall','main interface'] 
				}, # technology
	bathroom: ['toilet', 'sink', 'soap', 'poop'],
	sale_items: { ramen_noodle: ['beef','chicken','spicy'],
				  snacks: { chips: ['pizza flavor', 'sour cream and onion'],
							candy: ['lollipop','chocolate'] 
						  }, # snacks
				  cigarettes: { malboro: { menthol: ['ice blast','black'],
										   nonmenthol: ['lights','reds','premium'] 
										 } # malboro
							  } # cigarettes
				}, # sale_items
	games: { mmo: { rpg: ['final fantasy','perfect world','world of warcraft'],
					multiplayer: ['dota2','league of legends','world of tanks','heroes of newerth'] 
				  }, # mmo
			 fps: ['counter strike', 'call of duty', 'sniper'],
			 old_school: { basic: ['solitaire','spades','pinball'],
			 			   browser: { flash: { gamefudge: ['balloons','sonic'],
			 			   					   addictinggames: ['tower defense','qwop']
											 }, # flash
									  javascript: 'runescape',
									  shockwave: 'inklink'
									} # browser
						 } # old_school
		   } # games
} # Asian_Computer_Cafe

p Asian_Computer_Cafe[:technology][:server][1]
p Asian_Computer_Cafe[:sale_items][:snacks][:chips][0]
p Asian_Computer_Cafe[:sale_items][:cigarettes][:malboro][:nonmenthol][0]
p Asian_Computer_Cafe[:games][:fps][1]
p Asian_Computer_Cafe[:games][:old_school][:browser][:javascript]