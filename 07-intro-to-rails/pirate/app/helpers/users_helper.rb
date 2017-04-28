module UsersHelper
  def talk_like_a_pirate
    ["arrrrrr","ahoy matey","I like the water"].sample
  end

  def user_div user
    %Q{
      <div class="user" id="#{user.id}">
        #{user.fname}
      </div>
    }.html_safe
  end

  def headline msg
    content_tag :h2, msg
  end
end
