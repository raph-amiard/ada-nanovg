with Mouse; use Mouse;
with Ada.Text_IO; use Ada.Text_IO;

procedure Test_Mouseread is
   ML    : Mouse.Mouse_Listener;
   Event : Mouse.Mouse_Event_Type := No_Mouse_Event;
begin

   loop
      select
      Mouse.Mouse_Events.Dequeue (Event);
      or delay 0.001;
      end select;
      if Event /= No_Mouse_Event then
         Put_Line ("EVENT :" & Mouse.Dump_Event (Event));
         Event := No_Mouse_Event;
      end if;
   end loop;

end Test_Mouseread;
