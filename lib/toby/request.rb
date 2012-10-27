# encoding: utf-8

module Toby::Request
  def self.create(request_name)
    request_name_frames = request_name.split('.')
    api_type = request_name_frames.shift.capitalize
    class_name = (request_name_frames.map { |v| v.capitalize }).join("")
    class_name = "Toby::Request::#{api_type}::#{class_name}"
    clazz = class_name.split("::").inject(Object) { |o, v| o.const_get(v) }
    clazz.new
  end
end
