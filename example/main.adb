with Ada_NanoVG;           use Ada_NanoVG;
with Main_Support;         use Main_Support;
with Ada.Text_IO;          use Ada.Text_IO;

procedure Main is
   Width, Height       : Natural;
   MX, MY              : Natural;
   X, Y                : Float;
   Gr                  : NVG_Paint;
   Ctx                 : access NVG_Context;
begin
   Ctx := Init (Width, Height, 800, 600);
   Set_Background_Color (RGBA (0, 0, 0, 255));

   while not Should_Exit loop

      Get_Cursor_Pos (MX, MY);
      X := Float (MX);
      Y := Float (MY);

      Start_Frame;
      Begin_Path (Ctx);
      Rounded_Rect (Ctx, X, Y, 100.0, 100.0, 10.0);
      Fill_Color (Ctx, RGBA (128, 130, 134, 200));
      Fill (Ctx);
      Gr := Linear_Gradient
        (Ctx, X, Y, X, Y + 15.0, RGBA (255, 255, 255, 8), RGBA (0, 0, 0, 16));
      Fill_Paint (Ctx, Gr);
      Fill (Ctx);
      End_Frame;
      Poll_Events;
   end loop;
end Main;
