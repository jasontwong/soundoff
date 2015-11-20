require 'rspec/core/formatters/progress_formatter'
require 'rspec/core/formatters/console_codes'

class Soundoff < RSpec::Core::Formatters::ProgressFormatter
  # This registers the notifications this formatter supports, and tells
  # us that this was written against the RSpec 3.x formatter API.
  RSpec::Core::Formatters.register self,
    :example_passed, :example_failed, :example_pending

  def initialize(output)
    @output = output
  end

  def example_passed(notification)
    @output << RSpec::Core::Formatters::ConsoleCodes.wrap(".", :success)
    tell_them("Passed")
  end

  def example_pending(notification)
    @output << RSpec::Core::Formatters::ConsoleCodes.wrap("*", :pending)
    tell_them("Pending")
  end

  def example_failed(notification)
    @output << RSpec::Core::Formatters::ConsoleCodes.wrap("F", :failure)
    tell_them("Failed")
  end

  private

  def tell_them(line = "What?")
    `say "#{line}"`
  end
end
