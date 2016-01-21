with Glfw; use Glfw;
with Glfw.Input;
with Glfw.Input.Keys;
with Glfw.Windows;
with Glfw.Errors;

package Main_Support is

   type Simple_Window is new Glfw.Windows.Window with record
      Blow_Up : Boolean := False;
   end record;

   procedure Key_Changed (Object   : not null access Simple_Window;
                          Key      : Input.Keys.Key;
                          Scancode : Input.Keys.Scancode;
                          Action   : Input.Keys.Action;
                          Mods     : Input.Keys.Modifiers);

   procedure Error_Callback (Error : Glfw.Errors.Kind; Description : String);

end Main_Support;
