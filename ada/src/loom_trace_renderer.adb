with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
procedure Loom_Trace_Renderer is
   F_In  : File_Type; F_Out : File_Type; Line  : Unbounded_String;
   Path_In  : constant String := "logic/output.ndjson";
   Path_Out : constant String := "docs/rituals/loom_trace.adoc";
begin
   Open (F_In, In_File, Path_In); Create (F_Out, Out_File, Path_Out);
   Put_Line (F_Out, "= Loom Trace: Contributor Rituals"); Put_Line (F_Out, ":author: Loom Engine"); Put_Line (F_Out, "== 🧵 Badge Trace");
   while not End_Of_File (F_In) loop
     Line := To_Unbounded_String (Get_Line (F_In));
     declare Badge_ID : Unbounded_String := Line;
     begin
       if Index (Line, "head_held_high") > 0 then Put_Line (F_Out, "* 🧼 `head_held_high` — HEAD repaired. Lineage restored.");
       elsif Index (Line, "loom_repaired") > 0 then Put_Line (F_Out, "* 🧭 `loom_repaired` — CI/CD verified. Loom stabilized.");
       elsif Index (Line, "loom_perfected") > 0 then Put_Line (F_Out, "* ✨ `loom_perfected` — All rituals complete. Loom perfected.");
       else Put_Line (F_Out, "* ❓ Unknown badge: " & To_String (Badge_ID));
       end if;
     end;
   end loop;
   Close (F_In); Close (F_Out);
end Loom_Trace_Renderer;
