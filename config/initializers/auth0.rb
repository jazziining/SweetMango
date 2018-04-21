Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    'lSyPjnjLJPehWvCdwtdlcCaHRJPoynPE',
    '5e1b9259226b4857bbbb04c7ac1acfa6',
    'sweetmangobeauty.auth0.com',
    callback_path: "/auth/oauth2/callback",
    authorize_params: {
      scope: 'openid profile',
      audience: 'https://sweetmangobeauty.auth0.com/userinfo'
    }
  )
end
