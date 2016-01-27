with Ada.Text_IO;               use Ada.Text_IO;
with Ada.Text_IO.Text_Streams;  use Ada.Text_IO.Text_Streams;
with Interfaces;                use Interfaces;
with Ada.Calendar;              use Ada.Calendar;
with X11_Xlib_h;                use X11_Xlib_h;
with X11_X_h;                   use X11_X_h;
with System; use System;
with Interfaces.C.Strings; use Interfaces.C.Strings;

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
   begin
      Put_Line ("FUFUFU");
      Display := XOpenDisplay (Null_Ptr);
      Put_Line ("FUFUFU");
      W := Default_Root_Window (display);
      Put_Line ("FUFUFU");
      Dummy := XAllowEvents (Display, AsyncBoth, CurrentTime);
      Put_Line ("FUFUFU");
      Dummy := XGrabPointer
        (Display, W, 1, ButtonPressMask, GrabModeAsync, GrabModeAsync,
         None, None, CurrentTime);

      Put_Line ("FUFUFU2");

      Put_Line ("Starting mouse listener !");

      while Continue loop
         select
            accept Finish do Continue := False;
            end Finish;
         or delay 0.01;
         end select;

         Dummy := XNextEvent (Display, Xev'Unrestricted_Access);
         Mouse_Events.Enqueue
           (Mouse_Event_Type'(Buttons_Pressed => (Left => True, others => False),
                              X               => Integer (Xev.xbutton.x_root),
                              Y               => Integer (Xev.xbutton.y_root)));
      end loop;

      Put_Line ("Stopping mouse listener !");
   end Mouse_Listener;
end Mouse;
