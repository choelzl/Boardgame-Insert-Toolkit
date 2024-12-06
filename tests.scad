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
// Default = 1.5mm
g_wall_thickness = 1.5;

// The tolerance value is extra space put between planes of the lid and box that
// fit together. Increase the tolerance to loosen the fit and decrease it to
// tighten it.
//
// Note that the tolerance is applied exclusively to the lid.
// So if the lid is too tight or too loose, change this value ( up for looser
// fit, down for tighter fit ) and you only need to reprint the lid.
//
// The exception is the stackable box, where the bottom of the box is the lid of
// the box below, in which case the tolerance also affects that box bottom.
//
g_tolerance = 0.12;

// This adjusts the position of the lid detents downward.
// The larger the value, the bigger the gap between the lid and the box.
g_tolerance_detents_pos = 0.12;

data = [
  [
    "main deck",
    [[BOX_SIZE_XYZ, [68, 78, 92]],
     [BOX_MULTIPLE, 3],
     [BOX_MULTIPLE_LID, 2],

     [BOX_LID,
      [[LID_PATTERN_RADIUS, 4],
       [LID_LABELS_BG_THICKNESS, 0],
       [LID_LABELS_BORDER_THICKNESS, 2],
       [LABEL,
        [[LBL_FONT, "IBM Plex Sans JP:style=bold"],
         [LBL_SIZE, 18],
         [LBL_TEXT, "Deck"],
]],
],
],
     [BOX_COMPONENT,
      [[CMP_LID_BACKGROUND_B, t],
       [CMP_COMPARTMENT_SIZE_XYZ, [30, 75, 90]],
       [CMP_COMPARTMENT_CUSTOM_B, t]]],
     [BOX_COMPONENT, [[CMP_COMPARTMENT_SIZE_XYZ, [65, 75, 15]], ]],
     [BOX_COMPONENT,
      [[CMP_SHAPE, ROUND],
       [CMP_SHAPE_VERTICAL_B, t],
       [CMP_COMPARTMENT_SIZE_XYZ, [16, 16, 1.0]],
       [CMP_CUTOUT_BOTTOM_B, t],
]],
]
  ],

  [
    "Label",
    [[BOX_SIZE_XYZ, [68, 78, 92]],
     [BOX_LID,
      [[LID_PATTERN_RADIUS, 4],
       [LID_LABELS_BG_THICKNESS, 0],
       [LID_LABELS_INVERT_B, t],
       [LID_LABELS_INVERT_FILL_B, t],
       [LABEL,
        [[LBL_FONT, "IBM Plex Sans JP:style=bold"],
         [LBL_SIZE, 18],
         [LBL_TEXT, "Deck"],
]],
],
],
     [BOX_COMPONENT,
      [[CMP_LID_BACKGROUND_B, t],
       [CMP_COMPARTMENT_SIZE_XYZ, [30, 75, 90]],
       [CMP_COMPARTMENT_CUSTOM_B, t]]],
     [BOX_COMPONENT, [[CMP_COMPARTMENT_SIZE_XYZ, [65, 75, 15]], ]],
     [BOX_COMPONENT,
      [[CMP_SHAPE, ROUND],
       [CMP_SHAPE_VERTICAL_B, t],
       [CMP_COMPARTMENT_SIZE_XYZ, [16, 16, 1.0]],
       [CMP_CUTOUT_BOTTOM_B, t],
]],
]
  ],
  [
    "Fillet",
    [[BOX_SIZE_XYZ, [68, 78, 22]],
     [BOX_LID,
      [[LID_PATTERN_RADIUS, 4],
       [LABEL,
        [[LBL_FONT, "IBM Plex Sans JP:style=bold"], [LBL_TEXT, "Fillet"], ]],
],
],
     [BOX_COMPONENT,
      [[CMP_LID_BACKGROUND_B, t],
       [CMP_COMPARTMENT_SIZE_XYZ, [30, 32, 20]],
       [CMP_COMPARTMENT_CUSTOM_B, t],
       [CMP_COMPARTMENT_CUSTOM_COUNT, 6]]],
     [BOX_COMPONENT,
      [[CMP_LID_BACKGROUND_B, f],
       [CMP_COMPARTMENT_SIZE_XYZ, [30, 72, 20]],
       [CMP_SHAPE, FILLET],
       [CMP_FILLET_RADIUS, 8],
       [CMP_FILLET_SIDES_4B, [t, t, t, t]]]],
     [BOX_COMPONENT, [[CMP_COMPARTMENT_SIZE_XYZ, [65, 72, 8]]]]],
  ],
];

MakeAll();