Rails.application.config.middleware.use OmniAuth::Builder do
    if Rails.env.development? || Rails.env.test?
        provider :github, "73384ff4e636c45ba6b6", "a05bb3759cd02638a845980a8c4fc7f4e414fc05"
    else
        provider :github,
        Rails.application.credentials.github[:client_id],
        Rails.application.credentials.github[:client_secret]
    end
end