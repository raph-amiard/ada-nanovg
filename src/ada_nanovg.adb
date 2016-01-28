package body Ada_NanoVG is

   package Create_Flags_Helpers is new C_Flags_Helpers
     (Create_Flags_Enum, NVG_Create_Flags);

   function nvgCreateGLES2 (Flags : int) return access NVG_Context;
   pragma Import (C, nvgCreateGLES2, "nvgCreateGLES2");

   --------------------------
   -- Create_GLES2_Context --
   --------------------------

   function Create_GLES2_Context
     (Opts : NVG_Create_Flags) return access NVG_Context is
   begin
      return nvgCreateGLES2 (int (Create_Flags_Helpers.Convert (Opts)));
   end Create_GLES2_Context;

   use Interfaces.C.Strings;

   ----------
   -- Text --
   ----------

   procedure Text
     (Ctx : access NVG_Context;
      X   : float;
      Y   : float;
      Str : String)
   is
      function Internal
        (Ctx    : access NVG_Context;
         x      : float;
         y      : float;
         string : chars_ptr;
         c_end  : chars_ptr) return float;
      pragma Import (C, Internal, "nvgText");

      C_Str : chars_ptr := New_String (Str);
      Dummy : float;
   begin
      Dummy := Internal (Ctx, X, Y, C_Str, Null_Ptr);
      Free (C_Str);
   end Text;

   ---------------
   -- Font_Face --
   ---------------

   procedure Font_Face (Ctx : access NVG_Context; Font : String) is

      procedure Internal (Ctx : access NVG_Context; font : chars_ptr);
      pragma Import (C, Internal, "nvgFontFace");
      C_Str : chars_ptr := New_String (Font);
   begin
      Internal (Ctx, C_Str);
      Free (C_Str);
   end Font_Face;


   procedure Create_Font
     (Ctx  : access NVG_Context;
      Name : String;
      Path : String)
   is
      function Internal
        (Ctx      : access NVG_Context;
         name     : Interfaces.C.Strings.chars_ptr;
         filename : Interfaces.C.Strings.chars_ptr) return int;
      pragma Import (C, Internal, "nvgCreateFont");

      N : chars_ptr := New_String (Name);
      F : chars_ptr := New_String (Path);
      R : int := Internal (Ctx, N, F);
   begin
      if R = -1 then
         raise Constraint_Error with "Did not find font " & Path;
      end if;
      Free (N);
      Free (F);
   end Create_Font;


end Ada_NanoVG;
