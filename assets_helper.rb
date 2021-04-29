module AssetsHelper
  # Checks for asset existance
  def asset_exists?(path)
    if Rails.env.production?
      Rails.application.assets_manifest.find_sources(path).any?
    else
      !Rails.application.assets.find_asset(path).nil?
    end
  end
end
