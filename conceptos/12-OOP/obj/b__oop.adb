pragma Ada_95;
pragma Warnings (Off);
pragma Source_File_Name (ada_main, Spec_File_Name => "b__oop.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__oop.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is

   E11 : Short_Integer; pragma Import (Ada, E11, "system__soft_links_E");
   E21 : Short_Integer; pragma Import (Ada, E21, "system__exception_table_E");
   E23 : Short_Integer; pragma Import (Ada, E23, "system__exceptions_E");
   E15 : Short_Integer; pragma Import (Ada, E15, "system__secondary_stack_E");
   E50 : Short_Integer; pragma Import (Ada, E50, "ada__io_exceptions_E");
   E75 : Short_Integer; pragma Import (Ada, E75, "interfaces__c_E");
   E77 : Short_Integer; pragma Import (Ada, E77, "system__os_lib_E");
   E52 : Short_Integer; pragma Import (Ada, E52, "ada__tags_E");
   E49 : Short_Integer; pragma Import (Ada, E49, "ada__streams_E");
   E80 : Short_Integer; pragma Import (Ada, E80, "system__file_control_block_E");
   E73 : Short_Integer; pragma Import (Ada, E73, "system__finalization_root_E");
   E71 : Short_Integer; pragma Import (Ada, E71, "ada__finalization_E");
   E70 : Short_Integer; pragma Import (Ada, E70, "system__file_io_E");
   E65 : Short_Integer; pragma Import (Ada, E65, "ada__text_io_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E65 := E65 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "ada__text_io__finalize_spec");
      begin
         F1;
      end;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__file_io__finalize_body");
      begin
         E70 := E70 - 1;
         F2;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E21 := E21 + 1;
      System.Exceptions'Elab_Spec;
      E23 := E23 + 1;
      System.Soft_Links'Elab_Body;
      E11 := E11 + 1;
      System.Secondary_Stack'Elab_Body;
      E15 := E15 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E50 := E50 + 1;
      Interfaces.C'Elab_Spec;
      E75 := E75 + 1;
      System.Os_Lib'Elab_Body;
      E77 := E77 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E52 := E52 + 1;
      Ada.Streams'Elab_Spec;
      E49 := E49 + 1;
      System.File_Control_Block'Elab_Spec;
      E80 := E80 + 1;
      System.Finalization_Root'Elab_Spec;
      E73 := E73 + 1;
      Ada.Finalization'Elab_Spec;
      E71 := E71 + 1;
      System.File_Io'Elab_Body;
      E70 := E70 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E65 := E65 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_oop");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   /home/ubuntu/environment/curso/conceptos/12-OOP/obj/oop.o
   --   -L/home/ubuntu/environment/curso/conceptos/12-OOP/obj/
   --   -L/home/ubuntu/environment/curso/conceptos/12-OOP/obj/
   --   -L/usr/lib/gcc/x86_64-linux-gnu/7/adalib/
   --   -shared
   --   -lgnat-7
--  END Object file/option list   

end ada_main;
