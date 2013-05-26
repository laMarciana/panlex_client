require 'spec_helper' 

describe PanlexClient do
  describe "::query" do
    context "when the request is successfully" do
      it "should return PanLex response parsed in a Hash" do
        response = PanlexClient.query 'lv', { limit: 1 }
        response.should be_an_instance_of Hash
      end
    end

    context "when the request is not successfully" do
      it "should raise an exception with the response" do
        expect { PanlexClient.query 'foo', {} }.to raise_error RestClient::ExceptionWithResponse
      end
    end
  end
end
