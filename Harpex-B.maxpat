{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 0,
			"revision" : 6,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 34.0, 79.0, 1852.0, 963.0 ],
		"bgcolor" : [ 0.755139, 0.735693, 0.708943, 1.0 ],
		"editing_bgcolor" : [ 0.755139, 0.735693, 0.708943, 1.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Monaco",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 1,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "wm20150520a",
		"subpatcher_template" : "my template",
		"boxes" : [ 			{
				"box" : 				{
					"attr" : "bypass",
					"id" : "obj-25",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 107.0, 622.0, 150.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 341.5, 403.0, 126.0, 23.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 629.0, 575.0, 150.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 341.5, 279.5, 54.0, 21.0 ],
					"style" : "",
					"text" : "Harpex"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 141.0, 195.0, 150.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 171.0, 279.5, 57.0, 21.0 ],
					"style" : "",
					"text" : "Szone"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 573.0, 533.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 341.5, 376.0, 100.0, 20.0 ],
					"style" : "",
					"text" : "ReadPreset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 518.0, 503.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 341.5, 345.0, 100.0, 20.0 ],
					"style" : "",
					"text" : "WritePreset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 467.0, 474.5, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 341.5, 314.0, 100.0, 20.0 ],
					"style" : "",
					"text" : "OpenPlugin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 467.0, 575.0, 39.0, 23.0 ],
					"style" : "",
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 573.0, 575.0, 37.0, 23.0 ],
					"style" : "wm20150520a",
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 518.0, 575.0, 47.0, 23.0 ],
					"style" : "wm20150520a",
					"text" : "write"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 130.0, 408.0, 68.0, 27.0 ],
					"style" : "",
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 130.0, 443.0, 104.0, 23.0 ],
					"style" : "",
					"text" : "read atob.fxp"
				}

			}
, 			{
				"box" : 				{
					"channels" : 4,
					"fontname" : "Monaco",
					"id" : "obj-8",
					"maxclass" : "live.gain~",
					"numinlets" : 4,
					"numoutlets" : 7,
					"outlettype" : [ "signal", "signal", "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 310.5, 451.5, 114.0, 118.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[1]",
							"parameter_shortname" : "B Format",
							"parameter_type" : 0,
							"parameter_mmin" : -70.0,
							"parameter_mmax" : 6.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_unitstyle" : 4
						}

					}
,
					"slidercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"varname" : "live.gain~[2]"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 14,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 310.5, 622.0, 183.0, 27.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, 4, 8, "Harpex-B-32.vst", ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~",
							"parameter_shortname" : "vst~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"annotation_name" : "",
						"parameter_enable" : 1
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 1,
						"name" : "Harpex-B-32.vst",
						"origin" : "Harpex-B-32.vst",
						"type" : "VST",
						"subtype" : "AudioEffect",
						"snapshot" : 						{
							"pluginname" : "Harpex-B-32.vst",
							"plugindisplayname" : "Harpex-B-32",
							"pluginsavedname" : "Harpex-B-32",
							"pluginsaveduniqueid" : 0,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "592.CMlaKA....fQPMDZ....AbmMyXC...fd.............................................H.Ed2cW+....7C...vO....+....7C...vO....+rGEt3C...vOMyLy9LyLy7SjZB1O...v93c2c8SUUUsOUUUE+....7C...fO...X+nppp5C.....qppJ+....7C...vO....+....7C...vO....+....7C...vOIhHB9jHhH3ShHhfOIhHB9jHhH3ShHhfOIhHB9jHhH3i2c20Od2cW+3c2c8i2c20Od2cW+3c2c8i2c20Od2cW+.....................................................................................vppphO....+....6C...nO....9.........1O...P+...f7i2c20Od2cW+3c2c8i2c20Od2cW+3c2c8i2c20Od2cW+.........................................................................................................nO.....................vwww8C...xO....+rGEt3i2c20O....+....6ilYloOd2cW+....1C...jO...f8....4CLYNvN......................................................................................"
						}

					}
,
					"style" : "",
					"text" : "vst~ 4 8 Harpex-B-32.vst",
					"varname" : "vst~",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"attr" : "speed",
					"id" : "obj-11",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 303.0, -9.830002, 150.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 401.0, 84.169998, 223.0, 23.0 ],
					"style" : "wm20150520a"
				}

			}
