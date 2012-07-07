jQuery(() ->
  $('@sites > li > a').click(() ->
    $('.instructions').hide()
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
        updateSchedule('scheule not found, please check url')
    )
  )

  $('@export a').live('click', () ->
    url = $('@schedule-url').val()
    format = $(this).data('role')

    # jQuery.post('/exports', { url: url, to: format})
    window.location = "/exports?url=#{encodeURI(url)}&to=#{format}"
  )
)
