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

e_box_outer = 50;
e_box_outer_lid = 50 - g_wall_thickness;
e_box_inner = e_box_outer - 2 * g_wall_thickness;
e_box_inner_lid = e_box_outer - 2 * g_wall_thickness;

data = [
  [
    "score track",
    [[BOX_SIZE_XYZ,
      [e_box_outer * 6,
       e_box_outer * 4,
       2.5 * g_wall_thickness]],  // DONOT PRINT, REFERENCE ONLY
     [BOX_NO_LID_B, t],
     [BOX_LID,
      [[LID_PATTERN_RADIUS, 4],
       [LID_LABELS_BG_THICKNESS, 0],
       [LID_LABELS_BORDER_THICKNESS, 2],
       [LABEL,
        [[LBL_FONT, "IBM Plex Sans:style=bold"],
         [LBL_SIZE, AUTO],
         [LBL_TEXT, "SCORE"]]]]],
     [BOX_COMPONENT, [[CMP_COMPARTMENT_SIZE_XYZ, [45 * 6 + 6, 45 * 4 + 4, 2]]]]]
  ],
  [
    "tiles",
    [[BOX_SIZE_XYZ, [e_box_outer * 3, e_box_outer * 4, e_box_outer_lid]],
     [BOX_NO_LID_B, f],
     [BOX_COMPONENT,
      [[CMP_COMPARTMENT_SIZE_XYZ,
        [e_box_inner - 1,
         e_box_outer * 4 - 2 * g_wall_thickness,
         e_box_inner_lid]],
       [CMP_LID_BACKGROUND_B, t],
       [POSITION_XY, [g_wall_thickness, 0]],
       [CMP_COMPARTMENT_CUSTOM_B, t],
       [CMP_COMPARTMENT_CUSTOM_COUNT, 20]]],
     [BOX_COMPONENT,
      [[CMP_COMPARTMENT_SIZE_XYZ,
        [e_box_inner - 1,
         e_box_outer * 4 - 2 * g_wall_thickness,
         e_box_inner_lid]],
       [CMP_LID_BACKGROUND_B, t],
       [POSITION_XY, [g_wall_thickness * (1 + 2.5 / 2) + e_box_inner, 0]],
       [CMP_COMPARTMENT_CUSTOM_B, t],
       [CMP_COMPARTMENT_CUSTOM_COUNT, 20]]],
     [BOX_COMPONENT,
      [[CMP_COMPARTMENT_SIZE_XYZ,
        [e_box_inner - 1,
         e_box_outer * 4 - 2 * g_wall_thickness,
         e_box_inner_lid]],
       [CMP_LID_BACKGROUND_B, t],
       [POSITION_XY, [g_wall_thickness * (1 + 2.5) + 2 * e_box_inner, 0]],
       [CMP_COMPARTMENT_CUSTOM_B, t],
       [CMP_COMPARTMENT_CUSTOM_COUNT, 20]]]]
  ],
  [
    "tiles_divider", [[TYPE, DIVIDERS],
                      [DIV_THICKNESS, g_wall_thickness - g_tolerance],
                      [DIV_FRAME_SIZE_XY, [e_box_inner + 0.5, e_box_inner_lid]],
                      [DIV_FRAME_NUM_COLUMNS, 0],
                      [DIV_FRAME_COLUMN, e_box_inner / 4],
                      [DIV_FRAME_BOTTOM, e_box_inner / 3],
                      [DIV_FRAME_RADIUS, g_wall_thickness],
                      [DIV_FRAME_CUTOUT_B, t],
                      [DIV_TAB_TEXT, [""]],
                      [DIV_TAB_B, f]]
  ],
  [
    "player",
    [[BOX_SIZE_XYZ, [e_box_outer, e_box_outer, e_box_outer_lid]],
     [BOX_MULTIPLE, 6],
     [BOX_MULTIPLE_LID, 6],
     [BOX_COMPONENT,
      [[CMP_COMPARTMENT_SIZE_XYZ, [e_box_inner, e_box_inner, e_box_inner_lid]],
       [CMP_LID_BACKGROUND_B, t]]]]
  ],
  [
    "ressources",
    [[BOX_SIZE_XYZ,
      [e_box_outer, e_box_outer, e_box_outer / 2 - g_wall_thickness]],
     [BOX_COMPONENT,
      [[CMP_COMPARTMENT_SIZE_XYZ, [e_box_inner, e_box_inner, 10]]]],
     [BOX_COMPONENT,
      [[CMP_COMPARTMENT_SIZE_XYZ, [19, 21, 22]],
       [POSITION_XY, [1 / 2, 7]],
       [CMP_LID_BACKGROUND_B, t]]],
     [BOX_COMPONENT,
      [[CMP_COMPARTMENT_SIZE_XYZ, [13, 21, 22]],
       [POSITION_XY, [1 / 2 + 19 + g_wall_thickness, 7]],
       [CMP_LID_BACKGROUND_B, t]]],
     [BOX_COMPONENT,
      [[CMP_COMPARTMENT_SIZE_XYZ, [11, 21, 22]],
       [POSITION_XY, [1 / 2 + 32 + 2 * g_wall_thickness, 7]],
       [CMP_LID_BACKGROUND_B, t]]],
     [BOX_COMPONENT,
      [[CMP_COMPARTMENT_SIZE_XYZ, [4 * 8, 4.5, 17]],
       [POSITION_XY, [CENTER, 38]],
       [CMP_LID_BACKGROUND_B, t]]]]
  ],
  [
    "gold",
    [[BOX_SIZE_XYZ,
      [e_box_outer, e_box_outer, e_box_outer / 2 - g_wall_thickness]],
     [BOX_COMPONENT,
      [[CMP_COMPARTMENT_SIZE_XYZ, [e_box_inner, e_box_inner, e_box_inner / 2]],
       [CMP_LID_BACKGROUND_B, t]]]]
  ],
  [
    "tower",
    [[BOX_SIZE_XYZ,
      [e_box_outer, e_box_outer * 3, e_box_outer / 2 - g_wall_thickness]],
     [BOX_COMPONENT,
      [[POSITION_XY, [g_wall_thickness + 1, CENTER]],
       [CMP_COMPARTMENT_SIZE_XYZ, [20, 135, 20]],
       [CMP_LID_BACKGROUND_B, t]]],
     [BOX_COMPONENT,
      [[POSITION_XY, [e_box_inner - g_wall_thickness - 20 - 1, CENTER]],
       [CMP_COMPARTMENT_SIZE_XYZ, [20, 135, 20]],
       [CMP_LID_BACKGROUND_B, t]]],
     [BOX_COMPONENT,
      [[CMP_COMPARTMENT_SIZE_XYZ,
        [e_box_inner, 3 * e_box_outer - 2 * g_wall_thickness, 10]]]]]
  ],
  [
    "score_tile",
    [[BOX_SIZE_XYZ,
      [e_box_outer, e_box_outer, e_box_outer / 2 - g_wall_thickness]],
     [BOX_NO_LID_B, f],
     [BOX_COMPONENT,
      [[CMP_COMPARTMENT_SIZE_XYZ,
        [e_box_inner, e_box_inner, e_box_inner_lid / 2]],
       [CMP_LID_BACKGROUND_B, t]]],
     [BOX_COMPONENT,
      [[CMP_SHAPE, ROUND],
       [CMP_SHAPE_VERTICAL_B, t],
       [CMP_COMPARTMENT_SIZE_XYZ, [e_box_inner / 2, e_box_inner / 2, 1.0]],
       [CMP_CUTOUT_BOTTOM_B, t]]]]
  ],
  [
    "messenger_tile",
    [[BOX_SIZE_XYZ,
      [e_box_outer, e_box_outer, e_box_outer / 2 - g_wall_thickness]],
     [BOX_NO_LID_B, f],
     [BOX_COMPONENT,
      [[CMP_COMPARTMENT_SIZE_XYZ,
        [e_box_inner, e_box_inner, e_box_inner_lid / 2]],
       [CMP_LID_BACKGROUND_B, t]]],
     [BOX_COMPONENT,
      [[CMP_SHAPE, ROUND],
       [CMP_SHAPE_VERTICAL_B, t],
       [CMP_COMPARTMENT_SIZE_XYZ, [e_box_inner / 2, e_box_inner / 2, 1.0]],
       [CMP_CUTOUT_BOTTOM_B, t]]]]
  ],
  [
    "extra_meeples",
    [[BOX_SIZE_XYZ,
      [e_box_outer, e_box_outer, e_box_outer / 2 - g_wall_thickness]],
     [BOX_COMPONENT,
      [[CMP_COMPARTMENT_SIZE_XYZ, [e_box_inner, e_box_inner, e_box_inner / 2]],
       [CMP_LID_BACKGROUND_B, t]]]]
  ]
];
MakeAll();

// https://www.carcassonnecentral.com/community/index.php?topic=28.0
