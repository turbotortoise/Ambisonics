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
		"rect" : [ 34.0, 79.0, 1365.0, 1007.0 ],
		"bgcolor" : [ 0.615314, 0.615314, 0.615314, 1.0 ],
		"editing_bgcolor" : [ 0.802977, 0.786472, 0.764761, 1.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 11.0,
		"default_fontface" : 0,
		"default_fontname" : "Source Code Pro",
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
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "mystyle",
		"subpatcher_template" : "my template",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 202.0, 73.0, 35.0, 19.0 ],
					"style" : "",
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 81.5, 304.0, 150.0, 17.0 ],
					"style" : "",
					"text" : "bypass for B Format sources"
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
					"patching_rect" : [ 252.5, 71.169998, 196.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 92.0, 141.169998, 525.0, 48.0 ],
					"style" : "wm20150520a"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "signal", "signal", "bang" ],
					"patching_rect" : [ 252.5, 127.0, 97.0, 22.0 ],
					"saved_object_attributes" : 					{
						"basictuning" : 440,
						"followglobaltempo" : 0,
						"formantcorrection" : 0,
						"mode" : "basic",
						"originallength" : [ 64364.777344, "ticks" ],
						"originaltempo" : 120.0,
						"pitchcorrection" : 0,
						"quality" : "basic",
						"timestretch" : [ 0 ]
					}
,
					"style" : "wm20150520a",
					"text" : "sfplay~ 4"
				}

			}
, 			{
				"box" : 				{
					"channels" : 4,
					"fontname" : "Monaco",
					"id" : "obj-5",
					"maxclass" : "live.gain~",
					"numinlets" : 4,
					"numoutlets" : 7,
					"outlettype" : [ "signal", "signal", "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 252.102051, 196.0, 370.0, 142.0 ],
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
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 14,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 252.5, 400.0, 182.0, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, "SurroundZone2.vst", 4, 4, ";" ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
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
							"pluginsavedname" : "SurroundZone2.vst",
							"pluginsaveduniqueid" : 0,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "1710.CMlaKA....fQPMDZ....ALkb5IC...P..............................................XfbSoETgIWXsUFckI2b.DP.VUlbyk1atAP.IP.........7+DfLI4Fb0QGHLUlckwF.ADfcgwVckAP.IP.....fyGC5+.PRtYWYxQG.ADfcgwVckAP.IP............PQtQFHFklbkAP.AXWXrUWY.DPBD............XTZrQWYxAP.AXWXrUWY.DPBD............H0azEFckAP.AXWXrUWY.DPBD............Xjbu4FcfPUZrQG.ADfcgwVckAP.IP.........3+.fTkElbfPUZrQG.ADfcgwVckAP.IP.........3+.fVu8Va.DP.1EFa0UF.Aj.A........f+C.P8FagIGHvEFczUlbtABSuHE.ADfcgwVckAP.IP.........3+..TuwVXxABbgQGckImafLD.ADfcgwVckAP.IP.........3+..TuwVXxABbgQGckImafvzbuH0b.DP.1EFa0UF.Aj.A........f+C.P8FagIGHvEFczUlbtAhTLM2KRI0b.DP.1EFa0UF.Aj.A........f+C.P8FagIGHvEFczUlbtAhTCAP.AXWXrUWY.DPBD.........9O.bUZjQGZfvzKRAP.AXWXrUWY.DPBD.....VUUU8O.bUZjQGZfvzbuH0b.DP.1EFa0UF.Aj.A....fiiii+C.WkFYzgFHRwzbuHkTyAP.AXWXrUWY.DPBD.........+O.vTY1UFafvzKRAP.AXWXrUWY.DPBD.....37wf9O.vTY1UFafLD.ADfcgwVckAP.IP.....fyGC5+..SkYWYrABSy8hTyAP.AXWXrUWY.DPBD.....37wf9O.vTY1UFafHESy8hTRMG.ADfcgwVckAP.IP.....fyGC5+..SkYWYrAhTCAP.AXWXrUWY.DPBD.....37wf9O.vTY1UFafvjQEAP.AXWXrUWY.DPBD.....37wf9O.vTY1UFafHjQuIWagQG.ADfcgwVckAP.IP.....fyGC5+.PS0QWYfvzKRAP.AXWXrUWY.DPBD............zTczUFHCAP.AXWXrUWY.DPBD............zTczUFHLM2KRMG.ADfcgwVckAP.IP............PS0QWYfHESy8hTRMG.ADfcgwVckAP.IP............PS0QWYfH0P.DP.1EFa0UF.Aj.A............MUGckABSFUD.ADfcgwVckAP.IP............vTuw1afvzKRAP.AXWXrUWY.DPBD............L0ar8FHCAP.AXWXrUWY.DPBD............L0ar8FHLM2KRMG.ADfcgwVckAP.IP............vTuw1afHESy8hTRMG.ADfcgwVckAP.IP............vTuw1afH0P.DP.1EFa0UF.Aj.A............S8FauABSFUD.ADfcgwVckAP.IP............PRtAWczAhQuIWagQG.ADfcgwVckAP.IP............PPxIWX4AxbkwVYiQG.ADfcgwVckAP.IP.........7+.PRtAWczARSkQWYxARL.DP.1EFa0UF.Aj.A............I4Fb0QGHMUFckIGHx.P.AXWXrUWY.DPBD............jjavUGcfzTYzUlbfLC.ADfcgwVckAP.IP............PRtAWczARSkQWYxABM.DP.1EFa0UF.Aj.A............OUGcvUGcfzTYzUlbfvD.ADfcgwVckAP.IP............vS0QGb0QGHMUFckIGHRAP.AXWXrUWY.DPBD............7TczAWczARSkQWYxAxP.DP.1EFa0UF.Aj.A............OUGcvUGcfzTYzUlbfvjQEAP.AXWXrUWY.DPBD............7TczAWczARSkQWYxABSyAP.AXWXrUWY.DPBD............7TczAWczARSkQWYxAhTyAP.AXWXrUWY.DPBD............7TczAWczARSkQWYxAhTLMG.ADfcgwVckAP.IP............vS0QGb0QGHMUFckIGHRI0b.DP.1EFa0UF.Aj.A............OUGcvUGcfzTYzUlbfH0P.DP.1EFa0UF.Aj.A............"
						}

					}
,
					"style" : "wm20150520a",
					"text" : "vst~ SurroundZone2.vst 4 4",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "signal" ],
					"patching_rect" : [ 252.5, 645.0, 210.0, 22.0 ],
					"style" : "wm20150520a",
					"text" : "hoa.2d.optim~ 1 @optim inPhase"
				}

			}
