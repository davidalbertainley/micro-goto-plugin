MakeCommand("goto", "goto.goto_line", 0)

function goto_line(lineToGoTo)
  local stop = false
  local view = CurView()
  local goToLine = tonumber(lineToGoTo)

  if (goToLine == nil) then
    stop = true
  end
  
  if (stop == true) then
  else
    local maxLine = view.Buf.NumLines

    ---[[
    if (maxLine < goToLine) then
      view.Cursor.Y = maxLine - 1
    else
      view.Cursor.Y = goToLine - 1
    end
    --]]
  end
  view:Relocate()
end