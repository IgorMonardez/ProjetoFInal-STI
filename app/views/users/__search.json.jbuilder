json.array!(@user) do |user|
  json.login user.login
  json.name user.name
end