, 			{
				"box" : 				{
					"hiderwff" : 1,
					"id" : "obj-9",
					"maxclass" : "playbar",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 553.0, 31.17, 196.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 92.0, 141.169998, 525.0, 48.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"attr" : "timestretch",
					"id" : "obj-76",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 385.0, 31.17, 150.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 401.0, 55.5, 223.0, 23.0 ],
					"style" : "wm20150520a"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Futura Medium",
					"fontsize" : 12.0,
					"id" : "obj-133",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1371.300049, 216.0, 115.0, 28.0 ],
					"style" : "",
					"text" : "route append clear"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.46915, 0.713594, 0.74902, 1.0 ],
					"bgoncolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"fontname" : "Futura Medium",
					"id" : "obj-135",
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1369.300049, 54.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 581.0, 412.0, 130.0, 20.0 ],
					"style" : "",
					"text" : "Audio Card Settings",
					"textcolor" : [ 0.15, 0.15, 0.15, 1.0 ],
					"texton" : "Stop",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textovercolor" : [ 0.1, 0.1, 0.1, 1.0 ],
					"usebgoncolor" : 1,
					"usetextovercolor" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Futura Medium",
					"fontsize" : 12.0,
					"id" : "obj-134",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1369.300049, 109.0, 38.0, 24.0 ],
					"style" : "",
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Futura Medium",
					"fontsize" : 12.0,
					"id" : "obj-132",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 1369.300049, 148.0, 40.0, 28.0 ],
					"style" : "",
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"bgoncolor" : [ 0.07451, 0.74902, 0.278431, 1.0 ],
					"fontname" : "Futura Medium",
					"id" : "obj-120",
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1371.300049, 251.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 581.0, 387.0, 100.0, 20.0 ],
					"style" : "",
					"text" : "Audio Off",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"texton" : "Audio On",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1,
					"usetextovercolor" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Futura Medium",
					"fontsize" : 12.0,
					"id" : "obj-119",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 1371.300049, 184.0, 92.0, 28.0 ],
					"style" : "",
					"text" : "adstatus switch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1055.0, 97.0, 97.0, 27.0 ],
					"style" : "",
					"text" : "prepend open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 1055.0, 47.0, 83.0, 27.0 ],
					"style" : "",
					"text" : "opendialog"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 194.0, 295.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 164.0, 376.0, 100.0, 20.0 ],
					"style" : "",
					"text" : "ReadPreset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 139.0, 265.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 164.0, 345.0, 100.0, 20.0 ],
					"style" : "",
					"text" : "WritePreset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 88.0, 236.5, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 164.0, 314.0, 100.0, 20.0 ],
					"style" : "",
					"text" : "OpenPlugin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 88.0, 337.0, 39.0, 23.0 ],
					"style" : "",
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1055.0, 2.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 92.0, 57.0, 100.0, 20.0 ],
					"style" : "wm20150520a",
					"text" : "LoadSound",
					"texton" : "LoadSound"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "signal", "signal", "bang" ],
					"patching_rect" : [ 310.5, 135.0, 75.0, 27.0 ],
					"saved_object_attributes" : 					{
						"basictuning" : 440,
						"followglobaltempo" : 0,
						"formantcorrection" : 0,
						"mode" : "basic",
						"originallength" : [ 502760.53125, "ticks" ],
						"originaltempo" : 120.0,
						"pitchcorrection" : 0,
						"quality" : "basic",
						"timestretch" : [ 0 ]
					}
,
					"style" : "",
					"text" : "sfplay~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 0,
					"patching_rect" : [ 310.5, 873.0, 173.0, 27.0 ],
					"style" : "wm20150520a",
					"text" : "dac~ 1 2 3 4 5 6 7 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 194.0, 337.0, 37.0, 23.0 ],
					"style" : "wm20150520a",
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 139.0, 337.0, 47.0, 23.0 ],
					"style" : "wm20150520a",
					"text" : "write"
				}

			}
