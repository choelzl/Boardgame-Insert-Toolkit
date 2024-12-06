include <BIT/boardgame_insert_toolkit_lib.2.scad>;

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
    [   "player",
        [
            [ BOX_SIZE_XYZ, [90, 55, 16.0-1.5] ],
            [ BOX_STACKABLE_B, f],
            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,         4],
                    [LID_LABELS_INVERT_B,t],
                    [LID_LABELS_BG_THICKNESS, 0],
                    [LID_LABELS_BORDER_THICKNESS, 2],
                    [ LABEL,
                        [
                            [ LBL_FONT, "IBM Plex Sans JP:style=bold"],
                            [ LBL_SIZE,         25],
                            [ LBL_TEXT, "人"],
                        ]
                    ],  
                ] ,
            ],
            
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 52, 52, 13] ],
                    [POSITION_XY, [0,CENTER]],
                ]
            ],

            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 87, 52, 12.0] ],
                ]
            ],   
            [ BOX_COMPONENT,
                [
                [CMP_NUM_COMPARTMENTS_XY,       [1,1]],
                [CMP_SHAPE,                             ROUND],
                [CMP_SHAPE_ROTATED_B,                   f],
                [CMP_SHAPE_VERTICAL_B,                  t],

                [CMP_COMPARTMENT_SIZE_XYZ,  [ 52/2, 52/2, 1.0] ],
                [POSITION_XY, [52/4,CENTER]],
                [CMP_CUTOUT_BOTTOM_B, t],
                ]
            ],
            
        ]
    ],
    [   "connection",
        [
            [ BOX_SIZE_XYZ, [55, 55, 16-1.5 ]],
            [ BOX_STACKABLE_B, f],
            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,         4],
                    //[LID_LABELS_INVERT_B,t],
                    [LID_LABELS_BG_THICKNESS, 0],
                    [LID_LABELS_BORDER_THICKNESS, 2],
                    [ LABEL,
                        [
                            [ LBL_FONT, "IBM Plex Sans JP:style=bold"],
                            [ LBL_SIZE,         18],
                            [ LBL_TEXT, "連絡"],
                        ]
                    ],  
                ],
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 55-3, 55-3, 13] ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                [CMP_NUM_COMPARTMENTS_XY,       [1,1]],
                [CMP_SHAPE,                             ROUND],
                [CMP_SHAPE_ROTATED_B,                   f],
                [CMP_SHAPE_VERTICAL_B,                  t],

                [CMP_COMPARTMENT_SIZE_XYZ,  [ 52/2, 52/2, 1.0] ],
                [POSITION_XY, [52/4,CENTER]],
                [CMP_CUTOUT_BOTTOM_B, t],
                ]
            ],
        ]
    ],


 
    [   "cubed",
        [
            [ BOX_SIZE_XYZ, [55, 55, 33] ],
            [ BOX_STACKABLE_B, f],
            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,         4],
                    //[LID_LABELS_INVERT_B,t],
                    [LID_LABELS_BG_THICKNESS, 0],
                    [LID_LABELS_BORDER_THICKNESS, 2],
                    [ LABEL,
                        [
                            [ LBL_FONT, "IBM Plex Sans JP:style=bold"],
                            [ LBL_SIZE,         18],
                            [ LBL_TEXT, "貨物"],
                        ]
                    ],  
                ] ,
            ],
            
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [52, 52, 22+4] ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                [CMP_NUM_COMPARTMENTS_XY,       [1,1]],
                [CMP_SHAPE,                             ROUND],
                [CMP_SHAPE_ROTATED_B,                   f],
                [CMP_SHAPE_VERTICAL_B,                  t],

                [CMP_COMPARTMENT_SIZE_XYZ,  [ 52/2, 52/2, 1.0] ],
                [POSITION_XY, [52/4,CENTER]],
                [CMP_CUTOUT_BOTTOM_B, t],
                ]
            ],
            [ BOX_COMPONENT, // 4R
                [
                [CMP_NUM_COMPARTMENTS_XY,   [2,2]],
                [CMP_SHAPE,                             ROUND],
                [CMP_SHAPE_ROTATED_B,                   f],
                [CMP_SHAPE_VERTICAL_B,                  t],
                [CMP_PADDING_XY,            [12,12]],
                [CMP_COMPARTMENT_SIZE_XYZ,  [16,16,10+22] ],
                [POSITION_XY, [CENTER,CENTER]],
                ]
            ],      
           
            
        ]
    ],
    [   "bank",
        [
            [ BOX_SIZE_XYZ, [90, 49,23] ],
            [ BOX_STACKABLE_B, f],
            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,         4],
                    //[LID_LABELS_INVERT_B,t],
                    [LID_LABELS_BG_THICKNESS, 0],
                    [LID_LABELS_BORDER_THICKNESS, 2],
                    [ LABEL,
                        [
                            [ LBL_FONT, "IBM Plex Sans JP:style=bold"],
                            [ LBL_SIZE,         18],
                            [ LBL_TEXT, "点"],
                        ]
                    ],  
                ] ,
            ],
            
            [ BOX_COMPONENT, // 1,3,5,10+20
                [
                [CMP_NUM_COMPARTMENTS_XY,       [4,1]],
                [CMP_SHAPE,                     ROUND],
                [CMP_SHAPE_VERTICAL_B,          f],
                [CMP_COMPARTMENT_SIZE_XYZ,  [20,46,20] ],
                [POSITION_XY, [CENTER,CENTER]],
                ]
            ],
            
           
            
        ]
    ],


    [   "world",
        [
            [ BOX_SIZE_XYZ, [55, 55, 33] ],
            [ BOX_STACKABLE_B, f],
            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,         4],
                    //[LID_LABELS_INVERT_B,t],
                    [LID_LABELS_BG_THICKNESS, 0],
                    [LID_LABELS_BORDER_THICKNESS, 2],
                    [ LABEL,
                        [
                            [ LBL_FONT, "IBM Plex Sans JP:style=bold"],
                            [ LBL_SIZE,         18],
                            [ LBL_TEXT, "世界"],
                        ]
                    ],  
                ] ,
            ],
            
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [52, 52, 30] ],
                ]
            ],
        ]
    ],

];


MakeAll();