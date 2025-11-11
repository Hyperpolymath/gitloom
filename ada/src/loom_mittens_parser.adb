with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
procedure Loom_Mittens_Parser is
   type Contributor_Config is record Name : Unbounded_String; Role : Unbounded_String; Sandbox : Unbounded_String; Care_Mode : Boolean; Badge_Goals : Unbounded_String; end record;
   function Parse_Nickel_Config return Contributor_Config is begin return (Name => To_Unbounded_String ("Jonathan"), Role => To_Unbounded_String ("reweaver"), Sandbox => To_Unbounded_String ("kinoite-reweaver"), Care_Mode => True, Badge_Goals => To_Unbounded_String ("head_held_high loom_repaired loom_perfected")); end Parse_Nickel_Config;
   procedure Emit_SLS (Config : Contributor_Config) is F : File_Type; Path : String := "config/salt/contributor/" & To_String (Config.Name) & ".sls"; begin Create (F, Out_File, Path); Put_Line (F, "install_git:\n  pkg.installed:\n    - name: git"); Close (F); end Emit_SLS;
   procedure Emit_Init (Config : Contributor_Config) is Shells : constant array (1 .. 5) of String := ("sh", "nu", "fish", "ion", "oil"); F : File_Type; begin for S of Shells loop Create (F, Out_File, "loom-init." & S); Put_Line (F, "LOOM_ROLE=" & To_String (Config.Role)); Close (F); end loop; end Emit_Init;
   procedure Emit_Profile (Config : Contributor_Config) is F : File_Type; Path : String := "docs/contributors/" & To_String (Config.Name) & ".adoc"; begin Create (F, Out_File, Path); Put_Line (F, "= Contributor Profile: " & To_String (Config.Name)); Close (F); end Emit_Profile;
   Config : Contributor_Config := Parse_Nickel_Config;
begin Emit_SLS (Config); Emit_Init (Config); Emit_Profile (Config);
end Loom_Mittens_Parser;
