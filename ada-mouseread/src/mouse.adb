with Ada.Text_IO;               use Ada.Text_IO;
with Ada.Text_IO.Text_Streams;  use Ada.Text_IO.Text_Streams;
with Interfaces;                use Interfaces;
with Ada.Calendar;              use Ada.Calendar;
with X11_Xlib_h;                use X11_Xlib_h;
with X11_X_h;                   use X11_X_h;
with System; use System;
with Interfaces.C.Strings; use Interfaces.C.Strings;
use Interfaces.C;

package body Mouse is

   task body Mouse_Listener
   is
      function Default_Root_Window (Display : System.Address) return Window;
      pragma Import (C, Default_Root_Window, "Internal_DefaultRootWindow");

      Display  : System.Address;
      Continue : Boolean := True;
      W        : X11_X_h.Window;
      Dummy    : Interfaces.C.int;
      Xev      : u_XEvent;
      ME       : Mouse_Event_Type;
   begin
      Display := XOpenDisplay (Null_Ptr);
      W := Default_Root_Window (display);
      Dummy := XAllowEvents (Display, AsyncBoth, CurrentTime);
      Dummy := XGrabPointer
        (Display, W, 1,
         ButtonPressMask or ButtonReleaseMask or PointerMotionMask,
         GrabModeAsync, GrabModeAsync, None, None, CurrentTime);

      Put_Line ("Starting mouse listener !");

      while Continue loop
         select
            accept Finish do Continue := False;
            end Finish;
         or delay 0.01;
         end select;

         Dummy := XNextEvent (Display, Xev'Unrestricted_Access);
         ME := Mouse_Event_Type'
           (Buttons_Pressed => (Left => True, others => False),
            X               => Integer (Xev.xbutton.x_root),
            Y               => Integer (Xev.xbutton.y_root),
            Kind            =>
              (case Xev.xbutton.c_type is
               when ButtonPress => Pressed,
               when ButtonRelease => Released,
               when MotionNotify => Moved,
               when others => No_Event));
         Mouse_Events.Enqueue (ME);
         Put_Line (ME.Kind'Img);
      end loop;

      Put_Line ("Stopping mouse listener !");
   end Mouse_Listener;
end Mouse;
