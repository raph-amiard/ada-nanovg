with Interfaces.C; use Interfaces.C;

generic
   type Enum is (<>);
   type Options is array (Enum) of Boolean;
package C_Flags_Helpers is
   function Convert (Opts : Options) return unsigned;
end C_Flags_Helpers;
