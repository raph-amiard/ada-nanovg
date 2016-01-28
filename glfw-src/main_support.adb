with Ada.Text_IO;          use Ada.Text_IO;
with Glfw.Input.Keys;      use Glfw.Input.Keys;
with GL.Buffers;           use GL.Buffers;
with GL.Types.Colors;      use GL.Types.Colors;
with Glfw.Input.Mouse;
with GL.Toggles;           use GL.Toggles;
with GL.Blending;          use GL.Blending;
with GL.Window;
with GL.Types;             use GL.Types;
with Glfw.Windows.Hints;
with Glfw.Errors;
with Glfw.Windows;         use Glfw.Windows;
with Glfw.Windows.Context; use Glfw.Windows.Context;
with Glfw; use Glfw;
with Glfw.Input;
with Glfw.Input.Keys;
with Glfw.Windows;
with Glfw.Errors;
with Interfaces.C;
with Ada.Containers.Vectors;

package body Main_Support is

   type Simple_Window is new Glfw.Windows.Window with record
      Blow_Up : Boolean := False;
   end record;

   overriding procedure Key_Changed
     (Object   : not null access Simple_Window;
      Key      : Input.Keys.Key;
      Scancode : Input.Keys.Scancode;
      Action   : Input.Keys.Action;
      Mods     : Input.Keys.Modifiers);

   overriding procedure Mouse_Button_Changed
     (Object  : not null access Simple_Window;
      Button  : Input.Mouse.Button;
      State   : Input.Button_State;
      Mods    : Input.Keys.Modifiers);

   overriding procedure Mouse_Position_Changed
     (Object : not null access Simple_Window;
      X, Y   : Input.Mouse.Coordinate);

   W                : aliased Main_Support.Simple_Window;
   Background_Color : NVG_Color;
   Ctx              : access NVG_Context;

   procedure Error_Callback (Error : Glfw.Errors.Kind; Description : String);

   --------------------
   -- Error_Callback --
   --------------------

   procedure Error_Callback (Error : Glfw.Errors.Kind; Description : String) is
   begin
      Put_Line ("GLFW ERROR: " & Error'Img & " - " & Description);
   end Error_Callback;

   -----------------
   -- Key_Changed --
   -----------------

   procedure Key_Changed (Object   : not null access Simple_Window;
                          Key      : Input.Keys.Key;
                          Scancode : Input.Keys.Scancode;
                          Action   : Input.Keys.Action;
                          Mods     : Input.Keys.Modifiers)
   is
   begin
      if Key = Escape and then Action = Press then
         Object.Set_Should_Close (True);
      end if;
   end Key_Changed;

   --------------------------
   -- Mouse_Button_Changed --
   --------------------------

   overriding procedure Mouse_Button_Changed
     (Object  : not null access Simple_Window;
      Button  : Input.Mouse.Button;
      State   : Input.Button_State;
      Mods    : Input.Keys.Modifiers)
   is
      X, Y : Input.Mouse.Coordinate;
      use type Input.Button_State;
      K : Mouse_Event_Kind :=
        (case State is
            when Input.Pressed => Pressed,
            when Input.Released => Released);
   begin
      Object.Get_Cursor_Pos (X, Y);
      Mouse_Listeners_Stack.Last_Element.Mouse_Event
        (K, Float (X), Float (Y));
   end Mouse_Button_Changed;

   ----------
   -- Init --
   ----------

   function Init
     (Width, Height         : out Natural;
      Req_Width, Req_Height : Natural := 0) return access NVG_Context
   is
      RW, RH : Glfw.Size;
   begin
      Glfw.Init;
      Glfw.Errors.Set_Callback (Error_Callback'Access);

      Hints.Set_Client_API (OPENGL_ES);
      Hints.Set_Minimum_OpenGL_Version (2, 0);

      Init (W'Access, Glfw.Size (Req_Width), Glfw.Size (Req_Height), "");

      Make_Current (W'Access);

      Ctx := Create_GLES2_Context
        ((Antialias => True, Stencil_Strokes => True, Debug => True));

      Set_Swap_Interval (0);
      Glfw.Set_Time (0.0);

      W.Enable_Callback (Callbacks.Key);

      W.Get_Framebuffer_Size (RW, RH);
      Width := Natural (RW);
      Height := Natural (RH);

      GL.Window.Set_Viewport (0, 0, GL.Types.Size (RW), GL.Types.Size (RH));
      W.Enable_Callback (Callbacks.Key);
      W.Enable_Callback (Callbacks.Mouse_Button);
      W.Enable_Callback (Callbacks.Mouse_Position);

      Create_Font (Ctx, "sans", "Roboto-Regular.ttf");
      return Ctx;
   end Init;

   --------------------
   -- Get_Cursor_Pos --
   --------------------

   procedure Get_Cursor_Pos
     (X, Y : out Integer)
   is
      MX, MY : Glfw.Input.Mouse.Coordinate;
   begin
      W.Get_Cursor_Pos (MX, MY);
      X := Integer (MX);
      Y := Integer (MY);
   end Get_Cursor_Pos;

   -----------------
   -- Should_Exit --
   -----------------

   function Should_Exit return Boolean is (W.Should_Close);

   --------------------------
   -- Set_Background_Color --
   --------------------------

   procedure Set_Background_Color (Color : NVG_Color)
   is
   begin
      Background_Color := Color;
   end Set_Background_Color;

   -----------------
   -- Begin_Frame --
   -----------------

   procedure Start_Frame is
      RW, RH : Glfw.Size;
   begin
      W.Get_Framebuffer_Size (RW, RH);
      Set_Color_Clear_Value ((Single (Background_Color.R),
                              Single (Background_Color.G),
                              Single (Background_Color.B),
                              Single (Background_Color.A)));
      Clear ((Stencil => True, Color => True, Depth => True, others => False));

      Enable (GL.Toggles.Blend);
      Set_Blend_Func (Src_Alpha, One_Minus_Src_Alpha);
      Enable (GL.Toggles.Cull_Face);
      Disable (GL.Toggles.Depth_Test);

      Begin_Frame (Ctx, RW, RH, 1.0);
   end Start_Frame;

   ---------------
   -- End_Frame --
   ---------------

   procedure End_Frame is
   begin
      Restore (Ctx);
      End_Frame (Ctx);
      Enable (GL.Toggles.Depth_Test);
      Swap_Buffers (W'Access);
      delay 0.01;
   end End_Frame;

   -----------------
   -- Poll_Events --
   -----------------

   procedure Poll_Events is
   begin
      Glfw.Input.Poll_Events;
   end Poll_Events;

   ----------------
   -- Take_Mouse --
   ----------------

   procedure Take_Mouse (Listener : Mouse_Listener) is
   begin
      Mouse_Listeners_Stack.Append (Listener);
   end Take_Mouse;

   ------------------
   -- Return_Mouse --
   ------------------

   procedure Return_Mouse (Listener : Mouse_Listener) is
   begin
      pragma Assert (Listener = Mouse_Listeners_Stack.Last_Element);
      Mouse_Listeners_Stack.Delete_Last;
   end Return_Mouse;

   ----------------------------
   -- Mouse_Position_Changed --
   ----------------------------

   overriding procedure Mouse_Position_Changed
     (Object : not null access Simple_Window;
      X, Y   : Input.Mouse.Coordinate) is
   begin
      Mouse_Listeners_Stack.Last_Element.Mouse_Event
        (Moved, Float (X), Float (Y));
   end Mouse_Position_Changed;

end Main_Support;
