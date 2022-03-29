!!!
%html
  %head
    %title Team24 - #{content_for(:title)}
    %meta{ name: "viewport", content: "width=device-width, initial-scale=1.0" }
    %meta{ :'http-equiv' => 'X-UA-Compatible', content: 'IE=edge' }
    %meta{:content => "text/html; charset=utf-8", "http-equiv" => "content-type"}
    = stylesheet_pack_tag "styles", media: :all
    = javascript_pack_tag "application"
    = favicon_link_tag '/favicon.ico'
    = csrf_meta_tags

  %body.bg-light
    = render 'layouts/svg_logo'

    %header.p-3.mb-3.border-bottom#nav
      .container
        .d-flex.flex-wrap.align-items-center.justify-content-center.justify-content-lg-start
          = image_tag 'pear.png'
          %a.d-flex.align-items-center.mb-2.mb-lg-0.text-dark.text-decoration-none{:href => "/"}
          %ul.nav.col-12.col-lg-auto.me-lg-auto.mb-2.justify-content-center.mb-md-0
            %li
              = link_to 'HOME', root_path, title: 'Go to the home page', class: 'nav-link-2'
            %li
              = link_to 'ECF', ecfs_path, title: 'Go to the ECFs page', class: 'nav-link-2'
            %li
              = link_to 'LOGIN', login_index_path, title: 'Go to the Login page', class: 'nav-link-2'
          %form.col-12.col-lg-auto.mb-3.mb-lg-0.me-lg-3
          .dropdown.text-end
            %a#dropdownUser1.d-block.link-dark.text-decoration-none.dropdown-toggle{"aria-expanded" => "false", "data-bs-toggle" => "dropdown", :href => "#"}
              %img.rounded-circle{:alt => "mdo", :height => "32", :src => "https://img.icons8.com/nolan/75/unchecked-circle.png", :width => "32"}
            %ul.dropdown-menu.text-small{"aria-labelledby" => "dropdownUser1", :style => ""}
              %li
                %a.dropdown-item{:href => "#"} New project...
              %li
                %a.dropdown-item{:href => "#"} Settings
              %li
                %a.dropdown-item{:href => "#"} Profile
              %li
                %hr.dropdown-divider/
              %li
                %a.dropdown-item{:href => "#"} Sign out

    .flash-messages
      - flash.each do |name, msg|
        - next unless name == 'alert' || name == 'notice'
        .alert.alert-info
          .container
            = msg
            %a{ href: '#', title: 'Hide this message', data: { bs_dismiss: :alert } } Dismiss

    %main
      .container= yield

    %footer.mt-auto.my-5.pt-5.text-muted.text-center.text-small
      %p.mb-1 &copy; epiGenesys #{Date.today.year}
      %ul.list-inline
        %li.list-inline-item
          = link_to 'epiGenesys', 'https://www.epigenesys.org.uk', target: '_blank', title: 'Go to the epiGenesys website'
        %li.list-inline-item
          %a{:href => "#"} Terms
        %li.list-inline-item
          %a{:href => "#"} Support
