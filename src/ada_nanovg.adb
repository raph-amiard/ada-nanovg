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

end Ada_NanoVG;
