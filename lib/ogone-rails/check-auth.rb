module OgoneRails  
  
  class CheckAuth 
    
    def initialize request
      @request = request.GET
      @params = {}
      get_params
    end
    
    
    def valid?
      # Check authentication
      # sha_sign == sha_out_phrase
      sha_sign, sha_out_phrase, ogone_return = @request['SHASIGN'], "", {}
      
      # Upcase and sort paramaters to params
      @request.each do |key, value|
        ogone_return[key.upcase] = value unless key == 'SHASIGN' # exclude SHASIGN
      end

      # Generate sha_out_hash
      ogone_return.sort.each do |key, value|
        sha_out_phrase << "#{key.upcase}=#{value}#{OgoneRails::sha_out}"
      end      
      
      # Digest sha_out_phrase
      sha_check = Digest::SHA512.hexdigest(sha_out_phrase).upcase
    
      # Compare sha_sign with digested phrase
      if sha_check == sha_sign
        return true
      else
       return false
      end
    end
    

    def get_params
      # return values in readable format
      @params = {
        :order_id => (@request['OrderID']).to_i,
        :billing_id => (@request['Alias']).to_i,
        :cardno => @request['CardNo'],
        :ed => @request['ED'],
        :status => @request['status'],
        :card_number => @request['CARDNO'],
        :error => (@request['NCError']).to_i,
        :errorall => [(@request['NCErrorCN']).to_i, (@request['NCErrorCardNo']).to_i, (@request['NCErrorCVC']).to_i, (@request['NCErrorED']).to_i],
        :carderror => @request['NCErrorCardNo'],
        :cvcerror => @request['NCErrorCVC'],
        :ederror => @request['NCErrorED'],
        :brand => @request['Brand'],
        :sha_sign => @request['SHASign']
      }
    end
  end
end