, 			{
				"box" : 				{
					"channels" : 4,
					"id" : "obj-4",
					"maxclass" : "live.gain~",
					"numinlets" : 4,
					"numoutlets" : 7,
					"outlettype" : [ "signal", "signal", "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 252.5, 452.0, 160.0, 141.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~",
							"parameter_shortname" : "WXYZ",
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
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 0,
					"patching_rect" : [ 252.5, 778.0, 329.0, 22.0 ],
					"style" : "wm20150520a",
					"text" : "hoa.dac~ 1:8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 8,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 252.5, 716.0, 315.0, 22.0 ],
					"style" : "wm20150520a",
					"text" : "hoa.2d.decoder~ 1 @mode ambisonics @channels 8"
				}

			}
, 			{
				"box" : 				{
					"attr" : "bypass",
					"id" : "obj-1",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 81.5, 323.0, 150.0, 19.0 ],
					"style" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 7 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 558.0, 759.5, 572.0, 759.5 ],
					"source" : [ "obj-12", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 6 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 515.714294, 759.5, 527.714294, 759.5 ],
					"source" : [ "obj-12", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 5 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 473.428558, 759.5, 483.428558, 759.5 ],
					"source" : [ "obj-12", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 4 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 431.142853, 759.5, 439.142853, 759.5 ],
					"source" : [ "obj-12", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 388.857147, 759.5, 394.857147, 759.5 ],
					"source" : [ "obj-12", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 346.571442, 759.5, 350.571442, 759.5 ],
					"source" : [ "obj-12", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 304.285706, 759.5, 306.285706, 759.5 ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 453.0, 690.5, 558.0, 690.5 ],
					"source" : [ "obj-38", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 357.5, 690.5, 410.0, 690.5 ],
					"source" : [ "obj-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 309.0, 618.5, 357.5, 618.5 ],
					"source" : [ "obj-4", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 285.5, 627.5, 453.0, 627.5 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 262.0, 618.5, 262.0, 618.5 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-4" : [ "live.gain~", "WXYZ", 0 ],
			"obj-5" : [ "live.gain~[3]", "Input", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "hoa.2d.decoder~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "hoa.2d.optim~.mxo",
				"type" : "iLaX"
			}
 ],
		"embedsnapshot" : 0,
		"styles" : [ 			{
				"name" : "jpatcher001",
				"parentstyle" : "mystyle",
				"multi" : 0
			}
, 			{
				"name" : "my-ezadc",
				"default" : 				{
					"bgcolor" : [ 0.845028, 0.90521, 0.883342, 1.0 ],
					"color" : [ 0.929433, 0.255734, 0.112485, 1.0 ],
					"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "mystyle",
				"default" : 				{
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : [ 11.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
						"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"bgcolor" : [ 0.980553, 0.955423, 1.0, 1.0 ],
					"color" : [ 0.088923, 0.460002, 0.589525, 1.0 ],
					"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.698295, 0.713548, 0.759307, 1.0 ],
					"fontname" : [ "Source Code Pro" ],
					"selectioncolor" : [ 0.815686, 0.858824, 0.34902, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "wm20150520a",
				"default" : 				{
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
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
					"bgcolor" : [ 0.982943, 0.978557, 0.972212, 1.0 ],
					"color" : [ 0.18882, 0.288104, 0.351331, 1.0 ],
					"accentcolor" : [ 0.85109, 0.842249, 0.830042, 1.0 ],
					"elementcolor" : [ 0.780914, 0.800218, 0.843168, 1.0 ],
					"fontname" : [ "Monaco" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ],
		"default_bgcolor" : [ 0.941117, 0.930061, 0.907507, 1.0 ],
		"color" : [ 0.088923, 0.460002, 0.589525, 1.0 ],
		"elementcolor" : [ 0.698295, 0.713548, 0.759307, 1.0 ],
		"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"selectioncolor" : [ 0.815686, 0.858824, 0.34902, 1.0 ],
		"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
		"bgfillcolor_type" : "gradient",
		"bgfillcolor_color1" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bgfillcolor_color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
		"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
		"bgfillcolor_angle" : 270.0,
		"bgfillcolor_proportion" : 0.39
	}

}
