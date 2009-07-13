{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 1.0, 44.0, 1227.0, 652.0 ],
		"bglocked" : 0,
		"defrect" : [ 1.0, 44.0, 1227.0, 652.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Monaco",
		"gridonopen" : 0,
		"gridsize" : [ 8.0, 8.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"patching_rect" : [ 912.0, 8.0, 59.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 1,
					"id" : "obj-88",
					"outlettype" : [ "bang" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0 2500 2500, 1 2500 5000, 2 5000 5000",
					"patching_rect" : [ 912.0, 40.0, 233.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Monaco",
					"numoutlets" : 1,
					"id" : "obj-87",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "coll freq-res-cfg",
					"patching_rect" : [ 776.0, 88.0, 113.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 4,
					"id" : "obj-86",
					"outlettype" : [ "", "", "", "" ],
					"fontsize" : 10.0,
					"saved_object_attributes" : 					{
						"embed" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"types" : [  ],
					"patching_rect" : [ 776.0, 24.0, 100.0, 20.0 ],
					"items" : [ "25Hz", "0.25˚", ",", "25Hz", "0.5˚", ",", "50Hz", "0.5˚" ],
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 3,
					"id" : "obj-84",
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"types" : [  ],
					"patching_rect" : [ 656.0, 56.0, 55.0, 20.0 ],
					"items" : [ 0.25, ",", 0.5 ],
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 3,
					"id" : "obj-83",
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"types" : [  ],
					"patching_rect" : [ 600.0, 56.0, 47.0, 20.0 ],
					"items" : [ 25, ",", 50 ],
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 3,
					"id" : "obj-81",
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p access-pass",
					"patching_rect" : [ 184.0, 168.0, 89.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 1,
					"id" : "obj-80",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 303.0, 246.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 303.0, 246.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Monaco",
						"gridonopen" : 0,
						"gridsize" : [ 8.0, 8.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "MN Run",
									"patching_rect" : [ 72.0, 168.0, 47.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Monaco",
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "MN SetAccessMode $1 $2",
									"patching_rect" : [ 128.0, 168.0, 143.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Monaco",
									"numoutlets" : 1,
									"id" : "obj-69",
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 0",
									"patching_rect" : [ 72.0, 40.0, 53.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Monaco",
									"numoutlets" : 2,
									"id" : "obj-2",
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i",
									"patching_rect" : [ 128.0, 72.0, 41.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Monaco",
									"numoutlets" : 2,
									"id" : "obj-77",
									"outlettype" : [ "int", "int" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 s",
									"patching_rect" : [ 128.0, 144.0, 59.0, 20.0 ],
									"numinlets" : 2,
									"fontname" : "Monaco",
									"numoutlets" : 1,
									"id" : "obj-76",
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route symbol",
									"patching_rect" : [ 152.0, 120.0, 83.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Monaco",
									"numoutlets" : 2,
									"id" : "obj-75",
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll pass",
									"patching_rect" : [ 152.0, 96.0, 65.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Monaco",
									"numoutlets" : 4,
									"id" : "obj-73",
									"outlettype" : [ "", "", "", "" ],
									"fontsize" : 10.0,
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 72.0, 8.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-78",
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 72.0, 256.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-79",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-75", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 1 ],
									"destination" : [ "obj-73", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 0 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 0 ],
									"destination" : [ "obj-76", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Monaco",
						"default_fontsize" : 10.0,
						"fontname" : "Monaco",
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "select ok",
					"patching_rect" : [ 176.0, 568.0, 65.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 2,
					"id" : "obj-72",
					"outlettype" : [ "bang", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"types" : [  ],
					"patching_rect" : [ 184.0, 144.0, 100.0, 20.0 ],
					"items" : [ "run", ",", "operator", ",", "maintenance", ",", "authorized", "client" ],
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 3,
					"id" : "obj-71",
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "MN mLMPsetscancfg 5000 1 5000 FFF92230 225510",
					"linecount" : 2,
					"patching_rect" : [ 752.0, 272.0, 268.0, 31.0 ],
					"numinlets" : 2,
					"fontname" : "Monaco",
					"numoutlets" : 1,
					"id" : "obj-68",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p scan-cfg-unscale",
					"patching_rect" : [ 664.0, 144.0, 119.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 4,
					"id" : "obj-61",
					"outlettype" : [ "", "", "", "" ],
					"fontsize" : 10.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Monaco",
						"gridonopen" : 0,
						"gridsize" : [ 8.0, 8.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"patching_rect" : [ 290.0, 156.0, 77.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Monaco",
									"numoutlets" : 1,
									"id" : "obj-46",
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"patching_rect" : [ 210.0, 156.0, 77.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Monaco",
									"numoutlets" : 1,
									"id" : "obj-45",
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"patching_rect" : [ 130.0, 156.0, 77.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Monaco",
									"numoutlets" : 1,
									"id" : "obj-44",
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"patching_rect" : [ 50.0, 156.0, 77.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Monaco",
									"numoutlets" : 1,
									"id" : "obj-43",
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 10000.",
									"patching_rect" : [ 210.0, 132.0, 59.0, 20.0 ],
									"numinlets" : 2,
									"fontname" : "Monaco",
									"numoutlets" : 1,
									"id" : "obj-41",
									"outlettype" : [ "float" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 10000.",
									"patching_rect" : [ 154.0, 132.0, 59.0, 20.0 ],
									"numinlets" : 2,
									"fontname" : "Monaco",
									"numoutlets" : 1,
									"id" : "obj-39",
									"outlettype" : [ "float" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 10000.",
									"patching_rect" : [ 98.0, 132.0, 59.0, 20.0 ],
									"numinlets" : 2,
									"fontname" : "Monaco",
									"numoutlets" : 1,
									"id" : "obj-38",
									"outlettype" : [ "float" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 100.",
									"patching_rect" : [ 50.0, 132.0, 47.0, 20.0 ],
									"numinlets" : 2,
									"fontname" : "Monaco",
									"numoutlets" : 1,
									"id" : "obj-28",
									"outlettype" : [ "float" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0 0 0 0",
									"patching_rect" : [ 50.0, 100.0, 165.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Monaco",
									"numoutlets" : 5,
									"id" : "obj-26",
									"outlettype" : [ "int", "int", "int", "int", "int" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-56",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 50.0, 236.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-57",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 130.0, 236.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-58",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 210.0, 236.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-59",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 290.0, 236.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-60",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 2 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 4 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 3 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Monaco",
						"default_fontsize" : 10.0,
						"fontname" : "Monaco",
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 704.0, 168.0, 50.0, 20.0 ],
					"minimum" : 0.25,
					"maximum" : 0.5,
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 2,
					"id" : "obj-48",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 648.0, 168.0, 50.0, 20.0 ],
					"minimum" : 25.0,
					"maximum" : 50.0,
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 2,
					"id" : "obj-47",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route scan-config set-access-mode run",
					"patching_rect" : [ 88.0, 528.0, 233.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 4,
					"id" : "obj-24",
					"outlettype" : [ "", "", "", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set-scan-cfg ok 5000 1 5000 -450000 2250000",
					"patching_rect" : [ 104.0, 472.0, 710.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Monaco",
					"numoutlets" : 1,
					"id" : "obj-15",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print DEBUG",
					"patching_rect" : [ 16.0, 472.0, 77.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 0,
					"id" : "obj-10",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p 7seg",
					"patching_rect" : [ 336.0, 120.0, 47.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 895.0, 44.0, 522.0, 693.0 ],
						"bglocked" : 0,
						"defrect" : [ 895.0, 44.0, 522.0, 693.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Monaco",
						"gridonopen" : 0,
						"gridsize" : [ 8.0, 8.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 i 0",
									"patching_rect" : [ 56.0, 40.0, 53.0, 20.0 ],
									"hidden" : 1,
									"numinlets" : 1,
									"fontname" : "Monaco",
									"numoutlets" : 3,
									"id" : "obj-60",
									"outlettype" : [ "int", "int", "int" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"patching_rect" : [ 56.0, 528.0, 35.0, 20.0 ],
									"hidden" : 1,
									"numinlets" : 2,
									"fontname" : "Monaco",
									"numoutlets" : 1,
									"id" : "obj-59",
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p decode-set",
									"patching_rect" : [ 72.0, 72.0, 83.0, 20.0 ],
									"hidden" : 1,
									"numinlets" : 1,
									"fontname" : "Monaco",
									"numoutlets" : 8,
									"id" : "obj-58",
									"outlettype" : [ "int", "int", "int", "int", "int", "int", "int", "int" ],
									"fontsize" : 10.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Monaco",
										"gridonopen" : 0,
										"gridsize" : [ 8.0, 8.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 384.0, 296.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-8",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 336.0, 272.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-9",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 288.0, 248.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-10",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 240.0, 224.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-11",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 192.0, 200.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-7",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 144.0, 176.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-4",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 96.0, 152.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-2",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 48.0, 128.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-1",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "& 1",
													"patching_rect" : [ 384.0, 266.0, 32.5, 20.0 ],
													"numinlets" : 2,
													"fontname" : "Monaco",
													"numoutlets" : 1,
													"id" : "obj-39",
													"outlettype" : [ "int" ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : ">> 1",
													"patching_rect" : [ 384.0, 242.0, 35.0, 20.0 ],
													"numinlets" : 2,
													"fontname" : "Monaco",
													"numoutlets" : 1,
													"id" : "obj-40",
													"outlettype" : [ "int" ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "& 1",
													"patching_rect" : [ 337.0, 243.0, 32.5, 20.0 ],
													"numinlets" : 2,
													"fontname" : "Monaco",
													"numoutlets" : 1,
													"id" : "obj-42",
													"outlettype" : [ "int" ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : ">> 1",
													"patching_rect" : [ 337.0, 219.0, 35.0, 20.0 ],
													"numinlets" : 2,
													"fontname" : "Monaco",
													"numoutlets" : 1,
													"id" : "obj-43",
													"outlettype" : [ "int" ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "& 1",
													"patching_rect" : [ 288.0, 218.0, 32.5, 20.0 ],
													"numinlets" : 2,
													"fontname" : "Monaco",
													"numoutlets" : 1,
													"id" : "obj-44",
													"outlettype" : [ "int" ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : ">> 1",
													"patching_rect" : [ 288.0, 194.0, 35.0, 20.0 ],
													"numinlets" : 2,
													"fontname" : "Monaco",
													"numoutlets" : 1,
													"id" : "obj-45",
													"outlettype" : [ "int" ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "& 1",
													"patching_rect" : [ 241.0, 195.0, 32.5, 20.0 ],
													"numinlets" : 2,
													"fontname" : "Monaco",
													"numoutlets" : 1,
													"id" : "obj-33",
													"outlettype" : [ "int" ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : ">> 1",
													"patching_rect" : [ 241.0, 171.0, 35.0, 20.0 ],
													"numinlets" : 2,
													"fontname" : "Monaco",
													"numoutlets" : 1,
													"id" : "obj-34",
													"outlettype" : [ "int" ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "& 1",
													"patching_rect" : [ 194.0, 172.0, 32.5, 20.0 ],
													"numinlets" : 2,
													"fontname" : "Monaco",
													"numoutlets" : 1,
													"id" : "obj-35",
													"outlettype" : [ "int" ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : ">> 1",
													"patching_rect" : [ 194.0, 148.0, 35.0, 20.0 ],
													"numinlets" : 2,
													"fontname" : "Monaco",
													"numoutlets" : 1,
													"id" : "obj-37",
													"outlettype" : [ "int" ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "& 1",
													"patching_rect" : [ 145.0, 147.0, 32.5, 20.0 ],
													"numinlets" : 2,
													"fontname" : "Monaco",
													"numoutlets" : 1,
													"id" : "obj-28",
													"outlettype" : [ "int" ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : ">> 1",
													"patching_rect" : [ 145.0, 123.0, 35.0, 20.0 ],
													"numinlets" : 2,
													"fontname" : "Monaco",
													"numoutlets" : 1,
													"id" : "obj-30",
													"outlettype" : [ "int" ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "& 1",
													"patching_rect" : [ 98.0, 124.0, 32.5, 20.0 ],
													"numinlets" : 2,
													"fontname" : "Monaco",
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "int" ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : ">> 1",
													"patching_rect" : [ 98.0, 100.0, 35.0, 20.0 ],
													"numinlets" : 2,
													"fontname" : "Monaco",
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "int" ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "& 1",
													"patching_rect" : [ 50.0, 100.0, 32.5, 20.0 ],
													"numinlets" : 2,
													"fontname" : "Monaco",
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "int" ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 69.0, 40.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-57",
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-57", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-57", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Monaco",
										"default_fontsize" : 10.0,
										"fontname" : "Monaco",
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 56.0, 8.0, 25.0, 25.0 ],
									"hidden" : 1,
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $i1 + $i2 + $i3 + $i4 + $i5 + $i6 + $i7 + $i8",
									"patching_rect" : [ 80.0, 504.0, 311.0, 20.0 ],
									"hidden" : 1,
									"numinlets" : 8,
									"fontname" : "Monaco",
									"numoutlets" : 1,
									"id" : "obj-48",
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1",
									"patching_rect" : [ 184.0, 392.0, 32.5, 18.0 ],
									"hidden" : 1,
									"numinlets" : 2,
									"fontname" : "Monaco",
									"numoutlets" : 1,
									"id" : "obj-41",
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"patching_rect" : [ 184.0, 416.0, 32.5, 20.0 ],
									"hidden" : 1,
									"numinlets" : 2,
									"fontname" : "Monaco",
									"numoutlets" : 1,
									"id" : "obj-38",
									"outlettype" : [ "int" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"patching_rect" : [ 80.0, 360.0, 41.0, 20.0 ],
									"hidden" : 1,
									"numinlets" : 1,
									"fontname" : "Monaco",
									"numoutlets" : 2,
									"id" : "obj-36",
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0 0 0 0 0 0 0 0",
									"patching_rect" : [ 80.0, 480.0, 125.0, 20.0 ],
									"hidden" : 1,
									"numinlets" : 8,
									"fontname" : "Monaco",
									"numoutlets" : 1,
									"id" : "obj-32",
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 8",
									"patching_rect" : [ 80.0, 456.0, 124.5, 20.0 ],
									"hidden" : 1,
									"numinlets" : 2,
									"fontname" : "Monaco",
									"numoutlets" : 8,
									"id" : "obj-31",
									"outlettype" : [ "", "", "", "", "", "", "", "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $i2 << $i1",
									"patching_rect" : [ 80.0, 392.0, 101.0, 20.0 ],
									"hidden" : 1,
									"numinlets" : 2,
									"fontname" : "Monaco",
									"numoutlets" : 1,
									"id" : "obj-29",
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "funnel 8",
									"patching_rect" : [ 80.0, 336.0, 113.5, 20.0 ],
									"hidden" : 1,
									"numinlets" : 8,
									"fontname" : "Monaco",
									"numoutlets" : 1,
									"id" : "obj-27",
									"outlettype" : [ "list" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "led",
									"patching_rect" : [ 192.0, 280.0, 16.0, 16.0 ],
									"bgcolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"oncolor" : [ 1.0, 0.184314, 0.184314, 1.0 ],
									"numinlets" : 1,
									"offcolor" : [ 0.431373, 0.0, 0.0, 1.0 ],
									"numoutlets" : 1,
									"id" : "obj-23",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "led",
									"patching_rect" : [ 168.0, 216.0, 16.0, 64.0 ],
									"bgcolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"oncolor" : [ 1.0, 0.184314, 0.184314, 1.0 ],
									"numinlets" : 1,
									"offcolor" : [ 0.431373, 0.0, 0.0, 1.0 ],
									"numoutlets" : 1,
									"id" : "obj-22",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "led",
									"patching_rect" : [ 72.0, 216.0, 16.0, 64.0 ],
									"bgcolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"oncolor" : [ 1.0, 0.184314, 0.184314, 1.0 ],
									"numinlets" : 1,
									"offcolor" : [ 0.431373, 0.0, 0.0, 1.0 ],
									"numoutlets" : 1,
									"id" : "obj-21",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "led",
									"patching_rect" : [ 168.0, 136.0, 16.0, 64.0 ],
									"bgcolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"oncolor" : [ 1.0, 0.184314, 0.184314, 1.0 ],
									"numinlets" : 1,
									"offcolor" : [ 0.431373, 0.0, 0.0, 1.0 ],
									"numoutlets" : 1,
									"id" : "obj-20",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "led",
									"patching_rect" : [ 72.0, 136.0, 16.0, 64.0 ],
									"bgcolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"oncolor" : [ 1.0, 0.184314, 0.184314, 1.0 ],
									"numinlets" : 1,
									"offcolor" : [ 0.431373, 0.0, 0.0, 1.0 ],
									"numoutlets" : 1,
									"id" : "obj-19",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "led",
									"patching_rect" : [ 96.0, 200.0, 64.0, 16.0 ],
									"bgcolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"oncolor" : [ 1.0, 0.184314, 0.184314, 1.0 ],
									"numinlets" : 1,
									"offcolor" : [ 0.431373, 0.0, 0.0, 1.0 ],
									"numoutlets" : 1,
									"id" : "obj-18",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "led",
									"patching_rect" : [ 96.0, 280.0, 64.0, 16.0 ],
									"bgcolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"oncolor" : [ 1.0, 0.184314, 0.184314, 1.0 ],
									"numinlets" : 1,
									"offcolor" : [ 0.431373, 0.0, 0.0, 1.0 ],
									"numoutlets" : 1,
									"id" : "obj-17",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "led",
									"patching_rect" : [ 96.0, 120.0, 64.0, 16.0 ],
									"bgcolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"oncolor" : [ 1.0, 0.184314, 0.184314, 1.0 ],
									"numinlets" : 1,
									"offcolor" : [ 0.431373, 0.0, 0.0, 1.0 ],
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 56.0, 552.0, 25.0, 25.0 ],
									"hidden" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-1",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 1,
									"midpoints" : [ 65.5, 66.0, 65.5, 66.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 2 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 1,
									"midpoints" : [ 99.5, 66.0, 65.5, 66.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 1 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-59", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 7 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 6 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 5 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 4 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 3 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 2 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 1 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-27", 7 ],
									"hidden" : 1,
									"midpoints" : [ 201.5, 315.5, 184.0, 315.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 1,
									"midpoints" : [ 105.5, 235.5, 89.5, 235.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 1,
									"midpoints" : [ 177.5, 267.5, 103.0, 267.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-27", 2 ],
									"hidden" : 1,
									"midpoints" : [ 177.5, 307.5, 116.5, 307.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-27", 3 ],
									"hidden" : 1,
									"midpoints" : [ 105.5, 315.5, 130.0, 315.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-27", 4 ],
									"hidden" : 1,
									"midpoints" : [ 81.5, 307.5, 143.5, 307.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-27", 5 ],
									"hidden" : 1,
									"midpoints" : [ 81.5, 267.5, 157.0, 267.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-27", 6 ],
									"hidden" : 1,
									"midpoints" : [ 105.5, 275.5, 170.5, 275.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-31", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 1 ],
									"destination" : [ "obj-32", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 2 ],
									"destination" : [ "obj-32", 2 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 3 ],
									"destination" : [ "obj-32", 3 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 4 ],
									"destination" : [ "obj-32", 4 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 5 ],
									"destination" : [ "obj-32", 5 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 6 ],
									"destination" : [ "obj-32", 6 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 7 ],
									"destination" : [ "obj-32", 7 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 1 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Monaco",
						"default_fontsize" : 10.0,
						"fontname" : "Monaco",
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js unSick.js",
					"patching_rect" : [ 16.0, 400.0, 83.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 1,
					"id" : "obj-40",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "request single scan",
					"linecount" : 2,
					"patching_rect" : [ 440.0, 112.0, 102.0, 33.0 ],
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 0,
					"id" : "obj-37",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "RN LMDscandata",
					"patching_rect" : [ 440.0, 144.0, 95.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Monaco",
					"numoutlets" : 1,
					"id" : "obj-35",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "MN mLMPsetscancfg $1 1 $2 FFF92230 225510",
					"patching_rect" : [ 672.0, 232.0, 257.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Monaco",
					"numoutlets" : 1,
					"id" : "obj-34",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "$1 - frequency\n$2 - seqments\n$3 - angular resolution\n$4 - start angle\n$5 - end angle",
					"linecount" : 5,
					"patching_rect" : [ 584.0, 264.0, 156.0, 73.0 ],
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 0,
					"id" : "obj-33",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This is binary encoding for 7-segment display",
					"linecount" : 4,
					"patching_rect" : [ 336.0, 144.0, 106.0, 60.0 ],
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 0,
					"id" : "obj-29",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "%lX is important as SICK is sensitive to case of hex numbers",
					"linecount" : 2,
					"patching_rect" : [ 232.0, 8.0, 203.0, 33.0 ],
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 0,
					"id" : "obj-27",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 336.0, 208.0, 76.0, 20.0 ],
					"minimum" : 0,
					"maximum" : 255,
					"triangle" : 0,
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 2,
					"id" : "obj-25",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"format" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "RN LMPscancfg",
					"patching_rect" : [ 576.0, 232.0, 89.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Monaco",
					"numoutlets" : 1,
					"id" : "obj-23",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "en/dis continuous scanning",
					"linecount" : 2,
					"patching_rect" : [ 456.0, 168.0, 117.0, 33.0 ],
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 0,
					"id" : "obj-22",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "request status \nanswer is (RA 8 NN) \nNN == 1 is OK",
					"linecount" : 3,
					"patching_rect" : [ 32.0, 176.0, 135.0, 47.0 ],
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 0,
					"id" : "obj-21",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "RI 8",
					"patching_rect" : [ 32.0, 232.0, 35.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Monaco",
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 456.0, 208.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "EN LMDscandata $1",
					"patching_rect" : [ 456.0, 232.0, 113.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Monaco",
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "MN GetAccessMode",
					"patching_rect" : [ 224.0, 232.0, 107.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Monaco",
					"numoutlets" : 1,
					"id" : "obj-16",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\"AN mLMPsetscancfg 0 1388 1 1388 FFF92230 225510\"",
					"patching_rect" : [ 104.0, 400.0, 710.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Monaco",
					"numoutlets" : 1,
					"id" : "obj-14",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route reply",
					"patching_rect" : [ 8.0, 320.0, 77.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 2,
					"id" : "obj-13",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend send",
					"patching_rect" : [ 24.0, 264.0, 83.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "MN mLMLSetDisp $1",
					"patching_rect" : [ 336.0, 232.0, 113.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Monaco",
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"patching_rect" : [ 168.0, 8.0, 59.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 1,
					"id" : "obj-5",
					"outlettype" : [ "bang" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "RN STlms",
					"patching_rect" : [ 160.0, 232.0, 59.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Monaco",
					"numoutlets" : 1,
					"id" : "obj-11",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stx 2 115, etx 3, int_fmt %lX, float_fmt %f",
					"patching_rect" : [ 168.0, 40.0, 269.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Monaco",
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "disconnect",
					"patching_rect" : [ 32.0, 32.0, 71.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Monaco",
					"numoutlets" : 1,
					"id" : "obj-3",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "connect 192.168.0.1 2112",
					"patching_rect" : [ 8.0, 8.0, 155.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Monaco",
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tcpclient",
					"patching_rect" : [ 8.0, 296.0, 65.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Monaco",
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 2 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [ 97.5, 557.0, 1178.5, 557.0, 1178.5, 131.0, 673.5, 131.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 193.5, 225.5, 33.5, 225.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 185.5, 597.0, 4.5, 597.0, 4.5, 222.0, 233.5, 222.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-68", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 1 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 681.5, 256.5, 33.5, 256.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 449.5, 256.5, 33.5, 256.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 585.5, 256.5, 33.5, 256.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 41.5, 256.5, 33.5, 256.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 465.5, 256.5, 33.5, 256.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 233.5, 256.5, 33.5, 256.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 33.5, 289.5, 17.5, 289.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 345.5, 256.5, 33.5, 256.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 169.5, 256.5, 33.5, 256.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 177.5, 100.5, 17.5, 100.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 41.5, 60.5, 17.5, 60.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}