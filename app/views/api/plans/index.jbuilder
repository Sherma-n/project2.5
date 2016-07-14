json.array! @plans do |plan|
  json.partial! 'template', plan: plan
end