, 			{
				"box" : 				{
					"channels" : 4,
					"fontname" : "Monaco",
					"id" : "obj-4",
					"maxclass" : "live.gain~",
					"numinlets" : 4,
					"numoutlets" : 7,
					"outlettype" : [ "signal", "signal", "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 310.5, 229.5, 370.0, 142.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 76.5, 263.0, 69.0, 163.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[3]",
							"parameter_shortname" : "Input",
							"parameter_type" : 0,
							"parameter_mmin" : -70.0,
							"parameter_mmax" : 6.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_unitstyle" : 4
						}

					}
,
					"slidercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"varname" : "live.gain~[1]"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 10,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 310.5, 408.0, 198.0, 27.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, 4, 4, "SurroundZone2.vst", ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[1]",
							"parameter_shortname" : "vst~[1]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"annotation_name" : "",
						"bypass" : 1,
						"parameter_enable" : 1
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 1,
						"name" : "SurroundZone2.vst",
						"origin" : "SurroundZone2.vst",
						"type" : "VST",
						"subtype" : "AudioEffect",
						"snapshot" : 						{
							"pluginname" : "SurroundZone2.vst",
							"plugindisplayname" : "SurroundZone2",
							"pluginsavedname" : "SurroundZone2",
							"pluginsaveduniqueid" : 0,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "1710.CMlaKA....fQPMDZ....ALkb5IC...P..............................................XfbSoETgIWXsUFckI2b.DP.VUlbyk1atAP.IP.........7+DfLI4Fb0QGHLUlckwF.ADfcgwVckAP.IP......WOJ5+.PRtYWYxQG.ADfcgwVckAP.IP............PQtQFHFklbkAP.AXWXrUWY.DPBD............XTZrQWYxAP.AXWXrUWY.DPBD.........+O.H0azEFckAP.AXWXrUWY.DPBD............Xjbu4FcfPUZrQG.ADfcgwVckAP.IP.....fsfs3+.fTkElbfPUZrQG.ADfcgwVckAP.IP.....PoOo2+.fVu8Va.DP.1EFa0UF.Aj.A....fYlYl+C.P8FagIGHvEFczUlbtABSuHE.ADfcgwVckAP.IP.....P35Q4+..TuwVXxABbgQGckImafLD.ADfcgwVckAP.IP.....nv0i3+..TuwVXxABbgQGckImafvzbuH0b.DP.1EFa0UF.Aj.A....f5Qgq+C.P8FagIGHvEFczUlbtAhTLM2KRI0b.DP.1EFa0UF.Aj.A........f+C.P8FagIGHvEFczUlbtAhTCAP.AXWXrUWY.DPBD.........9O.bUZjQGZfvzKRAP.AXWXrUWY.DPBD.....RDQD9O.bUZjQGZfvzbuH0b.DP.1EFa0UF.Aj.A....f2c2c+C.WkFYzgFHRwzbuHkTyAP.AXWXrUWY.DPBD.........+O.vTY1UFafvzKRAP.AXWXrUWY.DPBD........f9O.vTY1UFafLD.ADfcgwVckAP.IP.....fyGC5+..SkYWYrABSy8hTyAP.AXWXrUWY.DPBD.....37wf9O.vTY1UFafHESy8hTRMG.ADfcgwVckAP.IP.....fyGC5+..SkYWYrAhTCAP.AXWXrUWY.DPBD.....37wf9O.vTY1UFafvjQEAP.AXWXrUWY.DPBD.....37wf9O.vTY1UFafHjQuIWagQG.ADfcgwVckAP.IP.........7+.PS0QWYfvzKRAP.AXWXrUWY.DPBD............zTczUFHCAP.AXWXrUWY.DPBD............zTczUFHLM2KRMG.ADfcgwVckAP.IP............PS0QWYfHESy8hTRMG.ADfcgwVckAP.IP............PS0QWYfH0P.DP.1EFa0UF.Aj.A............MUGckABSFUD.ADfcgwVckAP.IP............vTuw1afvzKRAP.AXWXrUWY.DPBD............L0ar8FHCAP.AXWXrUWY.DPBD............L0ar8FHLM2KRMG.ADfcgwVckAP.IP............vTuw1afHESy8hTRMG.ADfcgwVckAP.IP............vTuw1afH0P.DP.1EFa0UF.Aj.A............S8FauABSFUD.ADfcgwVckAP.IP............PRtAWczAhQuIWagQG.ADfcgwVckAP.IP............PPxIWX4AxbkwVYiQG.ADfcgwVckAP.IP.........7+.PRtAWczARSkQWYxARL.DP.1EFa0UF.Aj.A....f.nsP9C.I4Fb0QGHMUFckIGHx.P.AXWXrUWY.DPBD.....9n433O.jjavUGcfzTYzUlbfLC.ADfcgwVckAP.IP.....nH9Wh+.PRtAWczARSkQWYxABM.DP.1EFa0UF.Aj.A.....dKP08C.OUGcvUGcfzTYzUlbfvD.ADfcgwVckAP.IP.....HwHpm+.vS0QGb0QGHMUFckIGHRAP.AXWXrUWY.DPBD.....bBsg5O.7TczAWczARSkQWYxAxP.DP.1EFa0UF.Aj.A.....Yzlj9C.OUGcvUGcfzTYzUlbfvjQEAP.AXWXrUWY.DPBD.....dQrl5O.7TczAWczARSkQWYxABSyAP.AXWXrUWY.DPBD............7TczAWczARSkQWYxAhTyAP.AXWXrUWY.DPBD............7TczAWczARSkQWYxAhTLMG.ADfcgwVckAP.IP............vS0QGb0QGHMUFckIGHRI0b.DP.1EFa0UF.Aj.A............OUGcvUGcfzTYzUlbfH0P.DP.1EFa0UF.Aj.A............"
						}

					}
