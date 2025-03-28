QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.Jobs = {
	["unemployed"] = {
		label = "Civilian",
		type = "city",
		defaultDuty = true,
		unlimitedPaycheckMoney = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Freelancer", payment = 100, tip = 0},
		},
	},
	["lspd"] = {
		label = "Los Santos PD",
		type = "leo",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"]  = { name = "Cadet",                     payment = 550, tip = 0.03 },
			["1"]  = { name = "Officer",                   payment = 575, tip = 0.04 },
			["2"]  = { name = "Senior Officer",            payment = 625, tip = 0.04 },
			["3"]  = { name = "Corporal",                  payment = 675, tip = 0.05 },
			["4"]  = { name = "Sergeant",                  payment = 700, tip = 0.06 },
			["5"]  = { name = "Lieutenant",                payment = 750, tip = 0.07 },
			["6"]  = { name = "Captain",                   payment = 800, tip = 0.08 },
			["7"]  = { name = "Commander",                 isboss = true, payment = 850, tip = 0.09 },
			["8"]  = { name = "Deputy Chief",              isboss = true, payment = 900, tip = 0.10 },
			["9"]  = { name = "Assistant Chief of Police", isboss = true, payment = 1000, tip = 0.10 },
			["10"] = { name = "Chief of Police",           isboss = true, payment = 1250, tip = 0.10 },
			["11"] = { name = "Commissioner",              isboss = true, payment = 1250, tip = 0.10 },
			["12"] = { name = "Special Ops",               isboss = true, payment = 1250, tip = 0.10 },
		},
	},
	["bcso"] = {
		label = "Blaine County Sherrifs",
		type = "leo",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"]  = { name = "Probationary Deputy", payment = 550, tip = 0.03 },
			["1"]  = { name = "Deputy",              payment = 575, tip = 0.04 },
			["2"]  = { name = "Senior Deputy",       payment = 625, tip = 0.04 },
			["3"]  = { name = "Corporal",            payment = 675, tip = 0.05 },
			["4"]  = { name = "Sergeant",            payment = 700, tip = 0.06 },
			["5"]  = { name = "Lieutenant",          payment = 750, tip = 0.07 },
			["6"]  = { name = "Captain",             payment = 800, tip = 0.08 },
			["7"]  = { name = "Commander",           isboss = true, payment = 850, tip = 0.09 },
			["8"]  = { name = "Under Sheriff",       isboss = true, payment = 900, tip = 0.10 },
			["9"]  = { name = "Assistant Sheriff",   isboss = true, payment = 1000, tip = 0.10 },
			["10"] = { name = "Sheriff",             isboss = true, payment = 1250, tip = 0.10 },
		},
	},
	["fib"] = {
		label = "Federal Investigation Bureau",
		type = "leo",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Trainee Agent",      payment = 600, tip = 0 },
			["1"] = { name = "Senior Agent",       payment = 700, tip = 0 },
			["2"] = { name = "Field Agent",        payment = 800, tip = 0 },
			["3"] = { name = "Special Agent",      payment = 900, tip = 0 },
			["4"] = { name = "Operations Manager", isboss = true, payment = 1000, tip = 0 },
		},
	},
	["ambulance"] = {
		label = "Ambulance",
		type = "civ",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Intern",          payment = 500, tip = 0 },
			["1"] = { name = "Paramedic",       payment = 600, tip = 0 },
			["2"] = { name = "Nurse",           payment = 700, tip = 0 },
			["3"] = { name = "Head Nurse",      payment = 800, tip = 0 },
			["4"] = { name = "Resident Doctor", payment = 900, tip = 0 },
			["5"] = { name = "Head Doctor",     isboss = true, payment = 1000, tip = 0 },
			["6"] = { name = "Director",        isboss = true, payment = 1250, tip = 0 }
		},
	},
	["realestate"] = {
		label = "Real Estate",
		type = "city",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Recruit",        payment = 650, tip = 0 },
			["1"] = { name = "House Sales",    payment = 675, tip = 0 },
			["2"] = { name = "Business Sales", payment = 700, tip = 0 },
			["3"] = { name = "Bossy Becky",    isboss = true, payment = 775, tip = 0 },
			["4"] = { name = "Owner",          isboss = true, payment = 800, tip = 0 },
		},
	},
	["taxi"] = {
		label = "Taxi",
		type = "city",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Recruit",      payment = 400, tip = 0 },
			["1"] = { name = "Driver",       payment = 450, tip = 0 },
			["2"] = { name = "Event Driver", payment = 475, tip = 0 },
			["3"] = { name = "Sales",        payment = 600, tip = 0 },
			["4"] = { name = "Manager",      isboss = true, payment = 650, tip = 0 },
		},
	},
	["reporter"] = {
		label = "Reporter",
		type = "city",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Journalist", payment = 400, tip = 0},
		},
	},
	["garbage"] = {
		label = "Garbage",
		type = "city",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Collector", payment = 400, tip = 0},
		},
	},
	["casino"] = {
		label = "Diamond Casino",
		type = "civ",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Part Timer", payment = 650, tip = 0 },
			["1"] = { name = "Security",   payment = 700, tip = 0 },
			["2"] = { name = "Manager",    payment = 750, tip = 0 },
			["3"] = { name = "Owner",      isboss = true, payment = 800, tip = 0 }
		},
	},
	["tequila"] = {
		label = "Tequila La La",
		type = "civ",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Bouncer",          payment = 650, tip = 0 },
			["1"] = { name = "Bartender",        payment = 700, tip = 0 },
			["2"] = { name = "Shift Supervisor", isboss = true, payment = 750, tip = 0 },
			["3"] = { name = "Boss",             isboss = true, payment = 800, tip = 0 }
		},
	},
	["trucker"] = {
		label = "Trucker",
		type = "city",
		defaultDuty = true,
		offDutyPay = false,
		grades = { ["0"] = { name = "Employee", payment = 400, tip = 0} },
	},
	["paintball"] = {
		label = "Paintball",
		type = "civ",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Employee", payment = 700, tip = 0.10, },
			["1"] = { name = "Security", payment = 750, tip = 0.12, },
			["2"] = { name = "Boss",     isboss = true, payment = 800, tip = 0.15, },
		},
	},
	["doj"] = {
		label = "Department of Justice",
		type = "civ",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Paralegal",                   payment = 500, tip = 0.15 },
			["1"] = { name = "Lawyer",                      payment = 600, tip = 0.15 },
			["2"] = { name = "Assistant District Attorney", payment = 700, tip = 0.15 },
			["3"] = { name = "District Attorney",           isboss = true, payment = 800, tip = 0.15 },
			["4"] = { name = "Judge",                       isboss = true, payment = 900, tip = 0.15 },
			["5"] = { name = "Assistant Chief Justice",     isboss = true, payment = 1000, tip = 0.15 },
			["6"] = { name = "Chief Justice",               isboss = true, payment = 1100, tip = 0.15 },
			["7"] = { name = "Mayor",                       isboss = true, payment = 1250, tip = 0.15 }
		}
	},
	["cardealer"] = {
		label = "Car Dealer",
		type = "civ",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Employee",         payment = 600, tip = 0 },
			["1"] = { name = "Shift Supervisor", payment = 650, tip = 0 },
			["2"] = { name = "General Manager",  payment = 700, tip = 0 },
			["3"] = { name = "Boss",             payment = 750, tip = 0 },
			["4"] = { name = "Owner",            isboss = true, payment = 750, tip = 0 }
		},
	},
	["importedcardealer"] = {
		label = "Rockford Luxury Imports",
		type = "civ",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Employee", payment = 1, tip = 0 },
			["1"] = { name = "Boss",     isboss = true, payment = 1, tip = 0 },
		},
	},
	["mechanic"] = {
		label = "Los Santos Customs",
		type = "mechanic",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Probie",             				payment = 675, tip = 0.11 },
			["1"] = { name = "Experienced Mechanic",         	payment = 700, tip = 0.12 },
			["2"] = { name = "Senior Mechanic",              	payment = 750, tip = 0.13 },
			["3"] = { name = "Assistant to the Owner", 			isboss = true, payment = 775, tip = 0.14 },
			["4"] = { name = "Owner",           				isboss = true, payment = 800, tip = 0.15 }
		}
	},
	["dreamworks"] = {
		label = "Dreamworks",
		type = "mechanic",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Trainee",             			payment = 675, tip = 0.10 },
			["1"] = { name = "Mechanic",         				payment = 700, tip = 0.12 },
			["2"] = { name = "Assistant Manager",              	payment = 750, tip = 0.13 },
			["3"] = { name = "Manager", 						isboss = true, payment = 775, tip = 0.15 },
			["4"] = { name = "Boss",           					isboss = true, payment = 800, tip = 0 }
		}
	},
	["paletomech"] = {
		label = "Paleto Mechanic Shop",
		type = "mechanic",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Trainee",             			payment = 675, tip = 0.11 },
			["1"] = { name = "JR Mechanic",         			payment = 700, tip = 0.12 },
			["2"] = { name = "Mechanic",              			payment = 750, tip = 0.13 },
			["3"] = { name = "Manager", 						isboss = true, payment = 775, tip = 0.14 },
			["4"] = { name = "Mechanic Boss",           		isboss = true, payment = 800, tip = 0.15 }
		}
	},
	["taco"] = {
		label = "Taco",
		type = "civ",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Employee",         payment = 700, tip = 0 },
			["1"] = { name = "Shift Supervisor", payment = 750, tip = 0 },
			["2"] = { name = "Boss",             isboss = true, payment = 800, tip = 0 }
		},
	},
	["weapondealer"] = {
		label = "Weapon Dealer",
		type = "civ",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Trainee",        		   payment = 650, tip = 0.11 },
			["1"] = { name = "Sales Rep", 			   payment = 700, tip = 0.12 },
			["2"] = { name = "Manager",                isboss = true, payment = 750, tip = 0.13 },
			["3"] = { name = "Owner",                  isboss = true, payment = 800, tip = 0.15 }
		},
	},
	["drivingschool"] = {
		label = "Driving School",
		type = "city",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Instructor", payment = 1 ,tip = 0 } ,
			["1"] = { name = "Boss",       isboss = true, payment = 1 ,tip = 0 },
		},
	},
	["luchettis"] = {
		label = "Luchetti's",
		type = "civ",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Waiter",         	payment = 650, tip = 0 },
			["1"] = { name = "Cashier",        	payment = 675, tip = 0 },
			["2"] = { name = "Cook",           	payment = 700, tip = 0 },
			["3"] = { name = "Supervisor", 		isboss = true, payment = 750, tip = 0 },
			["4"] = { name = "Boss",            isboss = true, payment = 800, tip = 0 }
		},
	},
	["mexcafe"] = {
		label = "Arriba's",
		type = "civ",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Bartender",         payment = 650, tip = 0.12 },
			["1"] = { name = "Cook", 			  payment = 700, tip = 0.13 },
			["2"] = { name = "Manager",           isboss = true, payment = 750, tip = 0.15 },
			["3"] = { name = "Boss",              isboss = true, payment = 800, tip = 0 }
		},
	},
	["burger"] = {
		label = "Burgershot",
		type = "civ",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Employee",         payment = 700, tip = 0 },
			["1"] = { name = "Shift Supervisor", payment = 750, tip = 0 },
			["2"] = { name = "Boss",             isboss = true, payment = 800, tip = 0 }
		},
	},
	["butcher"] = {
		label = "Butcher",
		type = "city",
		defaultDuty = true,
		offDutyPay = false,
		grades = { ["0"] = { name = "Employee", payment = 400, tip = 0} },
	},
	["miner"] = {
		label = "Miner",
		type = "city",
		defaultDuty = true,
		offDutyPay = false,
		grades = { ["0"] = { name = "Employee", payment = 400, tip = 0} },
	},
	["recycle"] = {
		label = "Recycling Center",
		type = "city",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Employee", payment = 600, tip = 0},
			["1"] = { name = "Manager", isboss = true, payment = 700, tip = 0 }
		},
	},
	["changgang"] = {
		label = "Chang Gang Enterprises",
		type = "civ",
		defaultDuty = true,
		offDutyPay = false,
		unlimitedPaycheckMoney = true,
		grades = {
			["0"] = { name = "Delivery Driver",  payment = 650, tip = 0.05 },
			["1"] = { name = "Waiter",           payment = 650, tip = 0.05 },
			["2"] = { name = "Bar Staff",        payment = 675, tip = 0.05 },
			["3"] = { name = "Cook",             payment = 700, tip = 0.05 },
			["4"] = { name = "Head Chef",        payment = 750, tip = 0.05 },
			["5"] = { name = "Little Pig",       isboss = true, payment = 775, tip = 0.05 },
			["6"] = { name = "Lady Pig",         isboss = true, payment = 775, tip = 0.05 },
			["7"] = { name = "Chief Pig",        isboss = true, payment = 800, tip = 0.05 }
		},
	},
	["arcade"] = {
		label = "Arcade",
		type = "civ",
		offDutyPay = false,
		defaultDuty = true,
		grades = {
			["0"] = { name = "Employee",      payment = 600, tip = 0 },
			["1"] = { name = "Employee Plus", payment = 650, tip = 0 },
			["2"] = { name = "Shift Manager", payment = 700, tip = 0 },
			["3"] = { name = "Manager",       payment = 750, tip = 0 },
			["4"] = { name = "Boss",          isboss = true, payment = 800, tip = 0 },
		},
	},
	["whitewidow"] = {
		label = "White Widow",
		type = "civ",
		offDutyPay = false,
		defaultDuty = true,
		grades = {
			["0"] = { name = "Budtender", 	payment = 700, tip = 0.13 },
			["1"] = { name = "Manager", 	isboss = true, payment = 750, tip = 0.14 },
			["2"] = { name = "Boss", 		isboss = true, payment = 800, tip = 0.15 }
		},
	},
	["uwu"] = {
		label = "uWu Cafe",
		type = "civ",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			["0"] = { name = "Crewu Member",       payment = 650, tip = 0 },
			["1"] = { name = "Sr. Crewu Member",   payment = 700, tip = 0 },
			["2"] = { name = "Meownager", 		isboss = true, payment = 750, tip = 0 },
			["3"] = { name = "OwOwner",       	isboss = true, payment = 800, tip = 0 },
		},
	},
	['bean'] = {
        label = "Bean Machine",
		type = "civ",
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ["0"] = { name = "Stocker", payment = 650, tip = 0.13 },
            ["1"] = { name = "Barista", payment = 700, tip = 0.14 },
            ["2"] = { name = "Manager", payment = 750, tip = 0.15 },
            ["3"] = { name = "Boss",    isboss = true, payment = 800, tip = 0 },
        },
    },
	['lumberjack'] = {
		label = 'LumberJack',
		type = "city",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = { name = 'Logger', payment = 400, tip = 0},
        },
	},
	['hookers'] = {
		label = 'Hookers Towing',
		type = "civ",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = { name = 'A Hooker', payment = 750, tip = 0.10 },
			['1'] = { name = 'The Hooker', payment = 800, tip = 0.15 },
        },
	},
	['hookahlounge'] = {
        label = 'Hookah Lounge',
		type = "civ",
        defaultDuty = true,
		offDutyPay = false,
        grades = {
            ['0'] = { name = 'Employee',   payment = 650, tip = 0.12 },
            ['1'] = { name = 'Supervisor', payment = 700, tip = 0.13 },
            ['2'] = { name = 'Manager',    payment = 750, tip = 0.14, isboss = true,},
            ['3'] = { name = 'Boss',       payment = 800, tip = 0.15, isboss = true, },
        },
    },
	['henhouse'] = {
        label = 'Henhouse',
		type = "civ",
        defaultDuty = true,
		offDutyPay = false,
        grades = {
            ['0'] = { name = 'Bartender',     	payment = 650, tip = 0.12 },
            ['1'] = { name = 'Security', 		payment = 700, tip = 0.13 },
            ['2'] = { name = 'Manager',     	payment = 750, tip = 0.14, isboss = true, },
            ['3'] = { name = 'Owner',        	payment = 800, tip = 0.15, isboss = true, },
        },
    },
	['skybar'] = {
        label = 'Sky Bar',
		type = "civ",
        defaultDuty = true,
		offDutyPay = false,
        grades = {
            ['1'] = { name = 'Bartender', 			payment = 675, tip = 0.13 },
            ['2'] = { name = 'Supervisor',     		payment = 700, tip = 0.14 },
            ['3'] = { name = 'Boss',        		payment = 750, tip = 0.15, isboss = true, },
        },
    },
	['drusillas'] = {
        label = 'Drusillas',
		type = "civ",
        defaultDuty = true,
		offDutyPay = false,
        grades = {
            ['0'] = { name = 'Caterer',     		payment = 650, tip = 0.13 },
            ['1'] = { name = 'Chef', 				payment = 700, tip = 0.14 },
            ['2'] = { name = 'Manager',     		payment = 750, tip = 0.15, isboss = true },
            ['3'] = { name = 'Boss',        		payment = 800, tip = 0, isboss = true },
        },
    },
	['vanilla'] = {
        label = 'Vanilla Unicorn',
		type = "civ",
        defaultDuty = true,
		offDutyPay = false,
        grades = {
            ['0'] = { name = 'Floater',     		payment = 650, tip = 0 },
            ['1'] = { name = 'Security', 			payment = 700, tip = 0 },
			['2'] = { name = 'Bartender', 			payment = 750, tip = 0 },
            ['3'] = { name = 'Manager',     		payment = 775, tip = 0, isboss = true },
            ['4'] = { name = 'Owner',        		payment = 800, tip = 0, isboss = true },
        },
    },
	['vespuccicustoms'] = {
        label = 'Vespucci Customs',
		type = "mechanic",
        defaultDuty = true,
		offDutyPay = false,
        grades = {
            ['0'] = { name = 'Trainee Mechanic',    payment = 650, tip = 0.12 },
            ['1'] = { name = 'Mechanic', 			payment = 700, tip = 0.13 },
            ['2'] = { name = 'Lead Mechanic',     	payment = 750, tip = 0.14, isboss = true },
            ['3'] = { name = 'Shop Manager',       	payment = 775, tip = 0.15, isboss = true },
			['4'] = { name = 'Boss',        		payment = 800, tip = 0, isboss = true },
        },
    },
	['koi'] = {
        label = 'Koi Restaurant',
		type = "civ",
        defaultDuty = true,
		offDutyPay = false,
        grades = {
            ['0'] = { name = 'Cook',    			payment = 650, tip = 0.12 },
            ['1'] = { name = 'Waiter', 				payment = 700, tip = 0.13 },
            ['2'] = { name = 'Superviser',     		payment = 750, tip = 0.14, isboss = true },
            ['3'] = { name = 'Manager',       		payment = 775, tip = 0.15, isboss = true },
			['4'] = { name = 'Boss',        		payment = 800, tip = 0, isboss = true },
        },
    },
	['pondcafe'] = {
        label = 'Pond Cafe',
		type = "civ",
        defaultDuty = true,
		offDutyPay = false,
        grades = {
            ['0'] = { name = 'Cook',    			payment = 650, tip = 0.12 },
            ['1'] = { name = 'Waiter', 				payment = 700, tip = 0.13 },
            ['2'] = { name = 'Superviser',     		payment = 750, tip = 0.14, isboss = true },
            ['3'] = { name = 'Manager',       		payment = 775, tip = 0.15, isboss = true },
			['4'] = { name = 'Boss',        		payment = 800, tip = 0, isboss = true },
        },
    },
	['goldenpub'] = {
        label = 'Golden Pub',
		type = "civ",
        defaultDuty = true,
		offDutyPay = false,
        grades = {
            ['0'] = { name = 'Cook',    			payment = 650, tip = 0.12 },
            ['1'] = { name = 'Waiter', 				payment = 700, tip = 0.13 },
            ['2'] = { name = 'Superviser',     		payment = 750, tip = 0.14, isboss = true },
            ['3'] = { name = 'Manager',       		payment = 775, tip = 0.15, isboss = true },
			['4'] = { name = 'Boss',        		payment = 800, tip = 0, isboss = true },
        },
    },
	['pawnshop'] = {
        label = 'Pawnshop',
		type = "civ",
        defaultDuty = false,
		offDutyPay = false,
        grades = {
            ['0'] = { name = 'Pawnshop Loser',    			payment = 650, tip = 0.12, isboss = true },
        },
    },
	['hotwheels'] = { -- the businessName from config_business.lua
    	label = 'Hot Wheels Tattoos',
    	defaultDuty = true,
    	offDutyPay = false,
    	grades = { -- names must be same as in config_business.lua
			['0'] = { name = 'Tattoo Artist',    			payment = 650, tip = 0.12, isboss = false },
			['1'] = { name = 'Shop Manager',    			payment = 700, tip = 0.12, isboss = true },
			['2'] = { name = 'Boss',    					payment = 800, tip = 0.12, isboss = true },
		},
	},
	['treasurehunter'] = {
        label = 'Treasure Hunter',
		type = "civ",
        defaultDuty = false,
		offDutyPay = false,
        grades = {
            ['0'] = { name = 'Treasure Hunter',    			payment = 650, tip = 0.12, isboss = false },
			['1'] = { name = 'Treasure Hunter',    			payment = 650, tip = 0.12, isboss = true },
        },
    },
	hayes = {
        label = "Haye's Mechanic Shop",
		type = "mechanic",
        defaultDuty = true,
		offDutyPay = false,
        grades = {
            ['0'] = { name = 'Trainee',    payment = 450, tip = 0.15 },
            ['1'] = { name = 'Mechanic', 			payment = 550, tip = 0.20 },
            ['2'] = { name = 'Shop Manager',     	payment = 600, tip = 0.20, isboss = true },
            ['3'] = { name = 'Shop Owner (Boss)',       	payment = 650, tip = 0.20, isboss = true },
        },
    },
}
