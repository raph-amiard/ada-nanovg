with Glfw.Windows;         use Glfw.Windows;
with Glfw.Windows.Context; use Glfw.Windows.Context;
with Ada_NanoVG;           use Ada_NanoVG;
with Main_Support;         use Main_Support;
with Glfw.Input;
with Ada.Text_IO;          use Ada.Text_IO;
with GL.Buffers;           use GL.Buffers;
with GL.Types.Colors;      use GL.Types.Colors;
with Glfw.Input.Mouse;

procedure Main is
   W             : aliased Main_Support.Test_Window;
   Ctx           : access NVG_Context;
   Width, Height : Glfw.Size;
   MX, MY        : Glfw.Input.Mouse.Coordinate;
begin
   Glfw.Init;
   Init (W'Access, 800, 600, "NanoVG_Test");
   Make_Current (W'Access);

   Ctx := Create_GLES2_Context
     ((Antialias => True, Stencil_Strokes => True, Debug => True));

   Set_Swap_Interval (0);
   Glfw.Set_Time (0.0);

   W.Enable_Callback (Callbacks.Key);

   while not W.Should_Close loop
      Set_Color_Clear_Value ((0.0, 0.0, 0.0, 0.0));
      Clear ((Stencil => True, Color => True, Depth => True, others => False));
      W.Get_Size (Width, Height);
      W.Get_Cursor_Pos (MX, MY);

      Begin_Frame (Ctx, Width, Height, 1.0);
      Begin_Path (Ctx);
      Rounded_Rect (Ctx, Float (MX), Float (MY), 100.0, 100.0, 10.0);
      Fill_Color (Ctx, RGBA (200.0, 200.0, 200.0, 255.0));
      Fill (Ctx);
      End_Frame (Ctx);

      Swap_Buffers (W'Access);
      Glfw.Input.Poll_Events;
   end loop;
end Main;
