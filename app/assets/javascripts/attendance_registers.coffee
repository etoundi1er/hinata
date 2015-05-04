# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# sendPending = ->
#   if window.navigator.onLine
#     pendingAttendanceRegisters = $.parseJSON(localStorage['pendingAttendanceRegisters'])
#     if pendingAttendanceRegisters.length > 0
#       attendance_register = pendingAttendanceRegisters[0]
#       $.post './attendance_registers', attendance_register.data, (data) ->
#         `var pendingAttendanceRegisters`
#         pendingAttendanceRegisters = $.parseJSON(localStorage['pendingAttendanceRegisters'])
#         pendingAttendanceRegisters.shift()
#         localStorage['pendingAttendanceRegisters'] = JSON.stringify(pendingAttendanceRegisters)
#         setTimeout sendPending, 100
#         return
#   return

# if $.support.localStorage
#   $(window.applicationCache).bind 'error', ->
#     console.log 'There was an error when loading the cache manifest.'
#     return
#   if !localStorage['pendingAttendanceRegisters']
#     localStorage['pendingAttendanceRegisters'] = JSON.stringify([])
#   $.retrieveJSON './attendance_registers.json', (data) ->
#     pendingAttendanceRegisters = $.parseJSON(localStorage['pendingAttendanceRegisters'])
#     $('#attendance_registers').html $('#attendance_register_template').tmpl(data.concat(pendingAttendanceRegisters))
#     return
#   $('#new_attendance_register').submit (e) ->
#     pendingAttendanceRegisters = $.parseJSON(localStorage['pendingAttendanceRegisters'])
#     attendance_register = 
#       'data': $(this).serialize()
#       'attendance_register': 'attendance_register_id': $('#attendance_register_id').val()
#     $('#attendance_register_template').tmpl(attendance_register).appendTo '#attendance_registers'
#     pendingAttendanceRegisters.push attendance_register
#     localStorage['pendingAttendanceRegisters'] = JSON.stringify(pendingAttendanceRegisters)
#     $('#attendance_register_name').val ''
#     sendPending()
#     e.preventDefault()
#     return
#   sendPending()
#   $(window).bind 'online', sendPending
# else
#   alert 'Try a different browser.'
