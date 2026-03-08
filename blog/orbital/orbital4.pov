// 
// Persistence of Vision Raytracer Version 3.1
// 
// 
// Here are some updated/additional Starfield textures which you can include 
// in distribution with POVRAY 3.1.  These textures use some of the new 
// features in POVRAY 3.1.  The starfields become more "dense" as you progress 
// from Starfield1 to Starfield6 and add a little color since all stars are not 
// white but light shades of white, blue, red, and yellow.
// 
// Respectfully;
// 
// Jeff Burton
// jburton@apex.net
// http://www.geocities.com/SoHo/2365

// This is a scale model of an orbital as described in Iain M Banks culture novels.
// The scale is 1 unit equals 1000km, the orbital is thus 3 million km across and
// 2 thousand km wide (including the retaining walls).

include "colors.inc"

global_settings {
   adc_bailout 0.00392157
   assumed_gamma 1.5
   noise_generator 2
}

camera {
   //*PMName Main Camera
   perspective
   location <0, 0.3, -1499.7>
   sky <0, 0, 1>
   direction <0, 0, 1>
   right <1.3333, 0, 0>
   up <0, 1, 0>
   look_at <374.28, 0, -1539.1>
   angle 60
}

#declare Base_Material = texture {
   pigment {
      color rgb <1, 1, 1>
   }
   
   normal {
      crackle
      bump_size 0.1
   }
   
   finish {
      ambient rgb <0.4, 0.4, 0.4>
      diffuse 0.7
      brilliance 1
      phong 0
      phong_size 40
      metallic 0
      specular 0
      roughness 0.05
   }
}

texture {
   pigment {
      granite
      turbulence <0.6, 0.6, 0.6>
      
      color_map {
         [ 0 color rgbf <0.73, 0.51, 0.44, 0.306>
         ]
         [ 0.153 color rgbf <0.77, 0.68, 0.59, 0.792>
         ]
         [ 0.398 color rgbf <0.84, 0.75, 0.71, 0.396>
         ]
         [ 0.559 color rgbf <0.78, 0.67, 0.56, 0.976>
         ]
         [ 0.729 color rgbf <0.74, 0.66, 0.58, 0.82>
         ]
         [ 1 color rgbf <0.73, 0.5, 0.45, 0.306>
         ]
      }
      translate <0, 0, 0>
      scale <2, 3, 2>
      rotate z*330
   }
}

texture {
   pigment {
      granite
      turbulence <0.6, 0.6, 0.6>
      
      color_map {
         [ 0 color rgbf <0.81, 0.81, 0.81, 0.835>
         ]
         [ 0.216 color rgbf <0.75, 0.84, 0.84, 0.847>
         ]
         [ 0.241 color rgbf <0.4, 0.34, 0.34, 0.463>
         ]
         [ 0.267 color rgbf <0.77, 0.73, 0.75, 0.622>
         ]
         [ 0.759 color rgbf <0.91, 0.84, 0.72902, 0.651>
         ]
         [ 0.784 color rgbf <0.15, 0.13, 0.21, 0.437>
         ]
         [ 0.81 color rgbf <0.81, 0.81, 0.81, 0.835>
         ]
      }
      translate <0, 0, 0>
      scale <5, 3, 4>
      rotate z*40
   }
   
   finish {
      ambient rgb <0.2, 0.2, 0.2>
      diffuse 0.5
      brilliance 1
      phong 1
      phong_size 90
      metallic 0
      specular 0
      roughness 0.05
   }
   
   // reflection rgb<0.000000,0.000000,0.000000>
   // reflection_exponent 1.000000
}

#declare Landscape = texture {
   pigment {
      granite
      
      color_map {
         [ 0 color rgb <0.00784314, 0.00784314, 0.529412>
         ]
         [ 0.1 color rgb <0.101388, 0.412927, 0.939394>
         ]
         [ 0.5 color rgb <0.064734, 0.598485, 0.081169>
         ]
         [ 0.8 color rgb <0.627451, 0.431373, 0.156863>
         ]
         [ 0.9 color rgb <0.960784, 0.960784, 0.960784>
         ]
      }
   }
}

