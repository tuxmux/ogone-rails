module OgoneRails
  extend self
  
  TEST_SERVICE_URL = 'https://secure.ogone.com/ncol/test/alias_gateway_utf8.asp'
  LIVE_SERVICE_URL = 'https://secure.ogone.com/ncol/prod/alias_gateway_ut8.asp'  
  STATUS_CODES = {
    0   => "Incomplete or invalid",
    1	  => "Cancelled by client",
    2	  => "Authorization refused",
    4	  => "Order stored",
    40  => "Stored waitingexternal result",
    41  => "Waiting client payment",
    5	  => "Authorized",
    50  => "Authorized waiting external result",
    51  => "Authorization waiting",
    52  => "Authorization not known",
    55  => "Stand-by",
    56  => "OK with scheduled payments",
    57  => "Error in scheduled payments",
    59  => "Authoriz. to get manually",
    6   => "Authorized and cancelled",
    61  => "Author. deletion waiting",
    62  => "Author. deletion uncertain",
    63  => "Author. deletion refused",
    64  => "Authorized and cancelled",
    7   => "Payment deleted",
    71  => "Payment deletion pending",
    72  => "Payment deletion uncertain",
    73  => "Payment deletion refused",
    74  => "Payment deleted",
    75  => "Deletion processed by merchant",
    8   => "Refund",
    81  => "Refund pending",
    82  => "Refund uncertain",
    83  => "Refund refused",
    84  => "Payment declined by the acquirer",
    85  => "Refund processed by merchant",
    9   => "Payment requested",
    91  => "Payment processing",
    92  => "Payment uncertain",
    93  => "Payment refused",
    94  => "Refund declined by the acquirer",
    95  => "Payment processed by merchant",
    99  => "Being processed"
  }

  ALIAS_GATEWAY_STATUS_CODES = {
=begin
	60001057  => I18n.t('ogone.alias.name.miss'),
	50001174  => I18n.t('ogone.alias.name.to_long'),
	30141001 => I18n.t('ogone.alias.card.error'),
	50001069  => I18n.t('ogone.alias.card.type_missmatch'),
	50001176  => I18n.t('ogone.alias.card.to_long'),
	50001177  => I18n.t('ogone.alias.card.numeric'),
	50001178  => I18n.t('ogone.alias.card.to_short'),
	50001090  =>  I18n.t('ogone.alias.cvc.to_short'),
	50001179 =>  I18n.t('ogone.alias.cvc.to_long'),
	50001180 => I18n.t('ogone.alias.cvc.numeric'),
	50001181 => I18n.t('ogone.alias.date.numeric'),
	50001182  => I18n.t('ogone.alias.date.invalid'),
	50001183  => I18n.t('ogone.alias.date.future'),
	31061001  => "#{I18n.t('ogone.alias.date.wrong')}"
=end
}
  
  @pspid    = nil
  @sha_in   = nil
  @sha_out  = nil
  @currency = "EUR"
  @language = "nl_NL"
  @mode    = "live"
  
  def config c
    
    c.each do |key, value|
      case key
      when :pspid
        @pspid = value
      when :sha_in
        @sha_in = value
      when :sha_out
        @sha_out = value
      when :currency
        @currency = value unless value.nil?
      when :language
        @language = value unless value.nil?
      when :mode
        @mode = value unless value.nil?
      end
    end
  end
    

  def self.sha_in
    @sha_in
  end

  def self.sha_out
    @sha_out
  end

  def self.pspid
    @pspid
  end

  def self.currency
    @currency
  end

  def self.language
    @language
  end

  def self.mode
    @mode
  end
end
