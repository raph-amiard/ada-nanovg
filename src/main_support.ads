with Ada_NanoVG; use Ada_NanoVG;
with Ada.Containers.Vectors;

package Main_Support is

   type Mouse_Event_Kind is (Pressed, Moved, Released);
   type Mouse_Listener_Interface is interface;
   type Mouse_Listener is access all Mouse_Listener_Interface'Class;

   package Mouse_Listener_Vectors is
     new Ada.Containers.Vectors (Natural, Mouse_Listener);

   Mouse_Listeners_Stack : Mouse_Listener_Vectors.Vector;

   procedure Mouse_Event
     (Self : in out Mouse_Listener_Interface;
      Kind : Mouse_Event_Kind;
      X, Y : Float) is abstract;

   function Init
     (Width, Height         : out Natural;
      Req_Width, Req_Height : Natural := 0) return access NVG_Context;

   procedure Get_Cursor_Pos (X, Y : out Integer);
   procedure Set_Background_Color (Color : NVG_Color);
   procedure Start_Frame;
   procedure End_Frame;
   procedure Poll_Events;

   procedure Take_Mouse (Listener : Mouse_Listener);
   procedure Return_Mouse (Listener : Mouse_Listener);

   function Should_Exit return Boolean;

end Main_Support;
