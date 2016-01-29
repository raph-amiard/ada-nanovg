with Ada_NanoVG; use Ada_NanoVG;
with Ada.Containers.Vectors;

package Main_Support is

   type Mouse_Event_Kind is (Pressed, Moved, Released);
   type Mouse_Listener_Interface is interface;
   type Mouse_Listener is access all Mouse_Listener_Interface'Class;
   --  Interface for listening to mouse events.

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
   --  Initializes the graphical context.

   procedure Get_Cursor_Pos (X, Y : out Integer);
   --  Get the cursor position

   procedure Set_Background_Color (Color : NVG_Color);
   --  Set the color of the background

   procedure Start_Frame;
   --  Begin rendering a graphical frame. After that call, you can use NanoVG
   --  calls to create your graphical interface

   procedure End_Frame;
   --  End rendering your graphical frame. Will expose the drawing to the
   --  screen.

   procedure Poll_Events;
   --  Poll input events. Needs to be called in the main loop for
   --  mouse/keyboard to work.

   procedure Take_Mouse (Listener : Mouse_Listener);
   --  Take the mouse input. When this is called, Listener will take all mouse
   --  input for itself

   procedure Return_Mouse (Listener : Mouse_Listener);
   --  Return the mouse input. Mouse input will be returned to the previously
   --  set listener

   function Should_Exit return Boolean;

end Main_Support;
