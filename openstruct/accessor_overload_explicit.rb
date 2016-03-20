class AccessorOverloadExplicit
  ATTRIBUTES = [
    :foo, :bar, :baz, :quux, :anna, :karenina,
    :tolstoy, :oblonsky, :silvio, :gandalf, :bilbo, :frodo, :sam, :merry,
    :pippin, :sauron, :saruman, :thraxas, :homer, :bart,
    :glenn, :erickson, :potter, :hermione, :ron, :snape,
    :luna, :ginny, :booyah, :yeehaw, :yahoo, :excite, :google,
    :duckduck, :ask, :inktomi, :gnutella, :limewire, :jxta, :sun, :oracle,
    :apple, :hp, :dec, :ibm, :microsoft, :dell, :amazon
  ]

  attr_accessor *ATTRIBUTES

  def initialize(params)
    @foo = params[:foo]
    @bar = params[:bar]
    @baz = params[:baz]
    @quux = params[:quux]
    @anna = params[:anna]
    @karenina = params[:karenina]
    @tolstoy = params[:tolstoy]
    @oblonsky = params[:oblonsky]
    @silvio = params[:silvio]
    @gandalf = params[:gandalf]
    @bilbo = params[:bilbo]
    @frodo = params[:frodo]
    @sam = params[:sam]
    @merry = params[:merry]
  end
end
