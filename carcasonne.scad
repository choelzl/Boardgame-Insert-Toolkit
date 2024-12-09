include <boardgame_insert_toolkit_lib.2.scad>;

// determines whether lids are output.
g_b_print_lid = true;

// determines whether boxes are output.
g_b_print_box = true;

// Focus on one box
g_isolated_print_box = "";

// Used to visualize how all of the boxes fit
// together.
g_b_visualization = false;

// this is the outer wall thickness.
// Default = 1.5mm
g_wall_thickness = 1.5;

// The tolerance value is extra space put between
// planes of the lid and box that fit together.
// Increase the tolerance to loosen the fit and
// decrease it to tighten it.
//
// Note that the tolerance is applied exclusively
// to the lid. So if the lid is too tight or too
// loose, change this value ( up for looser fit,
// down for tighter fit ) and you only need to
// reprint the lid.
//
// The exception is the stackable box, where the
// bottom of the box is the lid of the box below,
// in which case the tolerance also affects that
// box bottom.
//
g_tolerance = 0.12;

// This adjusts the position of the lid detents
// downward. The larger the value, the bigger the
// gap between the lid and the box.
g_tolerance_detents_pos = 0.12;

data = [
  [
    "score track",
    [[BOX_SIZE_XYZ,
      [270,
       180,
       3]],  // DONOT PRINT, REFERENCE ONLY
     [BOX_NO_LID_B, t],
     [BOX_LID,
      [[LID_PATTERN_RADIUS, 4],
       [LID_LABELS_BG_THICKNESS, 0],
       [LID_LABELS_BORDER_THICKNESS, 2],
       [LABEL,
        [[LBL_FONT, "IBM Plex Sans:style=bold"],
         [LBL_SIZE, AUTO],
         [LBL_TEXT, "SCORE"],
]],
],
],
     [BOX_COMPONENT, [[CMP_COMPARTMENT_SIZE_XYZ, [260, 178.2, 2]], ]],
]
  ],
  [
    "tiles",
    [[BOX_SIZE_XYZ,
      [270 + g_wall_thickness * 6, 180 + 2 * g_wall_thickness, 45 + 1.5]],
     [BOX_NO_LID_B, t],

     [BOX_COMPONENT,
      [[CMP_NUM_COMPARTMENTS_XY, [6, 1]],
       [CMP_COMPARTMENT_SIZE_XYZ, [45, 180, 45]],
       [CMP_COMPARTMENT_CUSTOM_B, t]]]],
  ]
];

MakeAll();
