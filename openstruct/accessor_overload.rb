class ScanDetail
  ATTRIBUTES = [
    :foo, :bar, :baz, :quux, :anna, :karenina,
    :tolstoy, :oblonsky, :silvio, :gandalf, :bilbo, :frodo, :sam, :merry,
    :pippin, :sauron, :saruman, :thraxas, :homer, :bart,
    :glenn, :erickson, :potter, :hermione, :ron, :snape,
    :luna, :ginny, :booyah, :yeehaw, :yahoo, :excite, :google,
    :duckduck, :ask, :inktomi, :gnutella, :limewire, :jxta, :sun, :oracle,
    :apple, :hp, :dec, :ibm, :microsoft, :dell, :amazon

  attr_accessor *[ATTRIBUTES]

  def initialize(params)
    params.each { |attr, value| self.public_send("#{attr}=", value) } unless params.blank?
  end
end
