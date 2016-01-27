with Ada_NanoVG; use Ada_NanoVG;

package Main_Support is

   type Mouse_Clicked_Callback_Type is access procedure (X, Y : Integer);

   function Init
     (Width, Height         : out Natural;
      Req_Width, Req_Height : Natural := 0) return access NVG_Context;

   procedure Get_Cursor_Pos (X, Y : out Integer);
   procedure Set_Background_Color (Color : NVG_Color);
   procedure Start_Frame;
   procedure End_Frame;
   procedure Poll_Events;
   procedure Set_Mouse_Clicked_Callback (CB : Mouse_Clicked_Callback_Type);
   function Should_Exit return Boolean;

end Main_Support;
