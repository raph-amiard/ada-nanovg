with Glfw.Windows;         use Glfw.Windows;
with Glfw.Windows.Context; use Glfw.Windows.Context;
with Ada_NanoVG;           use Ada_NanoVG;
with Main_Support;         use Main_Support;
with Glfw.Input;
with Ada.Text_IO;          use Ada.Text_IO;
with GL.Buffers;           use GL.Buffers;
with GL.Types.Colors;      use GL.Types.Colors;
with Glfw.Input.Mouse;
with GL.Toggles;           use GL.Toggles;
with GL.Blending;          use GL.Blending;
with GL.Window;
with GL.Types;             use GL.Types;
with Glfw.Windows.Hints;
with Glfw.Errors;

procedure Main is
   W                   : aliased Main_Support.Test_Window;
   Ctx                 : access NVG_Context;
   Width, Height       : Glfw.Size;
   FB_Width, FB_Height : Glfw.Size;
   MX, MY              : Glfw.Input.Mouse.Coordinate;
   X, Y                : Float;
   Gr                  : NVG_Paint;
begin
   Glfw.Init;
   Glfw.Errors.Set_Callback (Error_Callback'Access);

   Hints.Set_Client_API (OPENGL_ES);
   Hints.Set_Minimum_OpenGL_Version (2, 0);

   Init (W'Access, 800, 600, "NanoVG_Test");

   Make_Current (W'Access);

   Ctx := Create_GLES2_Context
     ((Antialias => True, Stencil_Strokes => True, Debug => True));

   Set_Swap_Interval (0);
   Glfw.Set_Time (0.0);

   W.Enable_Callback (Callbacks.Key);

   while not W.Should_Close loop

      W.Get_Size (Width, Height);
      W.Get_Framebuffer_Size (FB_Width, FB_Height);

      W.Get_Cursor_Pos (MX, MY);
      X := Float (MX);
      Y := Float (MY);

      GL.Window.Set_Viewport (0, 0, Size (FB_Width), Size (FB_Height));
      Set_Color_Clear_Value ((0.0, 0.0, 0.0, 0.0));
      Clear ((Stencil => True, Color => True, Depth => True, others => False));

      Enable (GL.Toggles.Blend);
      Set_Blend_Func (Src_Alpha, One_Minus_Src_Alpha);
      Enable (GL.Toggles.Cull_Face);
      Disable (GL.Toggles.Depth_Test);

      Begin_Frame (Ctx, Width, Height, 1.0);
      Begin_Path (Ctx);
      Rounded_Rect (Ctx, X, Y, 100.0, 100.0, 10.0);
      Fill_Color (Ctx, RGBA (128, 130, 134, 200));
      Fill (Ctx);

      Gr := Linear_Gradient
        (Ctx, X, Y, X, Y + 15.0, RGBA (255, 255, 255, 8), RGBA (0, 0, 0, 16));
      Fill_Paint (Ctx, Gr);
      Fill (Ctx);

      Restore (Ctx);
      End_Frame (Ctx);

      Enable (GL.Toggles.Depth_Test);
      Swap_Buffers (W'Access);
      Glfw.Input.Poll_Events;
   end loop;
end Main;
