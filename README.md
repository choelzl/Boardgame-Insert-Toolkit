<!--ts-->
<!--te-->

# Keys

#### `TYPE`

value is expected to be one of the following:

- `BOX` (default)
  a box.
- `DIVIDERS`
  a set of dividers.

### Box keys

#### `BOX_SIZE_XYZ`

value is expected to be an array of 3 numbers, and determines the exterior dimensions
of the box as width, depth, height.  
e.g. `[ BOX_SIZE_XYZ, [ 140, 250, 80 ] ]`

#### `BOX_COMPONENT`

value is expected to be an array of components key-value pairs. Box can have as many of these as desired.

#### `BOX_VISUALIZATION`

describe me

#### `BOX_STACKABLE_B`

value is expected to be a bool and determines whether the base of the box is cut to fit on top of an identically sized box. Note that this requires a printer that can print a 45 degree overhang without supports.

### Lid keys

as of v2.09, all lid parameters are specified in a BOX_LID container. This makes it easy to reuse box lid parameters across multiple boxes.

#### `BOX_LID`

value is expected to be an array of lid key-value pairs.

#### `LID_INSET_B`

value is expected to be a bool and determines whether the box will have an inset lid or a cap lid.
Considerations:

- Inset lids are required if the boxes are intended to snap fit as a stack ( BOX_STACKABLE_B true ).
- Cap lid is preferred for printers that are sloppier, since the cap lid is more forgiving.
- Cap lid is preferred if the cap will be used to hold pieces during play, since the inset lid does not have walls.

#### `LID_NOTCHES_B`

value is expected to be a bool, "true", "false", "t", or "f", and determines whether the box will have notches that make pulling the lid off easier. Only applies to cap lids ( LID_INSET_B false )
e.g. `[ LID_NOTCHES_B, f ]`

#### `LID_TABS_4B`

value is expected to be an array of 4 bools, and determines on what sides the lid will have tabs when the lid is inset. The default is [ t,t,t,t ].

#### `LID_PATTERN_RADIUS`

value is expected to be a number, and determines the radius of the hexes in the lid.  
e.g. `[ LID_PATTERN_RADIUS, 5 ]`

#### `LID_PATTERN_N1`

value is expected to be a number, and determines the number of sides that the pattern outer shape has.

#### `LID_PATTERN_N2`

value is expected to be a number, and determines the number of sides that the pattern inner shape has.

#### `LID_PATTERN_ANGLE`

value is expected to be a number, and determines the angle of the pattern shape.

#### `LID_PATTERN_ROW_OFFSET`

value is expected to be a number, and determines the percent of height that each row will offset from each other.

#### `LID_PATTERN_COL_OFFSET`

value is expected to be a number, and determines the percent of width that each column will offset from each other.

#### `LID_PATTERN_THICKNESS`

