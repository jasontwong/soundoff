require 'rspec'
require 'rspec/core/formatters/base_text_formatter'
require 'ruby-progressbar'

class Soundoff < RSpec::Core::Formatters::BaseTextFormatter
  def example_passed(_notification)
    super
    play_sound
  end

  def example_pending(_notification)
    super
    play_sound
  end

  def example_failed(_notification)
    super
    play_sound
  end

  private

  def play_sound
    `afplay alien-noise-01.mp3`
  end
end
