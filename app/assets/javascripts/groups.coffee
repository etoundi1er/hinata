$ ->
  sendPending = ->
    if window.navigator.onLine
      pendingGroups = $.parseJSON(localStorage['pendingGroups'])
      if pendingGroups.length > 0
        group = pendingGroups[0]
        $.post '/groups', group.data, (data) ->
          `var pendingGroups`
          pendingGroups = $.parseJSON(localStorage['pendingGroups'])
          pendingGroups.shift()
          localStorage['pendingGroups'] = JSON.stringify(pendingGroups)
          setTimeout sendPending, 100
          return
    return

  if $.support.localStorage
    $(window.applicationCache).bind 'error', ->
      console.log 'Issues loading the cache manifest.'
      return
    if !localStorage['pendingGroups']
      localStorage['pendingGroups'] = JSON.stringify([])
    $.retrieveJSON '/groups.json', (data) ->
      pendingGroups = $.parseJSON(localStorage['pendingGroups'])
      $('#groups').html $('#group_template').tmpl(data.concat(pendingGroups))
      return
    $('#new_group').submit (e) ->
      pendingGroups = $.parseJSON(localStorage['pendingGroups'])
      group = 
        'data': $(this).serialize()
        'group': 'group_name': $('#group_name').val()
      $('#group_template').tmpl(group).appendTo '#groups'
      pendingGroups.push group
      localStorage['pendingGroups'] = JSON.stringify(pendingGroups)
      $('#group_name').val ''
      sendPending()
      e.preventDefault()
      return
    sendPending()
    $(window).bind 'online', sendPending
  else
    alert 'Update or try a different browser.'
  return
