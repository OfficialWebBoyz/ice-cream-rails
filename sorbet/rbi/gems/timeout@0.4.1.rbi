# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `timeout` gem.
# Please instead update this file by running `bin/tapioca gem timeout`.

module Timeout
  private

  # Perform an operation in a block, raising an error if it takes longer than
  # +sec+ seconds to complete.
  #
  # +sec+:: Number of seconds to wait for the block to terminate. Any number
  #         may be used, including Floats to specify fractional seconds. A
  #         value of 0 or +nil+ will execute the block without any timeout.
  # +klass+:: Exception Class to raise if the block fails to terminate
  #           in +sec+ seconds.  Omitting will use the default, Timeout::Error
  # +message+:: Error message to raise with Exception Class.
  #             Omitting will use the default, "execution expired"
  #
  # Returns the result of the block *if* the block completed before
  # +sec+ seconds, otherwise throws an exception, based on the value of +klass+.
  #
  # The exception thrown to terminate the given block cannot be rescued inside
  # the block unless +klass+ is given explicitly. However, the block can use
  # ensure to prevent the handling of the exception.  For that reason, this
  # method cannot be relied on to enforce timeouts for untrusted blocks.
  #
  # If a scheduler is defined, it will be used to handle the timeout by invoking
  # Scheduler#timeout_after.
  #
  # Note that this is both a method of module Timeout, so you can <tt>include
  # Timeout</tt> into your classes so they have a #timeout method, as well as
  # a module method, so you can call it directly as Timeout.timeout().
  #
  # source://timeout//timeout.rb#170
  def timeout(sec, klass = T.unsafe(nil), message = T.unsafe(nil), &block); end

  class << self
    # source://timeout//timeout.rb#128
    def ensure_timeout_thread_created; end

    # Perform an operation in a block, raising an error if it takes longer than
    # +sec+ seconds to complete.
    #
    # +sec+:: Number of seconds to wait for the block to terminate. Any number
    #         may be used, including Floats to specify fractional seconds. A
    #         value of 0 or +nil+ will execute the block without any timeout.
    # +klass+:: Exception Class to raise if the block fails to terminate
    #           in +sec+ seconds.  Omitting will use the default, Timeout::Error
    # +message+:: Error message to raise with Exception Class.
    #             Omitting will use the default, "execution expired"
    #
    # Returns the result of the block *if* the block completed before
    # +sec+ seconds, otherwise throws an exception, based on the value of +klass+.
    #
    # The exception thrown to terminate the given block cannot be rescued inside
    # the block unless +klass+ is given explicitly. However, the block can use
    # ensure to prevent the handling of the exception.  For that reason, this
    # method cannot be relied on to enforce timeouts for untrusted blocks.
    #
    # If a scheduler is defined, it will be used to handle the timeout by invoking
    # Scheduler#timeout_after.
    #
    # Note that this is both a method of module Timeout, so you can <tt>include
    # Timeout</tt> into your classes so they have a #timeout method, as well as
    # a module method, so you can call it directly as Timeout.timeout().
    #
    # source://timeout//timeout.rb#170
    def timeout(sec, klass = T.unsafe(nil), message = T.unsafe(nil), &block); end

    private

    # source://timeout//timeout.rb#98
    def create_timeout_thread; end
  end
end

# :stopdoc:
#
# source://timeout//timeout.rb#51
Timeout::CONDVAR = T.let(T.unsafe(nil), Thread::ConditionVariable)

# Raised by Timeout.timeout when the block times out.
class Timeout::Error < ::RuntimeError
  class << self
    # source://timeout//timeout.rb#38
    def handle_timeout(message); end
  end
end

# Internal error raised to when a timeout is triggered.
class Timeout::ExitException < ::Exception
  # source://timeout//timeout.rb#31
  def exception(*_arg0); end
end

# We keep a private reference so that time mocking libraries won't break
# Timeout.
#
# source://timeout//timeout.rb#140
Timeout::GET_TIME = T.let(T.unsafe(nil), Method)

# source://timeout//timeout.rb#52
Timeout::QUEUE = T.let(T.unsafe(nil), Thread::Queue)

# source://timeout//timeout.rb#53
Timeout::QUEUE_MUTEX = T.let(T.unsafe(nil), Thread::Mutex)

class Timeout::Request
  # @return [Request] a new instance of Request
  #
  # source://timeout//timeout.rb#61
  def initialize(thread, timeout, exception_class, message); end

  # Returns the value of attribute deadline.
  #
  # source://timeout//timeout.rb#59
  def deadline; end

  # @return [Boolean]
  #
  # source://timeout//timeout.rb#71
  def done?; end

  # @return [Boolean]
  #
  # source://timeout//timeout.rb#77
  def expired?(now); end

  # source://timeout//timeout.rb#90
  def finished; end

  # source://timeout//timeout.rb#81
  def interrupt; end
end

# source://timeout//timeout.rb#54
Timeout::TIMEOUT_THREAD_MUTEX = T.let(T.unsafe(nil), Thread::Mutex)

# The version
#
# source://timeout//timeout.rb#27
Timeout::VERSION = T.let(T.unsafe(nil), String)
