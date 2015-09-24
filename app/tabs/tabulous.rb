Tabulous.setup do

  tabs do

      home_tab do
      text          { 'INICIO' }
      link_path     { inicio_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('index').of_controller('home') }
    end
    
      servicio_tab do
      text          { 'SERVICIO' }
      link_path     { servicio_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('servicio').of_controller('static') }
    end
    
     sobre_tab do
      text          { 'SOBRE TAXI XPRESS' }
      link_path     { sobre_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('sobre').of_controller('static') }
    end
    
     testimonios_tab do
      text          { 'TESTIMONIOS' }
      link_path     { testimonios_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('testimonios').of_controller('static') }
    end
    
    contacto_tab do
      text          { 'CONTACTO' }
      link_path     { contacto_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('contacto').of_controller('static') }

    end

   
   
  end

  customize do

    # which class to use to generate HTML
    # :default, :html5, :bootstrap, :bootstrap_pill or :bootstrap_navbar
    # or create your own renderer class and reference it here
    # renderer :default

    # whether to allow the active tab to be clicked
    # defaults to true
    # active_tab_clickable true

    # what to do when there is no active tab for the current controller action
    # :render -- draw the tabset, even though no tab is active
    # :do_not_render -- do not draw the tabset
    # :raise_error -- raise an error
    # defaults to :do_not_render
    # when_action_has_no_tab :do_not_render

    # whether to always add the HTML markup for subtabs, even if empty
    # defaults to false
    # render_subtabs_when_empty false
      when_action_has_no_tab :render

  end

  # The following will insert some CSS straight into your HTML so that you
  # can quickly prototype an app with halfway-decent looking tabs.
  #
  # This scaffolding should be turned off and replaced by your own custom
  # CSS before using tabulous in production.
  use_css_scaffolding do
    background_color '#FFFFFF'
    text_color '#444'
    active_tab_color '#FFFFFF'
    hover_tab_color '#ddd'
    inactive_tab_color '#FE9A2E'
    inactive_text_color '#888'
  end

end
