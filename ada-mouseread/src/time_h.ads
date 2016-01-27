pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with arm_linux_gnueabihf_bits_types_h;

package time_h is

   subtype clock_t is arm_linux_gnueabihf_bits_types_h.uu_clock_t;  -- /usr/include/time.h:59

   subtype time_t is arm_linux_gnueabihf_bits_types_h.uu_time_t;  -- /usr/include/time.h:75

   subtype clockid_t is arm_linux_gnueabihf_bits_types_h.uu_clockid_t;  -- /usr/include/time.h:91

   subtype timer_t is arm_linux_gnueabihf_bits_types_h.uu_timer_t;  -- /usr/include/time.h:103

   type timespec is record
      tv_sec : aliased arm_linux_gnueabihf_bits_types_h.uu_time_t;  -- /usr/include/time.h:122
      tv_nsec : aliased arm_linux_gnueabihf_bits_types_h.uu_syscall_slong_t;  -- /usr/include/time.h:123
   end record;
   pragma Convention (C_Pass_By_Copy, timespec);  -- /usr/include/time.h:120

end time_h;
