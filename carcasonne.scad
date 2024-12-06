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
      [
          // BASE: 144 [17]
          // Abbot: 0 [0]
          // RIVER: 24 [3]
          [CMP_COMPARTMENT_SIZE_XYZ,
           [e_box_inner - 1,
            e_box_outer * 4 - 2 * g_wall_thickness,
            e_box_inner_lid]],
          [CMP_LID_BACKGROUND_B, t],
          [POSITION_XY, [g_wall_thickness, 0]],
          [CMP_COMPARTMENT_CUSTOM_B, t],
          [CMP_COMPARTMENT_CUSTOM_COUNT, 20]]],
     [BOX_COMPONENT,
      // P&D: 60x [7]
      // I&C: 36x [5]
      // TOWR: 36x [5]
      // A&M: 24x [3]
      [[CMP_COMPARTMENT_SIZE_XYZ,
        [e_box_inner - 1,
         e_box_outer * 4 - 2 * g_wall_thickness,
         e_box_inner_lid]],
       [CMP_LID_BACKGROUND_B, t],
       [POSITION_XY, [g_wall_thickness * (1 + 2.5 / 2) + e_box_inner, 0]],
       [CMP_COMPARTMENT_CUSTOM_B, t],
       [CMP_COMPARTMENT_CUSTOM_COUNT, 20]]],
     [BOX_COMPONENT,
      // T&B: 48x [6]
      // Flying: 16x [2]
      // Mess:16 x [2]
      // Ferries: 16x [2]
      // Gold: 16x [2]
      // M&W: 16x [2]
      // Robbers: 16x [2]
      // Crop: 12x [2]
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
  ],
  /*
  Fruit: 12

  Tradegood 20 (9,6,5)
  tower floor 30 + tower Flying Dice 1 Ferries 8 Gold 16

  point 6
  scoring gold 1

  Player[Meeple9, BigMeeple1, Mayor1, Wagon1, Abbot1, Builder1, Pig1, Barn1,
  Messenger1, robber1, abbey1 ]

  Dragon1, Fairy1, Mage1, Witch1


  TODO: dice = 16x16x16
  score + quest + gold = 2+16+16+6+2 = 32 + 10 = 42

  */
];
MakeAll();

// https://www.carcassonnecentral.com/community/index.php?topic=28.0
