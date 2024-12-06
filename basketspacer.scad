











module
basket(h = 10)
{

  diameter_main = 12.5;
  groove_height_a = 2.5;
  groove_height_b = 5;
  clamp_height = 5;
  difference()
  {
    translate([ -3, -3, 0 ]) cube([ diameter_main, diameter_main, h ]);
    translate([ -2, -2, 0 ]) union()
    {
      translate([ -1, -1, 0 ]) difference()
      {
        union()
        {
          cube([ 3, 25, groove_height_a ]);
          cube([ 25, 3, groove_height_a ]);
        };
        cube([ 12, 12, groove_height_a ]);
      };
      translate([ 2, 2, 0 ]) cube([ 3, 12, groove_height_b ]);
      translate([ 2, 2, 0 ]) cube([ 12, 3, groove_height_b ]);
      translate([ 2, 2, 0 ]) cube([ 5, 5, groove_height_b ]);
    };
    translate([ 3, 3, h - clamp_height ]) difference()
    {
      cylinder(clamp_height, diameter_main + 0.5, diameter_main + 0.5);
      translate([ -2, -2, 0 ]) difference()
      {
        cube([ 20, 20, clamp_height ]);
        cube([ 5, 5, clamp_height ]);
      }
    };
  };
}

basket(40);