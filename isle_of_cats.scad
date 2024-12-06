include <boardgame_insert_toolkit_lib.2.scad>;

// determines whether lids are output.
g_b_print_lid = true;

// determines whether boxes are output.
g_b_print_box = true; 

// Focus on one box
g_isolated_print_box = ""; 

// Used to visualize how all of the boxes fit together. 
g_b_visualization = false;          
        
// this is the outer wall thickness. 
//Default = 1.5mm
g_wall_thickness = 1.5;

// The tolerance value is extra space put between planes of the lid and box that fit together.
// Increase the tolerance to loosen the fit and decrease it to tighten it.
//
// Note that the tolerance is applied exclusively to the lid.
// So if the lid is too tight or too loose, change this value ( up for looser fit, down for tighter fit ) and 
// you only need to reprint the lid.
// 
// The exception is the stackable box, where the bottom of the box is the lid of the box below,
// in which case the tolerance also affects that box bottom.
//
g_tolerance = 0.12;

// This adjusts the position of the lid detents downward. 
// The larger the value, the bigger the gap between the lid and the box.
g_tolerance_detents_pos = 0.12;

data =
[
    [   "main deck",
        [
            [ BOX_SIZE_XYZ, [68, 78, 92 ]],
            [ BOX_STACKABLE_B, f],
            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,         4],
                    [LID_LABELS_BG_THICKNESS, 0],
                    [LID_LABELS_BORDER_THICKNESS, 2],
                    [ LABEL,
                        [
                            [ LBL_FONT, "IBM Plex Sans JP:style=bold"],
                            [ LBL_SIZE,         18],
                            [ LBL_TEXT, "Deck"],
                        ]
                    ],  
                ],
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 65, 75, 90] ],
                ]
            ],
        ]
    ],
    [   "treasure",
        [
            [ BOX_SIZE_XYZ, [68, 68, 32 ]],
            [ BOX_STACKABLE_B, f],
            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,         4],
                    [LID_LABELS_BG_THICKNESS, 0],
                    [LID_LABELS_BORDER_THICKNESS, 2],
                    [ LABEL,
                        [
                            [ LBL_FONT, "IBM Plex Sans JP:style=bold"],
                            [ LBL_SIZE,         10],
                            [ LBL_TEXT, "Treasure"],
                        ]
                    ],  
                ],
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_LID_BACKGROUND_B, t],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 19.5, 37.5, 30] ],
                    [POSITION_XY, [68-19.5-3, 68-37.5-3]],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_LID_BACKGROUND_B, t],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 19.5, 19.5, 30] ],
                    [POSITION_XY, [68-19.5-3-19.5, 68-19.5-3]],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_LID_BACKGROUND_B, t],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 19.5, 55.5, 30] ],
                    [POSITION_XY, [0,CENTER]],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_LID_BACKGROUND_B, t],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 19.5, 19.5, 30] ],
                    [POSITION_XY, [19+3,19+3+1]],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_LID_BACKGROUND_B, t],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 37.5, 19.5, 30] ],
                    [POSITION_XY, [19+3+2,0]],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 50, 9, 30] ],
                    [POSITION_XY, [CENTER,CENTER]],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 9, 50, 30] ],
                    [POSITION_XY, [CENTER,CENTER]],
                ]
            ], 
            [ BOX_COMPONENT,
                [
                [CMP_SHAPE,                             ROUND],
                [CMP_SHAPE_VERTICAL_B,                  t],
                [CMP_COMPARTMENT_SIZE_XYZ,  [ 16, 16, 1.0] ],
                [CMP_CUTOUT_BOTTOM_B, t],
                ]
            ],
            [ BOX_COMPONENT,
                [
                [CMP_SHAPE,                             ROUND],
                [CMP_SHAPE_VERTICAL_B,                  t],
                [CMP_COMPARTMENT_SIZE_XYZ,  [ 16, 16, 1.0] ],
                [CMP_CUTOUT_BOTTOM_B, t],
                    [POSITION_XY, [19+3+2+19/2,2]],
                ]
            ],
            [ BOX_COMPONENT,
                [
                [CMP_SHAPE,                             ROUND],
                [CMP_SHAPE_VERTICAL_B,                  t],
                [CMP_COMPARTMENT_SIZE_XYZ,  [ 16, 16, 1.0] ],
                [CMP_CUTOUT_BOTTOM_B, t],
                    [POSITION_XY, [68-19-3, 68-19-3]],
                ]
            ],
            [ BOX_COMPONENT,
                [
                [CMP_SHAPE,                             ROUND],
                [CMP_SHAPE_VERTICAL_B,                  t],
                [CMP_COMPARTMENT_SIZE_XYZ,  [ 16, 16, 1.0] ],
                [CMP_CUTOUT_BOTTOM_B, t],
                    [POSITION_XY, [2, CENTER]],
                ]
            ],
        ]
    ],


    [   "basket",
        [
            [ BOX_SIZE_XYZ, [68, 68, 32 ]],
            [ BOX_STACKABLE_B, f],
            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,         4],
                    [LID_LABELS_BG_THICKNESS, 0],
                    [LID_LABELS_BORDER_THICKNESS, 2],
                    [ LABEL,
                        [
                            [ LBL_FONT, "IBM Plex Sans JP:style=bold"],
                            [ LBL_SIZE,         10],
                            [ LBL_TEXT, "Basket"],
                        ]
                    ],  
                ],
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [45.5, 36.5, 30] ],

                ]
            ],
            [ BOX_COMPONENT,
                [
                [CMP_SHAPE,                             ROUND],
                [CMP_SHAPE_VERTICAL_B,                  t],
                [CMP_COMPARTMENT_SIZE_XYZ,  [ 22, 22, 1.0] ],
                [CMP_CUTOUT_BOTTOM_B, t],
                ]
            ],
          
        ]
    ],
    [   "fish",
        [
            [ BOX_SIZE_XYZ, [68, 68, 32 ]],
            [ BOX_STACKABLE_B, f],
            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,         4],
                    [LID_LABELS_BG_THICKNESS, 0],
                    [LID_LABELS_BORDER_THICKNESS, 2],
                    [ LABEL,
                        [
                            [ LBL_FONT, "IBM Plex Sans JP:style=bold"],
                            [ LBL_SIZE,         10],
                            [ LBL_TEXT, "Fish"],
                        ]
                    ],  
                ],
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 28.5,65,25+1] ],
                    [POSITION_XY, [68-5-3-28.5,0]],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 21.5,65,21.5+1] ],
                    [POSITION_XY, [5,0]],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 65,65,8] ],
                ]
            ],
          
        ]
    ],




 
    [   "oshax",
        [
            [ BOX_SIZE_XYZ, [68, 78, 18 ]],
            [ BOX_STACKABLE_B, f],
            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,         4],
                    [LID_LABELS_BG_THICKNESS, 0],
                    [LID_LABELS_BORDER_THICKNESS, 2],
                    [ LABEL,
                        [
                            [ LBL_FONT, "IBM Plex Sans JP:style=bold"],
                            [ LBL_SIZE,         10],
                            [ LBL_TEXT, "Oshax"],
                        ]
                    ],  
                ],
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 56,74,16.5] ],
                ]
            ],
          
        ]
    ],

 
    [   "cats",
        [
            [ BOX_SIZE_XYZ, [68, 115, 32 ]],
            [ BOX_STACKABLE_B, f],
            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,         4],
                    [LID_LABELS_BG_THICKNESS, 0],
                    [LID_LABELS_BORDER_THICKNESS, 2],
                    [ LABEL,
                        [
                            [ LBL_FONT, "IBM Plex Sans JP:style=bold"],
                            [ LBL_SIZE,         10],
                            [ LBL_TEXT, "Cats"],
                        ]
                    ],  
                ],
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 62,115-3,30] ],
                ]
            ],
          
        ]
    ],

 [   "extra deck",
        [
            [ BOX_SIZE_XYZ, [68, 25+3, 92 ]],
            [ BOX_STACKABLE_B, f],
            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,         4],
                    [LID_LABELS_BG_THICKNESS, 0],
                    [LID_LABELS_BORDER_THICKNESS, 2],
                    [ LABEL,
                        [
                            [ LBL_FONT, "IBM Plex Sans JP:style=bold"],
                            [ LBL_SIZE,         10],
                            [ LBL_TEXT, "Solo"],
                        ]
                    ],  
                ],
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 65, 25, 90] ],
                ]
            ],
        ]
    ],
    
 
 
];


MakeAll();