with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
procedure Badge is
   type Badge_Status is (Earned, Pending, Unknown);
   function Query_Badge_Status (Badge_ID : String) return Badge_Status is F : File_Type; Line : String(1..512); Last : Natural;
   begin
     Open (F, In_File, "logic/output.ndjson");
     while not End_Of_File (F) loop Get_Line (F, Line, Last); if Index (Line(1..Last), Badge_ID) > 0 then Close (F); return Earned; end if; end loop;
     Close (F); return Pending;
   exception when others => return Unknown;
   end Query_Badge_Status;
   procedure Show_Badge_Info (Badge_ID : String) is Status : Badge_Status := Query_Badge_Status (Badge_ID);
   begin
     Put_Line ("Badge: " & Badge_ID);
     case Status is when Earned => Put_Line ("Status: ✅ Earned"); when Pending => Put_Line ("Status: ⏳ Pending"); when Unknown => Put_Line ("Status: ❓ Unknown"); end case;
   end Show_Badge_Info;
   Badge_Name : String := "loom_perfected";
begin
   Show_Badge_Info (Badge_Name);
end Badge;
