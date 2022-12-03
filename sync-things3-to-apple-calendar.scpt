tell application id "com.culturedcode.ThingsMac"
	repeat with toDo in to dos
		set a to properties of toDo
		set modificationDate to modification date of toDo
		set creationDate to creation date of toDo
		set startDate to (current date) - (15 * minitues)
		if modificationDate > startDate then
			set taskId to id of toDo
			set activationDate to activation date of toDo
			set dueDate to due date of toDo
			set taskName to name of toDo
			tell application "Calendar"
				tell calendar "Things"
					make new event with properties {summary:taskName, start date:activationDate, end date:dueDate, allday event:"yes", description:taskId}
				end tell
			end tell
		end if
	end repeat
end tell

