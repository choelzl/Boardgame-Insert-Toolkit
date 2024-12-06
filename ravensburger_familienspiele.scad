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
    "tiles", [[BOX_SIZE_XYZ, [360, 260, 50]],
              [BOX_NO_LID_B, t],
              [BOX_COMPONENT,  // Boards
               [[CMP_COMPARTMENT_SIZE_XYZ, [315, 160, 25]],
                [POSITION_XY, [g_wall_thickness * 2, g_wall_thickness * 2]]]],
              [BOX_COMPONENT,  // compartments
               [[CMP_COMPARTMENT_SIZE_XYZ,
                 [(360 / 2 - 4 * g_wall_thickness),
                  (260 / 3 - 3 * g_wall_thickness),
                  50 - g_wall_thickness]],
                [CMP_LID_BACKGROUND_B, t],
                [CMP_PADDING_XY, [g_wall_thickness * 3, g_wall_thickness * 2]],
                [CMP_NUM_COMPARTMENTS_XY, [2, 3]],
                [CMP_COMPARTMENT_CUSTOM_B, t],
                [CMP_COMPARTMENT_CUSTOM_COUNT, 8]]]]
  ],
  [
    "divider",
    [[TYPE, DIVIDERS],
     [DIV_THICKNESS, g_wall_thickness - g_tolerance],
     [DIV_FRAME_SIZE_XY,
      [(360 / 2 - 4 * g_wall_thickness) + 0.5, 50 - g_wall_thickness - 25]],
     [DIV_FRAME_NUM_COLUMNS, -1],
     [DIV_FRAME_RADIUS, g_wall_thickness],
     [DIV_FRAME_CUTOUT_B, t],
     [DIV_TAB_TEXT, [""]],
     [DIV_TAB_B, f]]
  ]
];
MakeAll();
