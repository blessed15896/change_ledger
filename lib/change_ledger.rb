# frozen_string_literal: true

require "zeitwerk"

loader = Zeitwerk::Loader.for_gem(warn_on_extra_files: false)
loader.setup

module ChangeLedger
  class Error < StandardError; end

  # Your code goes here...
end
