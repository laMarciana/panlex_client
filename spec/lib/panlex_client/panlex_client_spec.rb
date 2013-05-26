require 'spec_helper' 

describe PanlexClient do
  describe "::query" do
    context "when the request is successfully" do
      it "should return a response with 200 as HTTP status" do
        response = PanlexClient.query 'lv', { limit: 1 }
        response.code.should eql 200
      end
    end
  end
end
