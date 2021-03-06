with Ada.Text_IO; use Ada.Text_IO;
with Interfaces; use Interfaces;
with Mouse; use Mouse;

package body Main_Support is

   Background_Color : NVG_Color;
   Ctx              : access NVG_Context;
   ML               : Mouse.Mouse_Listener;
   Mouse_X, Mouse_Y : Integer;

   function C_Init (Width, Height : out Unsigned_32) return access NVG_Context;
   pragma Import (C, C_Init, "c_init");

   ----------
   -- Init --
   ----------

   function Init
     (Width, Height         : out Natural;
      Req_Width, Req_Height : Natural := 0) return access NVG_Context
   is
      pragma Unreferenced (Req_Width, Req_Height);

      W, H : Unsigned_32;
   begin
      Ctx := C_Init (W, H);
      Width := Natural (W);
      Height := Natural (H);
      return Ctx;
   end Init;

   --------------------
   -- Get_Cursor_Pos --
   --------------------

   procedure Get_Cursor_Pos
     (X, Y : out Integer)
   is
   begin
      X := Mouse_X;
      Y := Mouse_Y;
   end Get_Cursor_Pos;

   -----------------
   -- Should_Exit --
   -----------------

   function Should_Exit return Boolean is (False);

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
      procedure C_Start_Frame (Ctx : access NVG_Context);
      pragma Import (C, C_Start_Frame, "c_start_frame");
   begin
      C_Start_Frame (Ctx);
   end Start_Frame;

   ---------------
   -- End_Frame --
   ---------------

   procedure End_Frame is
      procedure C_End_Frame (Ctx : access NVG_Context);
      pragma Import (C, C_End_Frame, "c_end_frame");
   begin
      C_End_Frame (Ctx);
   end End_Frame;

   -----------------
   -- Poll_Events --
   -----------------

   procedure Poll_Events is
      Event : Mouse.Mouse_Event_Type := No_Mouse_Event;
   begin
      loop
         select
         Mouse.Mouse_Events.Dequeue (Event);
         or delay 0.001;
         end select;

         exit when Event = No_Mouse_Event;

         Mouse_X := Integer (Event.X);
         Mouse_Y := Integer (Event.Y);
         Mouse_Listeners_Stack.Last_Element.Mouse_Event
           ((case Event.Kind is
             when Pressed => Pressed,
             when Moved => Moved,
             when Released => Released,
             when No_Event => raise Constraint_Error),
            Float (Event.X), Float (Event.Y));
         Event := No_Mouse_Event;
      end loop;

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

end Main_Support;
