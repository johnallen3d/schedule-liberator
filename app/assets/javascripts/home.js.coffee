jQuery(() ->
  $('@sites > li > a').click((e) ->
    e.preventDefault()
    type = $(this).data('type')
    $("@#{type}-instructions").show('blind')
  )

  updateSchedule = ((content) ->
    $('@schedule').html(content)
  )

  $('@schedule-url').keyup(() ->
    updateSchedule('loading...')

    url = $(this).val()

    jQuery.post('/conversions', { url: url }, (data) ->
      if data?.schedule?.length > 0
        updateSchedule(JST.events(data))
      else
        updateSchedule('schedule not found, please check url')
    )
  )

  $('@schedule').on('click', '@export a', (e) ->
    e.preventDefault()
    url = $('@schedule-url').val()
    format = $(this).data('role')

    window.location = "/exports?url=#{encodeURI(url)}&to=#{format}"
  )
)
