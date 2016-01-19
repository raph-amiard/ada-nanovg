with Ada.Text_IO; use Ada.Text_IO;
with Glfw.Input.Keys; use Glfw.Input.Keys;

package body Main_Support is

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

   procedure Key_Changed (Object   : not null access Test_Window;
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

end Main_Support;
