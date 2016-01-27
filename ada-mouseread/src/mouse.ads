with Ada.Containers.Unbounded_Synchronized_Queues;
with Ada.Containers.Synchronized_Queue_Interfaces;

package Mouse is

   type Mouse_Button is (Left, Right, Middle);
   type Buttons_Pressed_Array is array (Mouse_Button) of Boolean;

   type Mouse_Event_Type is record
      Buttons_Pressed : Buttons_Pressed_Array;
      X, Y            : Natural;
   end record;

   No_Mouse_Event : Mouse_Event_Type := ((others => <>), X => 0, Y => 0);

   package I_Mouse_Event_Queues
   is new Ada.Containers.Synchronized_Queue_Interfaces (Mouse_Event_Type);

   package Mouse_Event_Queues
   is new Ada.Containers.Unbounded_Synchronized_Queues (I_Mouse_Event_Queues);

   Mouse_Events : Mouse_Event_Queues.Queue;

   task type Mouse_Listener is
      entry Finish;
   end Mouse_Listener;

   function Dump_Event (E : Mouse_Event_Type) return String
   is
     ("<Mouse event, left = " & E.Buttons_Pressed (Left)'Img
      & " right = " & E.Buttons_Pressed (Right)'Img
      & " X " & E.X'Img & " Y " & E.Y'Img & ">");
end Mouse;
