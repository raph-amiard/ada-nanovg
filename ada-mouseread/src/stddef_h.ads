pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

package stddef_h is

   --  unsupported macro: NULL __null
   --  arg-macro: procedure offsetof __builtin_offsetof (TYPE, MEMBER)
   --    __builtin_offsetof (TYPE, MEMBER)
   subtype ptrdiff_t is int;  -- /usr/lib/gcc/arm-linux-gnueabihf/4.9/include/stddef.h:147

   subtype size_t is unsigned;  -- /usr/lib/gcc/arm-linux-gnueabihf/4.9/include/stddef.h:212

end stddef_h;