value is expected to be a number, and determines the thickness of the shape, i.e. the difference between the inner and outer shapes` radius.

#### `LID_FIT_UNDER_B`

value is expected to be a bool, and determines whether the box bottom is formed to allow the box to sit in the lid when open. Note that this requires a printer that can print a 45 degree overhang without supports.

#### `BOX_NO_LID_B`

value is expected to be a bool, and determines whether a lid is ommitted. If ommitted, the box will not form an inset lip to support a lid.

#### `LID_SOLID_B`

value is expected to be a bool, and determines whether the lid is a hex mesh or solid.

#### `LID_SOLID_LABELS_DEPTH`

value is expected to be a number, and if the lid is solid, determines how deep the label cut is.

#### `LID_LABELS_INVERT_B`

value is expected to be a bool, and determines whether the lid label is a positive or negative shape.

#### `LID_LABELS_BG_THICKNESS`

value is expected to be a number, and determines the thickness of the lid label background.

#### `LID_LABELS_BORDER_THICKNESS`

value is expected to be a number, and determines the thickness of the lid label border. Default is 0.3 mm

#### `LID_STRIPE_WIDTH`

value is expected to be a number, and determines the thickness of the lines in the striped grid behind the label. Default is 0.5 mm

#### `LID_STRIPE_SPACE`

value is expected to be a number, and determines the spacing of the lines in the striped grid behind the label. Default is 1.0 mm

#### `LID_HEIGHT`

value is expected to be a number, and determines whether how deep the lid is. Default is 1mm for inset lids, and 2mm for cap lids.

#### `LID_CUTOUT_SIDES_4B`

value is expected to be an array of 4 bools, and determines whether finger cutouts are to be added to the lid. This allows the lid to be used as a card tray during play. The values represent [front, back, left, right ].  
e.g. `[ LID_CUTOUT_SIDES_4B, [ t, t, f, f ] ]`

### Dividers keys

as of v2.04, in addition to boxes, one can also create card dividers.

#### `DIV_THICKNESS`

value is expected to be a number, and determines the thickness of each divider.

#### `DIV_FRAME_SIZE_XY`

value is expected to be an array of 2 numbers, and determines the width and height of each divider (without the tab).

#### `DIV_FRAME_TOP`

value is expected to be a number, and determines the height of the top bar of the divider.

#### `DIV_FRAME_BOTTOM`

value is expected to be a number, and determines the height of the bottom bar of the divider.

#### `DIV_FRAME_COLUMN`

value is expected to be a number, and determines the width of the vertical bars of the divider.

#### `DIV_FRAME_RADIUS`

value is expected to be a number, and determines the radius of the frame corners of the divider.

#### `DIV_FRAME_NUM_COLUMNS`

value is expected to be a number, and determines the number of columns in the middle of the frame of the divider. 0 makes for a frame that has no middle columns. -1 makes for a solid divider with no holes.

#### `DIV_TAB_SIZE_XY`

value is expected to be an array of 2 numbers, and determines the width and height of each divider's tab.

#### `DIV_TAB_RADIUS`

value is expected to be a number, and determines the radius of the corner of the tab on the divider.

#### `DIV_TAB_CYCLE`

value is expected to be a number, and determines over how many dividers should the tab drift from left to right.

#### `DIV_TAB_CYCLE_START`

value is expected to be a number, and determines the starting position of the first divider. Default is 1.

#### `DIV_TAB_TEXT`

value is expected to be an array of strings, and determines what dividers get created.
e.g. `[ DIV_TAB_TEXT, [ "Tab-1", "Tab-2", "Tab-3", "Tab-4" ] ]`

#### `DIV_TAB_TEXT_SIZE`

value is expected to be a number, and determines the font size of the tab text.

#### `DIV_TAB_TEXT_FONT`

value is expected to be a string, and determines the font of the tab text. More [here](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Text#Using_Fonts_&_Styles).  
e.g. `[ LBL_FONT, "Times New Roman:style=bold italic" ]`

#### `DIV_TAB_TEXT_SPACING`

value is expected to be a number, and determines the letter spacing of the tab text.

#### `DIV_TAB_TEXT_CHAR_THRESHOLD`

value is expected to be a number, and determines the number of characters above which the size of the font should be determined automatically.

### Compartment keys

#### `CMP_NUM_COMPARTMENTS_XY`

value is expected to be an array of 2 numbers, and determines how many compartments this component will have in the width and depth direction.  
e.g. `[ CMP_NUM_COMPARTMENTS_XY, [ 4, 6 ] ]`

#### `CMP_COMPARTMENT_SIZE_XYZ`

value is expected to be an array of 3 numbers, and determines the interior dimensions of each compartment within the component.  
e.g. `[ CMP_COMPARTMENT_SIZE_XYZ, [ 10, 20, 5 ] ]`

#### `CMP_SHAPE`

value is expected to be one of the following:

- `SQUARE`  
  default right angled compartment
- `HEX`  
  a 6-sided compartment
- `HEX2`  
  a 6-sided compartment that is rotated 30 degrees
- `OCT`  
  an 8-sided compartment
- `OCT2`  
  an 8-sided compartment that is rotated 22.5 degrees
- `ROUND`  
  a round compartment
- `FILLET`  
  a square compartment with rounded bottoms

e.g. `[ CMP_SHAPE, HEX2 ]`

#### `CMP_SHAPE_ROTATED_B`

value is expected to be a bool, and determines whether the shape is rotated along the Z axis. That is, whether it goes back and forth or side to side.

#### `CMP_SHAPE_VERTICAL_B`

value is expected to be a bool, and determines whether the shape is rotated for vertical stacks of pieces.

#### `CMP_FILLET_RADIUS`

value is expected to be a number, and determines the radius of the fillet, if shape is fillet.

#### `CMP_PEDESTAL_BASE_B`

value is expected to be a bool, and determines whether the base of the compartment is a pedestal. This allows for cards or tiles to be extracted by pushing down on one of the sides. Ideal for short stacks and for compartments that are interior and where finger cutouts aren't possible or ideal.

#### `CMP_PADDING_XY`

value is expected to be an array of 3 numbers, and determines how far apart the compartments in a component are, in the width and depth direction.  
e.g. `[ CMP_PADDING_XY, [ 2.5, 1.3 ] ]`

#### `CMP_PADDING_HEIGHT_ADJUST_XY`

value is expected to be an array of 2 numbers, and determines how much to modify the height of the x and y padding between compartments. These should typically be negative values.  
e.g. `[ CMP_PADDING_HEIGHT_ADJUST_XY, [ -3, 0 ] ]`

#### `CMP_MARGIN_FBLR`

value is expected to be an array of 4 floats, and determines the front, back, left, and right margins, respectively.  
e.g. `[ CMP_MARGIN_FBLR, [ 1, 10, 0, 20 ] ]`

#### `CMP_CUTOUT_SIDES_4B`

value is expected to be an array of 4 bools, and determines whether finger cutouts are to be added to the compartments on the sides. The values represent [front, back, left, right ].  
e.g. `[ CMP_CUTOUT_SIDES_4B, [ t, t, f, f ] ]`

#### `CMP_CUTOUT_HEIGHT_PCT`

value is expected to be an float between 0 and 100, and determines what percent of the box height is removed for finger cutouts, starting from the top. The default is 100.
e.g. `[ CMP_CUTOUT_HEIGHT_PCT, 100 ]`

#### `CMP_CUTOUT_DEPTH_PCT`

value is expected to be an float between 0 and 100, and determines what percent of the box depth is removed for finger cutouts, when the cutout goes into the base of the box. The default is 25.
e.g. `[ CMP_CUTOUT_DEPTH_PCT, 25 ]`

#### `CMP_CUTOUT_WIDTH_PCT`

value is expected to be an float between 0 and 100, and determines what percent of the box width is removed for finger cutouts. The default is 50.
e.g. `[ CMP_CUTOUT_WIDTH_PCT, 25 ]`

#### `CMP_CUTOUT_TYPE`

value is expected to be one of the following keywords: BOTH, INTERIOR, or EXTERIOR, and determines whether where on the component the cutouts are applied.
e.g. `[ CMP_CUTOUT_TYPE, INTERIOR ]`

#### `CMP_CUTOUT_BOTTOM_B`

value is expected to be a bool and determines whether the bottom of the compartment is cut out. Note that this is ignored if CMP_PEDESTAL_BASE_B is true or if CMP_SHAPE is set to FILLET.
e.g. `[ CMP_CUTOUT_BOTTOM, true ]`

#### `CMP_CUTOUT_BOTTOM_PCT`

value is expected to be an float between 0 and 100, and determines what percent of the box bottom is removed for bottom cutouts. The default is 80.
e.g. `[ CMP_CUTOUT_BOTTOM_PCT, 90 ]`

#### `CMP_CUTOUT_CORNERS_4B`

value is expected to be an array of 4 bools, and determines whether finger cutouts are to be added to the compartments on the corners. The values represent [front-left, back-right, back-left, front-right ].  
e.g. `[ CMP_CUTOUT_CORNERS_4B, [ t, t, f, f ] ]`

#### `CMP_SHEAR`

value is expected to be an array of 2 numbers, and determines the degrees to which the component should be sheared in the direction of width and depth. The shearing pivots around the center of the component.
e.g. `[ CMP_SHEAR, [ 45, 0 ] ]`

#### `LABEL`

value is expected to be an array of key-values that define a label. Labels can be defined at the box level for box labels, inside BOX_LID arrays for labels that will appear on the lid, and inside BOX_COMPONENT arrays for labels that will appear on the compartments. Each supports as many labels as desired.

### Label keys

Key-pairs that are expected in a LABEL container.

#### `LBL_TEXT`

value is expected to either be a string, or an array of strings matching the structure of the compartments. A single string will label every compartment with that string while an array will label each compartment with its respective string.  
e.g. `[ LBL_TEXT, "tokens" ]`  
or

    [ LBL_TEXT,
        [
            ["back left", "back right"],
            ["front left", "front right"],
        ]
    ]

#### `LBL_IMAGE`

value is expected to be a string specifying an SVG filename. `LBL_TEXT` takes priority over `LBL_IMAGE`, so if both are provided, only the string will be used. **Warning:** this option will slow things down considerably.
e.g. `[ LBL_IMAGE, "image.svg" ]`

#### `LBL_SIZE`

value is expected to either be `AUTO` or a number. `AUTO` will attempt to scale the label to fit in the space according to _width_. This does not work will with very short words. A number will specify the font size (if `LBL_TEXT`) or the image width (if `LBL_IMAGE`).
e.g. `[ LBL_SIZE, 12 ]`

#### `LBL_SPACING`

value is expected to be a number, and determines the letter spacing.
e.g. `[ LBL_SPACING, 1.1 ]`

#### `LBL_PLACEMENT`

value is expected to be one of the following:

- `FRONT`
- `BACK`
- `LEFT`
- `RIGHT`
- `FRONT_WALL`
- `BACK_WALL`
- `LEFT_WALL`
- `RIGHT_WALL`
- `CENTER`
- `BOTTOM`

Front, back, left, and right, will place the label on the top surface, while the \_wall values will place the label inside, on the compartment wall. Center will place the label on the compartment floor. Bottom is for labeling the bottom of the box.

#### `LBL_FONT`

value is expected to be a string that determines what font to use for the label. More [here](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Text#Using_Fonts_&_Styles).  
e.g. `[ LBL_FONT, "Times New Roman:style=bold italic" ]`

#### `LBL_DEPTH`

value is expected to be a number, and determines how deep the label should cut.  
e.g. `[ LBL_DEPTH, 0.5 ]`

#### `ROTATION`

value is expected to be a number, and determines the degree to which the component or label is to be rotated.  
e.g. `[ ROTATION, 45 ]`

#### `POSITION_XY`

value is expected to be an array of 2 numbers, although `MAX` is also valid, and determines the position of the label or component.

- When used on a label, the values are relative to reasonable centers and can be used to adjust the positioning of the text.
- When used on a component, it is always relative to the origin of the box, and almost always needs to be present.
- When used on a component, the value `MAX` essentially aligns that value to opposite end, so 'right' when placed in the x position, and 'back' when placed in the y position.  
  e.g. `[ POSITION_XY, [ 20, MAX ] ]`

#### `ENABLED_B`

value is expected to be a bool, and determines whether the box, component, or label, is used. This allows for easily turning features off temporarily or permanently without needing to delete lots of content.  
e.g. `[ ENABLED_B, f ]`
