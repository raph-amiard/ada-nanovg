package body C_Flags_Helpers is

   function Convert (Opts : Options) return unsigned is
      Result : unsigned := 0;
   begin
      pragma Compile_Time_Error
        (Enum'Pos (Enum'First) = 1,
         "First position of enum member must be 1");

      for Enum_Val in Enum'Range loop
         if Opts (Enum_Val) then
            Result := Result or Enum'Pos (Enum_Val);
         end if;
      end loop;

      return Result;
   end Convert;

end C_Flags_Helpers;
