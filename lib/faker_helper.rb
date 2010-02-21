module FakerHelper
  def common_fake_data
    fake_hash = {}
    fake_hash["Name"] = Name.name
    fake_hash["First name"] = Name.first_name
    fake_hash["Last name"] = Name.last_name
    fake_hash["Prefix"] = Name.prefix
    fake_hash["Suffix"] = Name.suffix
    fake_hash["Phone number"] = PhoneNumber.phone_number
    fake_hash["User name"] = Internet.user_name(fake_hash["First name"])
    fake_hash["Email"]= Internet.email(fake_hash["User name"])
    fake_hash["Free email"] = Internet.free_email(fake_hash["User name"])
    fake_hash["Domain name"] = Internet.domain_name
    fake_hash["Domain suffix"] = Internet.domain_suffix
    fake_hash["Domain word"] = Internet.domain_word
    fake_hash["Bs"] = Company.bs
    fake_hash["Company name"] = Company.name
    fake_hash["Company suffix"] = Company.suffix
    fake_hash["Catch phrase"] = Company.catch_phrase
    fake_hash["Street address"] = Address.street_address
    fake_hash["Street name"] = Address.street_name
    fake_hash["Street suffix"] = Address.street_suffix
    fake_hash["US state"] = Address.us_state    
    fake_hash["US state abbr"] = Address.us_state_abbr
    fake_hash["Zip code"] = Address.zip_code

    ordered_fake_keys = ["Name", "First name", "Last name", "Prefix", "Suffix", "Phone number",
      "User name", "Email", "Free email","Domain name", "Domain suffix", 
      "Domain word", "Bs", "Company name", "Company suffix", "Catch phrase",
      "Street address", "Street name", "Street suffix", "US state", "US state abbr", "Zip code"
    ]
    return ordered_fake_keys, fake_hash
  end

  def clippy(text, bgcolor='#FFFFFF')
    html = <<-EOF
    <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
    width="110"
    height="14"
    id="clippy" >
    <param name="movie" value="/flash/clippy.swf"/>
    <param name="allowScriptAccess" value="always" />
    <param name="quality" value="high" />
    <param name="scale" value="noscale" />
    <param NAME="FlashVars" value="text=#{text}">
    <param name="bgcolor" value="#{bgcolor}">
    <embed src="/clippy.swf"
    width="110"
    height="14"
    name="clippy"
    quality="high"
    allowScriptAccess="always"
    type="application/x-shockwave-flash"
    pluginspage="http://www.macromedia.com/go/getflashplayer"
    FlashVars="text=#{text}"
    bgcolor="#{bgcolor}"
    />
    </object>
    EOF
  end

end