,
					"style" : "wm20150520a",
					"text" : "vst~ 4 4 SurroundZone2.vst",
					"varname" : "vst~[1]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"channels" : 8,
					"fontname" : "Monaco",
					"id" : "obj-7",
					"maxclass" : "live.gain~",
					"numinlets" : 8,
					"numoutlets" : 11,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 310.5, 689.0, 239.0, 141.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 495.0, 269.0, 92.0, 163.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "Output",
							"parameter_shortname" : "Output",
							"parameter_type" : 0,
							"parameter_mmin" : -70.0,
							"parameter_mmax" : 6.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_unitstyle" : 4
						}

					}
,
					"slidercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"varname" : "Output"
				}

			}
, 			{
				"box" : 				{
					"angle" : 130.496078,
					"grad1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"grad2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"id" : "obj-66",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1695.0, -17.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 53.5, 46.0, 591.0, 166.0 ],
					"proportion" : 0.39,
					"pt1" : [ 0.584158, 0.391304 ],
					"pt2" : [ 0.569307, 0.373913 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 130.0, 534.0, 52.0, 23.0 ],
					"style" : "",
					"text" : "params"
				}

			}
, 			{
				"box" : 				{
					"attr" : "bypass",
					"id" : "obj-5",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 683.5, 378.0, 150.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 164.0, 403.0, 129.0, 23.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"angle" : 130.496078,
					"grad1" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"grad2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"hint" : "Converts B Format to speaker feeds",
					"id" : "obj-24",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 990.5, 607.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 322.0, 263.0, 158.0, 175.0 ],
					"proportion" : 0.39,
					"pt1" : [ 0.584158, 0.391304 ],
					"pt2" : [ 0.569307, 0.373913 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"angle" : 130.496078,
					"grad1" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"grad2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"hint" : "conterts A to B Format - click bypass for B Format material",
					"id" : "obj-63",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1800.0, -3.83, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 148.5, 263.0, 157.0, 171.0 ],
					"proportion" : 0.39,
					"pt1" : [ 0.584158, 0.391304 ],
					"pt2" : [ 0.569307, 0.373913 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"angle" : 130.496078,
					"grad1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"grad2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"id" : "obj-64",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1761.0, -13.83, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 53.5, 229.0, 679.0, 227.0 ],
					"proportion" : 0.39,
					"pt1" : [ 0.584158, 0.391304 ],
					"pt2" : [ 0.569307, 0.373913 ],
					"style" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1380.800049, 281.0, 1364.300049, 281.0, 1364.300049, 174.0, 1380.800049, 174.0 ],
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1476.800049, 244.0, 1380.800049, 244.0 ],
					"source" : [ "obj-133", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-134", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-135", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 7 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 6 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 5 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 4 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 7 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 6 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 5 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 4 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-7" : [ "Output", "Output", 0 ],
			"obj-3" : [ "vst~", "vst~", 0 ],
			"obj-8" : [ "live.gain~[1]", "B Format", 0 ],
			"obj-4" : [ "live.gain~[3]", "Input", 0 ],
			"obj-2" : [ "vst~[1]", "vst~[1]", 0 ]
		}
,
		"dependency_cache" : [  ],
		"embedsnapshot" : 0,
		"styles" : [ 			{
				"name" : "jpatcher001",
				"parentstyle" : "mystyle",
				"multi" : 0
			}
, 			{
				"name" : "my-ezadc",
				"default" : 				{
					"color" : [ 0.929433, 0.255734, 0.112485, 1.0 ],
					"bgcolor" : [ 0.845028, 0.90521, 0.883342, 1.0 ],
					"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "mystyle",
				"default" : 				{
					"color" : [ 0.088923, 0.460002, 0.589525, 1.0 ],
					"bgcolor" : [ 0.980553, 0.955423, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : [ "Source Code Pro" ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
						"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"fontsize" : [ 11.0 ],
					"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.698295, 0.713548, 0.759307, 1.0 ],
					"selectioncolor" : [ 0.815686, 0.858824, 0.34902, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "wm20150520a",
				"default" : 				{
					"color" : [ 0.18882, 0.288104, 0.351331, 1.0 ],
					"bgcolor" : [ 0.982943, 0.978557, 0.972212, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : [ "Monaco" ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 1.0, 0.999974, 0.999991, 1.0 ],
						"color2" : [ 0.813701, 0.827634, 0.818829, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"accentcolor" : [ 0.85109, 0.842249, 0.830042, 1.0 ],
					"elementcolor" : [ 0.780914, 0.800218, 0.843168, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