#declare Cloudscape = texture {
   uv_mapping
   
   pigment {
      agate
      agate_turb 0.8
      turbulence <0.4, 0.4, 0.4>
      
      pigment_map {
         [ 0.40625 color rgbt <0.85, 0.75, 0.85, 1>
         ]
         [ 0.652083 color rgbt <0.2, 0.6, 0.8, 0.906>
         ]
         [ 0.994792 wrinkles
         
         pigment_map {
            [ 0.04375 color rgb <0.17, 0.51, 0.68>
            ]
            [ 0.140625 color rgbf <1, 1, 1, 0.3>
            ]
            [ 1 color rgbf <0.7, 0.7, 0.7, 0.3>
            ]
         }
         translate <0, 0, 0>
         scale <0.5, 0.15, 1>
         rotate <0, 0, 0>
         ]
      }
      
      warp {
         turbulence <0.8, 0.8, 0.4>
         omega 0.05
      }
      
      warp {
         black_hole
         <0, 0, 0>
         , 0.3
         strength 1
         repeat <1, 10, 10>
         turbulence <0.2, 1, 1>
      }
   }
}

light_source {
   <2, 3.0025, -10>, rgb <1, 1, 1>
   
   looks_like {
      //*PMName TheSun
      
      sphere {
         <-190.418, 6.37574, -34.7007>, 2
         
         pigment {
            color rgb <1, 1, 0>
         }
         scale 1
         rotate <0, 0, 0>
         translate <-56.065, 0.8365, -18.259>
      }
   }
}

#declare Starfield1 =
texture {
    pigment {
        agate
        color_map {
            [ 0.000  0.270 color rgb < 0, 0, 0> color rgb < 0, 0, 0> ]
            [ 0.270  0.280 color rgb <.5,.5,.0> color rgb <.8,.8,.4> ]
            [ 0.280  0.470 color rgb < 0, 0, 0> color rgb < 0, 0, 0> ]
            [ 0.470  0.480 color rgb <.4,.4,.5> color rgb <.4,.4,.8> ]
            [ 0.480  0.680 color rgb < 0, 0, 0> color rgb < 0, 0, 0> ]
            [ 0.680  0.690 color rgb <.0,.4,.4> color rgb <.8,.4,.4> ]
            [ 0.690  0.880 color rgb < 0, 0, 0> color rgb < 0, 0, 0> ]
            [ 0.880  0.890 color rgb <.5,.5,.5> color rgb < 1, 1, 1> ]
            [ 0.890  1.000 color rgb < 0, 0, 0> color rgb < 0, 0, 0> ]
        }
    //turbulence 1
    //sine_wave
    //scale 1
    }
    finish { diffuse 0 ambient 1 }
}
#declare Transparent_Wall = cylinder {
   <0, 1, 0>, <0, -1, 0>, 1499.85
   scale 1
   rotate <0, 0, 0>
   translate <0, 0, 0>
}

