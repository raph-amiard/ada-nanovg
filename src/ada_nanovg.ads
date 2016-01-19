pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
with C_Flags_Helpers;
with Interfaces; use Interfaces;

package Ada_NanoVG is

   type Create_Flags_Enum is (Antialias, Stencil_Strokes, Debug);
   type NVG_Create_Flags is array (Create_Flags_Enum) of Boolean;

   type NVG_Context is null record;

   type NVG_Color is record
      R : aliased float;
      G : aliased float;
      B : aliased float;
      A : aliased float;
   end record;
   pragma Convention (C_Pass_By_Copy, NVG_Color);

   type NVG_Paint_XForm_Array is array (0 .. 5) of aliased float;
   type NVG_Paint_Extent_Array is array (0 .. 1) of aliased float;
   type NVG_Paint is record
      xform : aliased NVG_Paint_XForm_Array;
      extent : aliased NVG_Paint_Extent_Array;
      radius : aliased float;
      feather : aliased float;
      innerColor : aliased NVG_Color;
      outerColor : aliased NVG_Color;
      image : aliased int;
   end record;
   pragma Convention (C_Pass_By_Copy, NVG_Paint);

   subtype NVG_Winding is unsigned;
   NVG_CCW : constant NVG_Winding := 1;
   NVG_CW : constant NVG_Winding := 2;

   subtype NVG_Solidity is unsigned;
   NVG_SOLID : constant NVG_Solidity := 1;
   NVG_HOLE : constant NVG_Solidity := 2;

   type NVG_Line_Cap is
     (NVG_BUTT,
      NVG_ROUND,
      NVG_SQUARE,
      NVG_BEVEL,
      NVG_MITER);
   pragma Convention (C, NVG_Line_Cap);

   subtype NVG_Align is unsigned;
   NVG_ALIGN_LEFT : constant NVG_Align := 1;
   NVG_ALIGN_CENTER : constant NVG_Align := 2;
   NVG_ALIGN_RIGHT : constant NVG_Align := 4;
   NVG_ALIGN_TOP : constant NVG_Align := 8;
   NVG_ALIGN_MIDDLE : constant NVG_Align := 16;
   NVG_ALIGN_BOTTOM : constant NVG_Align := 32;
   NVG_ALIGN_BASELINE : constant NVG_Align := 64;

   type NVG_Glyph_Position is record
      str : Interfaces.C.Strings.chars_ptr;
      x : aliased float;
      minx : aliased float;
      maxx : aliased float;
   end record;
   pragma Convention (C_Pass_By_Copy, NVG_Glyph_Position);

   type NVG_Text_Row is record
      start : Interfaces.C.Strings.chars_ptr;
      c_end : Interfaces.C.Strings.chars_ptr;
      next : Interfaces.C.Strings.chars_ptr;
      width : aliased float;
      minx : aliased float;
      maxx : aliased float;
   end record;
   pragma Convention (C_Pass_By_Copy, NVG_Text_Row);

   subtype NVG_Image_Flags is unsigned;
   NVG_IMAGE_GENERATE_MIPMAPS : constant NVG_Image_Flags := 1;
   NVG_IMAGE_REPEATX : constant NVG_Image_Flags := 2;
   NVG_IMAGE_REPEATY : constant NVG_Image_Flags := 4;
   NVG_IMAGE_FLIPY : constant NVG_Image_Flags := 8;
   NVG_IMAGE_PREMULTIPLIED : constant NVG_Image_Flags := 16;

   procedure Begin_Frame
     (Ctx                : access NVG_Context;
      Window_Width       : int;
      Window_Height      : int;
      Device_Pixel_Ratio : float);
   pragma Import (C, Begin_Frame, "nvgBeginFrame");

   procedure Cancel_Frame (Ctx : access NVG_Context);
   pragma Import (C, Cancel_Frame, "nvgCancelFrame");

   procedure End_Frame (Ctx : access NVG_Context);
   pragma Import (C, End_Frame, "nvgEndFrame");

   subtype Color_Range is float range 0.0 .. 1.0;

   function RGB
     (r : Color_Range;
      g : Color_Range;
      b : Color_Range) return NVG_Color;
   pragma Import (C, RGB, "nvgRGBf");

   function RGBA
     (r : Color_Range;
      g : Color_Range;
      b : Color_Range;
      a : Color_Range) return NVG_Color;
   pragma Import (C, RGBA, "nvgRGBAf");

   function RGB
     (r : Unsigned_8;
      g : Unsigned_8;
      b : Unsigned_8) return NVG_Color
     with Import => True, Convention => C, External_Name => "nvgRGB";

   function RGBA
     (r : Unsigned_8;
      g : Unsigned_8;
      b : Unsigned_8;
      a : Unsigned_8) return NVG_Color
   with Import => True, Convention => C, External_Name => "nvgRGBA";


   function Lerp_RGBA
     (c0 : NVG_Color;
      c1 : NVG_Color;
      u : float) return NVG_Color;
   pragma Import (C, Lerp_RGBA, "nvgLerpRGBA");

   function Trans_RGBA (c0 : NVG_Color; a : float) return NVG_Color;
   pragma Import (C, Trans_RGBA, "nvgTransRGBAf");

   function HSL
     (h : float;
      s : float;
      l : float) return NVG_Color;
   pragma Import (C, HSL, "nvgHSL");

   function HSLA
     (h : float;
      s : float;
      l : float;
      a : unsigned_char) return NVG_Color;
   pragma Import (C, HSLA, "nvgHSLA");

   procedure Save (Ctx : access NVG_Context);
   pragma Import (C, Save, "nvgSave");

   procedure Restore (Ctx : access NVG_Context);
   pragma Import (C, Restore, "nvgRestore");

   procedure Reset (Ctx : access NVG_Context);
   pragma Import (C, Reset, "nvgReset");

   procedure Stroke_Color (Ctx : access NVG_Context; color : NVG_Color);
   pragma Import (C, Stroke_Color, "nvgStrokeColor");

   procedure Stroke_Pain (Ctx : access NVG_Context; paint : NVG_Paint);
   pragma Import (C, Stroke_Pain, "nvgStrokePaint");

   procedure Fill_Color (Ctx : access NVG_Context; color : NVG_Color);
   pragma Import (C, Fill_Color, "nvgFillColor");

   procedure Fill_Paint (Ctx : access NVG_Context; paint : NVG_Paint);
   pragma Import (C, Fill_Paint, "nvgFillPaint");

   procedure Miter_Limit (Ctx : access NVG_Context; limit : float);
   pragma Import (C, Miter_Limit, "nvgMiterLimit");

   procedure Stroke_Width (Ctx : access NVG_Context; size : float);
   pragma Import (C, Stroke_Width, "nvgStrokeWidth");

   procedure Line_Cap (Ctx : access NVG_Context; Cap : NVG_Line_Cap);
   pragma Import (C, Line_Cap, "nvgLineCap");

   procedure Line_Join (Ctx : access NVG_Context; join : int);
   pragma Import (C, Line_Join, "nvgLineJoin");

   procedure Global_Alpha (Ctx : access NVG_Context; alpha : float);
   pragma Import (C, Global_Alpha, "nvgGlobalAlpha");

   procedure Reset_Transform (Ctx : access NVG_Context);
   pragma Import (C, Reset_Transform, "nvgResetTransform");

   procedure Transform
     (Ctx : access NVG_Context;
      a : float;
      b : float;
      c : float;
      d : float;
      e : float;
      f : float);
   pragma Import (C, Transform, "nvgTransform");

   procedure Translate
     (Ctx : access NVG_Context;
      x : float;
      y : float);
   pragma Import (C, Translate, "nvgTranslate");

   procedure Rotate (Ctx : access NVG_Context; angle : float);
   pragma Import (C, Rotate, "nvgRotate");

   procedure Skew_X (Ctx : access NVG_Context; angle : float);
   pragma Import (C, Skew_X, "nvgSkewX");

   procedure Skew_Y (Ctx : access NVG_Context; angle : float);
   pragma Import (C, Skew_Y, "nvgSkewY");

   procedure Scale
     (Ctx : access NVG_Context;
      x : float;
      y : float);
   pragma Import (C, Scale, "nvgScale");

   procedure Current_Transform (Ctx : access NVG_Context; xform : access float);
   pragma Import (C, Current_Transform, "nvgCurrentTransform");

   procedure Transform_Identity (dst : access float);
   pragma Import (C, Transform_Identity, "nvgTransformIdentity");

   procedure Transform_Translatte
     (dst : access float;
      tx : float;
      ty : float);
   pragma Import (C, Transform_Translatte, "nvgTransformTranslate");

   procedure Transform_Scale
     (dst : access float;
      sx : float;
      sy : float);
   pragma Import (C, Transform_Scale, "nvgTransformScale");

   procedure Transform_Rotate (dst : access float; a : float);
   pragma Import (C, Transform_Rotate, "nvgTransformRotate");

   procedure Transform_Skew_X (dst : access float; a : float);
   pragma Import (C, Transform_Skew_X, "nvgTransformSkewX");

   procedure Transform_Skew_Y (dst : access float; a : float);
   pragma Import (C, Transform_Skew_Y, "nvgTransformSkewY");

   procedure Transform_Multiply (dst : access float; src : access float);
   pragma Import (C, Transform_Multiply, "nvgTransformMultiply");

   procedure Transform_Premultiply (dst : access float; src : access float);
   pragma Import (C, Transform_Premultiply, "nvgTransformPremultiply");

   function Transform_Inverse (dst : access float; src : access float) return int;
   pragma Import (C, Transform_Inverse, "nvgTransformInverse");

   procedure Transform_Point
     (dstx : access float;
      dsty : access float;
      xform : access float;
      srcx : float;
      srcy : float);
   pragma Import (C, Transform_Point, "nvgTransformPoint");

   function Deg_To_Rad (deg : float) return float;
   pragma Import (C, Deg_To_Rad, "nvgDegToRad");

   function Rad_To_Deg (rad : float) return float;
   pragma Import (C, Rad_To_Deg, "nvgRadToDeg");

   function Create_Image
     (Ctx : access NVG_Context;
      filename : Interfaces.C.Strings.chars_ptr;
      Image_Flags : NVG_Image_Flags) return int;
   pragma Import (C, Create_Image, "nvgCreateImage");

   function Create_Image_Mem
     (Ctx : access NVG_Context;
      Image_Flags : NVG_Image_Flags;
      data : access unsigned_char;
      ndata : int) return int;
   pragma Import (C, Create_Image_Mem, "nvgCreateImageMem");

   function Create_Image_RGBA
     (Ctx : access NVG_Context;
      w : int;
      h : int;
      Image_Flags : NVG_Image_Flags;
      data : access unsigned_char) return int;
   pragma Import (C, Create_Image_RGBA, "nvgCreateImageRGBA");

   procedure Update_Image
     (Ctx : access NVG_Context;
      image : int;
      data : access unsigned_char);
   pragma Import (C, Update_Image, "nvgUpdateImage");

   procedure Image_Size
     (Ctx : access NVG_Context;
      image : int;
      w : access int;
      h : access int);
   pragma Import (C, Image_Size, "nvgImageSize");

   procedure Delete_Image (Ctx : access NVG_Context; image : int);
   pragma Import (C, Delete_Image, "nvgDeleteImage");

   function Linear_Gradient
     (Ctx : access NVG_Context;
      sx : float;
      sy : float;
      ex : float;
      ey : float;
      icol : NVG_Color;
      ocol : NVG_Color) return NVG_Paint;
   pragma Import (C, Linear_Gradient, "nvgLinearGradient");

   function Box_Gradient
     (Ctx : access NVG_Context;
      x : float;
      y : float;
      w : float;
      h : float;
      r : float;
      f : float;
      icol : NVG_Color;
      ocol : NVG_Color) return NVG_Paint;
   pragma Import (C, Box_Gradient, "nvgBoxGradient");

   function Radial_Gradient
     (Ctx : access NVG_Context;
      cx : float;
      cy : float;
      inr : float;
      outr : float;
      icol : NVG_Color;
      ocol : NVG_Color) return NVG_Paint;
   pragma Import (C, Radial_Gradient, "nvgRadialGradient");

   function Image_Pattern
     (Ctx : access NVG_Context;
      ox : float;
      oy : float;
      ex : float;
      ey : float;
      angle : float;
      image : int;
      alpha : float) return NVG_Paint;
   pragma Import (C, Image_Pattern, "nvgImagePattern");

   procedure Scissor
     (Ctx : access NVG_Context;
      x : float;
      y : float;
      w : float;
      h : float);
   pragma Import (C, Scissor, "nvgScissor");

   procedure Intersect_Scissor
     (Ctx : access NVG_Context;
      x : float;
      y : float;
      w : float;
      h : float);
   pragma Import (C, Intersect_Scissor, "nvgIntersectScissor");

   procedure Reset_Scissor (Ctx : access NVG_Context);
   pragma Import (C, Reset_Scissor, "nvgResetScissor");

   procedure Begin_Path (Ctx : access NVG_Context);
   pragma Import (C, Begin_Path, "nvgBeginPath");

   procedure Move_To
     (Ctx : access NVG_Context;
      x : float;
      y : float);
   pragma Import (C, Move_To, "nvgMoveTo");

   procedure Line_To
     (Ctx : access NVG_Context;
      x : float;
      y : float);
   pragma Import (C, Line_To, "nvgLineTo");

   procedure Bezier_To
     (Ctx : access NVG_Context;
      c1x : float;
      c1y : float;
      c2x : float;
      c2y : float;
      x : float;
      y : float);
   pragma Import (C, Bezier_To, "nvgBezierTo");

   procedure Quad_To
     (Ctx : access NVG_Context;
      cx : float;
      cy : float;
      x : float;
      y : float);
   pragma Import (C, Quad_To, "nvgQuadTo");

   procedure Arc_To
     (Ctx : access NVG_Context;
      x1 : float;
      y1 : float;
      x2 : float;
      y2 : float;
      radius : float);
   pragma Import (C, Arc_To, "nvgArcTo");

   procedure Close_Path (Ctx : access NVG_Context);
   pragma Import (C, Close_Path, "nvgClosePath");

   procedure Path_Winding (Ctx : access NVG_Context; dir : int);
   pragma Import (C, Path_Winding, "nvgPathWinding");

   procedure Arc
     (Ctx : access NVG_Context;
      cx : float;
      cy : float;
      r : float;
      a0 : float;
      a1 : float;
      dir : int);
   pragma Import (C, Arc, "nvgArc");

   procedure Rect
     (Ctx : access NVG_Context;
      x : float;
      y : float;
      w : float;
      h : float);
   pragma Import (C, Rect, "nvgRect");

   procedure Rounded_Rect
     (Ctx : access NVG_Context;
      x : float;
      y : float;
      w : float;
      h : float;
      r : float);
   pragma Import (C, Rounded_Rect, "nvgRoundedRect");

   procedure Ellipse
     (Ctx : access NVG_Context;
      cx : float;
      cy : float;
      rx : float;
      ry : float);
   pragma Import (C, Ellipse, "nvgEllipse");

   procedure Circle
     (Ctx : access NVG_Context;
      cx : float;
      cy : float;
      r : float);
   pragma Import (C, Circle, "nvgCircle");

   procedure Fill (Ctx : access NVG_Context);
   pragma Import (C, Fill, "nvgFill");

   procedure Stroke (Ctx : access NVG_Context);
   pragma Import (C, Stroke, "nvgStroke");

   function Create_Font
     (Ctx : access NVG_Context;
      name : Interfaces.C.Strings.chars_ptr;
      filename : Interfaces.C.Strings.chars_ptr) return int;
   pragma Import (C, Create_Font, "nvgCreateFont");

   function Create_Font_Mem
     (Ctx : access NVG_Context;
      name : Interfaces.C.Strings.chars_ptr;
      data : access unsigned_char;
      ndata : int;
      freeData : int) return int;
   pragma Import (C, Create_Font_Mem, "nvgCreateFontMem");

   function Find_Font (Ctx : access NVG_Context; name : Interfaces.C.Strings.chars_ptr) return int;
   pragma Import (C, Find_Font, "nvgFindFont");

   procedure Font_Size (Ctx : access NVG_Context; size : float);
   pragma Import (C, Font_Size, "nvgFontSize");

   procedure Font_Blue (Ctx : access NVG_Context; blur : float);
   pragma Import (C, Font_Blue, "nvgFontBlur");

   procedure Text_Letter_Spacing (Ctx : access NVG_Context; spacing : float);
   pragma Import (C, Text_Letter_Spacing, "nvgTextLetterSpacing");

   procedure Text_Line_Height (Ctx : access NVG_Context; lineHeight : float);
   pragma Import (C, Text_Line_Height, "nvgTextLineHeight");

   procedure Text_Align (Ctx : access NVG_Context; align : int);
   pragma Import (C, Text_Align, "nvgTextAlign");

   procedure Font_Face_Id (Ctx : access NVG_Context; font : int);
   pragma Import (C, Font_Face_Id, "nvgFontFaceId");

   procedure Font_Face (Ctx : access NVG_Context; font : Interfaces.C.Strings.chars_ptr);
   pragma Import (C, Font_Face, "nvgFontFace");

   function Text
     (Ctx : access NVG_Context;
      x : float;
      y : float;
      string : Interfaces.C.Strings.chars_ptr;
      c_end : Interfaces.C.Strings.chars_ptr) return float;
   pragma Import (C, Text, "nvgText");

   procedure Text_Box
     (Ctx : access NVG_Context;
      x : float;
      y : float;
      breakRowWidth : float;
      string : Interfaces.C.Strings.chars_ptr;
      c_end : Interfaces.C.Strings.chars_ptr);
   pragma Import (C, Text_Box, "nvgTextBox");

   function Text_Bounds
     (Ctx : access NVG_Context;
      x : float;
      y : float;
      string : Interfaces.C.Strings.chars_ptr;
      c_end : Interfaces.C.Strings.chars_ptr;
      bounds : access float) return float;
   pragma Import (C, Text_Bounds, "nvgTextBounds");

   procedure Text_Box_Bounds
     (Ctx : access NVG_Context;
      x : float;
      y : float;
      breakRowWidth : float;
      string : Interfaces.C.Strings.chars_ptr;
      c_end : Interfaces.C.Strings.chars_ptr;
      bounds : access float);
   pragma Import (C, Text_Box_Bounds, "nvgTextBoxBounds");

   function Text_Glyph_Positions
     (Ctx : access NVG_Context;
      x : float;
      y : float;
      string : Interfaces.C.Strings.chars_ptr;
      c_end : Interfaces.C.Strings.chars_ptr;
      positions : access NVG_Glyph_Position;
      maxPositions : int) return int;
   pragma Import (C, Text_Glyph_Positions, "nvgTextGlyphPositions");

   procedure Text_Metrics
     (Ctx : access NVG_Context;
      ascender : access float;
      descender : access float;
      lineh : access float);
   pragma Import (C, Text_Metrics, "nvgTextMetrics");

   function Text_Break_Lines
     (Ctx : access NVG_Context;
      string : Interfaces.C.Strings.chars_ptr;
      c_end : Interfaces.C.Strings.chars_ptr;
      breakRowWidth : float;
      rows : access NVG_Text_Row;
      maxRows : int) return int;
   pragma Import (C, Text_Break_Lines, "nvgTextBreakLines");

   subtype NVGtexture is unsigned;
   NVG_TEXTURE_ALPHA : constant NVGtexture := 1;
   NVG_TEXTURE_RGBA : constant NVGtexture := 2;

   type NVG_Scissor_Xform_Array is array (0 .. 5) of aliased float;
   type NVG_Scissor_Extent_Array is array (0 .. 1) of aliased float;
   type NVGscissor is record
      Xform  : aliased NVG_Scissor_Xform_Array;
      Extent : aliased NVG_Scissor_Extent_Array;
   end record;
   pragma Convention (C_Pass_By_Copy, NVGscissor);

   type NVG_Vertex is record
      X : aliased float;
      Y : aliased float;
      U : aliased float;
      V : aliased float;
   end record;
   pragma Convention (C_Pass_By_Copy, NVG_Vertex);

   type NVGpath is record
      first : aliased int;
      count : aliased int;
      closed : aliased unsigned_char;
      nbevel : aliased int;
      fill : access NVG_Vertex;
      nfill : aliased int;
      stroke : access NVG_Vertex;
      nstroke : aliased int;
      winding : aliased int;
      convex : aliased int;
   end record;
   pragma Convention (C_Pass_By_Copy, NVGpath);

   type NVG_Params is record
      userPtr : System.Address;
      edgeAntiAlias : aliased int;
      renderCreate : access function (arg1 : System.Address) return int;
      renderCreateTexture : access function
           (arg1 : System.Address;
            arg2 : int;
            arg3 : int;
            arg4 : int;
            arg5 : int;
            arg6 : access unsigned_char) return int;
      renderDeleteTexture : access function (arg1 : System.Address; arg2 : int) return int;
      renderUpdateTexture : access function
           (arg1 : System.Address;
            arg2 : int;
            arg3 : int;
            arg4 : int;
            arg5 : int;
            arg6 : int;
            arg7 : access unsigned_char) return int;
      renderGetTextureSize : access function
           (arg1 : System.Address;
            arg2 : int;
            arg3 : access int;
            arg4 : access int) return int;
      renderViewport : access procedure
           (arg1 : System.Address;
            arg2 : int;
            arg3 : int);
      renderCancel : access procedure (arg1 : System.Address);
      renderFlush : access procedure (arg1 : System.Address);
      renderFill : access procedure
           (arg1 : System.Address;
            arg2 : access NVG_Paint;
            arg3 : access NVGscissor;
            arg4 : float;
            arg5 : access float;
            arg6 : System.Address;
            arg7 : int);
      renderStroke : access procedure
           (arg1 : System.Address;
            arg2 : access NVG_Paint;
            arg3 : access NVGscissor;
            arg4 : float;
            arg5 : float;
            arg6 : System.Address;
            arg7 : int);
      renderTriangles : access procedure
           (arg1 : System.Address;
            arg2 : access NVG_Paint;
            arg3 : access NVGscissor;
            arg4 : System.Address;
            arg5 : int);
      renderDelete : access procedure (arg1 : System.Address);
   end record;
   pragma Convention (C_Pass_By_Copy, NVG_Params);

   function Create_GLES2_Context
     (Opts : NVG_Create_Flags) return access NVG_Context;

private

   function NVG_Create_Internal (params : access NVG_Params) return System.Address;
   pragma Import (C, NVG_Create_Internal, "nvgCreateInternal");

   procedure NVG_Delete_Internal (Ctx : access NVG_Context);
   pragma Import (C, NVG_Delete_Internal, "nvgDeleteInternal");

   function NVG_Internal_Params (Ctx : access NVG_Context) return access NVG_Params;
   pragma Import (C, NVG_Internal_Params, "nvgInternalParams");

   procedure Debug_Dump_Path_Cache (Ctx : access NVG_Context);
   pragma Import (C, Debug_Dump_Path_Cache, "nvgDebugDumpPathCache");

end Ada_NanoVG;
