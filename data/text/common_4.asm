NPCPreBattleTextTable::
  db (.end - @) >> 1

  dw .entry1
  dw .entry2
  dw .purpleentry
  ; and so on, add as many as you want
.end

.entry1
text "Gonna getcha!"
done

.entry2
text "Blurd"
done

.purpleentry
text "Purple"
line "Filth"
done
