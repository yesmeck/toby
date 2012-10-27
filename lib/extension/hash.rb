# encoding: utf-8

class Hash
  # Usage:
  # a = {:a => {:b => 1}}
  # a.fetch_chain("a.b")
  # => 1
  # a.fetch_chain("a.b.c")
  # => nil
  def fetch_chain(chain)
    value = nil
    begin
      value = chain.split(".").inject(self) do |hash, key|
        hash[key.to_sym]
      end
    rescue
      # do nothing
    end
    value
  end
end
