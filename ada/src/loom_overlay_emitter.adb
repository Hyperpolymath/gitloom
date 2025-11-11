with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings;
procedure Loom_Overlay_Emitter is
   type Badge_Overlay is record
     Badge_ID  : String(1..16); Color : String(1..7); Icon : String(1..2); Tooltip : String(1..40); Animation : String(1..8);
   end record;
   Overlays : constant array (1 .. 3) of Badge_Overlay := (
     (Badge_ID => "head_held_high  ", Color => "indigo ", Icon => "🧼", Tooltip => "HEAD repaired. Lineage restored.        ", Animation => "pulse   "),
     (Badge_ID => "loom_repaired   ", Color => "emerald", Icon => "🧭", Tooltip => "CI/CD verified. Loom stabilized.      ", Animation => "fade-in "),
     (Badge_ID => "loom_perfected  ", Color => "gold   ", Icon => "✨", Tooltip => "All rituals complete. Loom perfected. ", Animation => "glow    ")
   );
   F : File_Type;
begin
   Create (F, Out_File, "ui/assets/badge_overlay.json");
   Put_Line (F, "[");
   for I in Overlays'Range loop
     Put_Line (F, "  {");
     Put_Line (F, "    ""badge_id"": """ & Trim(Overlays(I).Badge_ID, Ada.Strings.Both) & """,");
     Put_Line (F, "    ""color"": """ & Trim(Overlays(I).Color, Ada.Strings.Both) & """,");
     Put_Line (F, "    ""icon"": """ & Overlays(I).Icon & """,");
     Put_Line (F, "    ""tooltip"": """ & Trim(Overlays(I).Tooltip, Ada.Strings.Both) & """,");
     Put_Line (F, "    ""animation"": """ & Trim(Overlays(I).Animation, Ada.Strings.Both) & """");
     Put_Line (F, "  }" & (if I = Overlays'Last then "" else ","));
   end loop;
   Put_Line (F, "]");
   Close (F);
end Loom_Overlay_Emitter;
