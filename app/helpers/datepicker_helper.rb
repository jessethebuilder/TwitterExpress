module DatepickerHelper
  def datepicker_icon(id: 'datepicker_icon', format: 'yyyy-mm-dd', highlight_today: true, today_button: true)
    content_tag :span, '', :id => 'datepicker_icon', :class => 'glyphicon glyphicon-calendar',
                'data-provide' => 'datepicker', 'data-date-format' => format,
                'data-date-today-highlight' => highlight_today, 'data-date-today-btn' => today_button
  end

end