// This gives us a flat ring, 3 million km in diameter, one thousand across and 10km thick, centered on the origin
// and flat in the x-y plane
#declare Orb_Base = difference {
   cylinder {
      //*PMName Outer_Surface
      <0, 0.5, 0>, <0, -0.5, 0>, 1500
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   
   cylinder {
      //*PMName Inner_Surface
      <0, 0.51, 0>, <0, -0.51, 0>, 1499.9
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
}

// This gives us a curved "quarter" of a circular pipe,
// 3 million km in diameter, 500km cross section and 10km thick.
// Position and orientation the same as the base.
#declare Lower_Retain_Wall = difference {
   torus {
      //*PMName Outer_Curve_Wall
      1499.5, 0.5
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   
   torus {
      //*PMName Inner_Curve_Wall
      1499.5, 0.4
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   
   cylinder {
      //*PMName Top_Slice
      <0, 0.5, 0>, <0, 0, 0>, 1501
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   
   cylinder {
      //*PMName Side_Slice
      <0, 1, 0>, <0, -1, 0>, 1499.5
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
}

// Brings together the various parts of the orbital structure
// and gives them all a consistent texture.
#declare Orb_Walls = intersection {
   object {
      //*PMName Transparent_Wall
      Transparent_Wall
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   
   union {
      object {
         //*PMName Upper_Retain_Wall
         Lower_Retain_Wall
         scale 1
         rotate x*180
         translate y*0.5
      }
      
      object {
         //*PMName Lower_Retain_Wall
         Lower_Retain_Wall
         scale 1
         rotate <0, 0, 0>
         translate y*(-0.5)
      }
   }
   
   texture {
      pigment {
         color rgbf <0.63137, 0.61961, 0.58824, 0.9>
      }
   }
}

#declare Orb_Land = difference {
   cylinder {
      //*PMName Outer_Land
      <0, 0.4949, 0>, <0, -0.4949, 0>, 1499.9
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   
   cylinder {
      //*PMName Inner_Land
      <0, 0.495, 0>, <0, -0.495, 0>, 1499.89
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   
   texture {
      Landscape
      scale <10, 10, 1>
   }
}

#declare Orb_Sky = difference {
   cylinder {
      //*PMName Cloud_Base
      <0, 0.56, 0>, <0, -0.56, 0>, 1499.7
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   
   cylinder {
      //*PMName Cloud_Top
      <0, 0.565, 0>, <0, -0.565, 0>, 1499.7
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   

}

#declare Orb_Structure = difference {
   union {
      object {
         //*PMName Orb_Base
         Orb_Base
         scale 1
         rotate <0, 0, 0>
         translate <0, 0, 0>
      }
      
      object {
         //*PMName Lower_Retain_Wall
         Lower_Retain_Wall
         scale 1
         rotate <0, 0, 0>
         translate y*(-0.5)
      }
      
      object {
         //*PMName Upper_Retain_Wall
         Lower_Retain_Wall
         scale 1
         rotate x*180
         translate y*0.5
      }
   }
   
   object {
      //*PMName Transparent_Wall
      Transparent_Wall
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   
   texture {
      Base_Material scale 0.1
   }
}

// This is the complete orbital, which can be translated, rotated etc as required.
#declare Orbital = union {
   object {
      //*PMName Orb_Structure
      Orb_Structure
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   
   object {
      //*PMName Orb_Walls
      Orb_Walls
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   
   object {
      //*PMName Orb_Land
      Orb_Land
      scale <0.99992,1.4,0.99992>
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   
   object {
      //*PMName Orb_Sky
      Orb_Sky
      scale  <0.99995,1.45,0.99995>
      rotate <0, 0, 0>
      translate <0, 0, 0>
      texture {
         Cloudscape
      }
   }
   object {
      //*PMName Orb_Sky
      Orb_Sky
      scale  <1,1.44,1>
      rotate <0, 0, 0>
      translate <0, 0, 0>
      texture {
         Cloudscape
         rotate <0,45,0>
      }
   }
}

// object {
//    height_field {
//       png "mountains.png"
//    }
//    translate<-0.5,0,-0.5>
//    rotate x * -90
//    scale <1, 1.4, 1.4>
//    translate <150, 0, -1484.4>
//    texture {
//       pigment { color Brown }
//    }
// }

// object {
//    height_field {
//       png "mountains.png"
//    }
//    translate<-0.5,0,-0.5>
//    rotate y * 180
//    rotate x * -90
//    scale <1, 1.4, 1.4>
//    translate <75, 0, -1494.4>
//    texture {
//       pigment { color Brown }
//    }
// }

#declare MountainRange = object {
   height_field {
      png "mountains.png"
   }
   translate<-0.5,0,-0.5>
   rotate x * 90
   scale <0.1, 1.6, 1.0>
   texture {
      pigment { color Brown }
   }
}

#for (i,80,190,3)
object { 
   MountainRange
   scale <1,5,0.8>
   translate <0, 0, 1499.2>
   rotate y * i
}
#end

sphere { <0,0,0>, 10000 texture { Starfield1 } hollow }

object {
   //*PMName Orbital
   Orbital
   scale <1,5,1>
   rotate <0, 0, 0>
   translate <0, 0, 0>
}