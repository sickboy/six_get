require "six_get/version"

module SixGet
  autoload :Options, "six_get/options"

  module_function

  # Retrieve full product version string
  def product_version
    "SixGet version #{VERSION}"
  end
end
