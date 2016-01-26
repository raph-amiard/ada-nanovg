with Ada_NanoVG; use Ada_NanoVG;

package Main_Support is

   function Init
     (Width, Height         : out Natural;
      Req_Width, Req_Height : Natural := 0) return access NVG_Context;

   procedure Get_Cursor_Pos
     (X, Y : out Integer);

   function Should_Exit return Boolean;

   procedure Set_Background_Color (Color : NVG_Color);

   procedure Start_Frame;
   procedure End_Frame;
   procedure Poll_Events;

end Main_Support;
