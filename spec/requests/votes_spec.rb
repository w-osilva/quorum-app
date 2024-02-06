RSpec.describe "Votes", type: :request do
  describe "GET /index" do
    before do
      create_list(:vote, 2)
    end

    it "returns http success" do
      get "/votes"
      expect(response).to have_http_status(:success)
    end

    it "returns the response in the correct format" do
      get "/votes"
      expect(response.content_type).to match("text/html")
    end

    context "when the format is csv" do
      it "returns the response in the correct format" do
        get "/votes", params: { format: :csv }
        expect(response.content_type).to match("text/csv")
      end
    end

    context "when the format is json" do
      it "returns the response in the correct format" do
        get "/votes", params: { format: :json }
        expect(response.content_type).to match("application/json")
      end
    end
  end

  describe "GET /show" do
    before do
      create(:vote, id: 1)
    end

    it "returns http success" do
      get "/votes", params: { id: 1 }
      expect(response).to have_http_status(:success)
    end

    it "returns the response in the correct format" do
      get "/votes", params: { id: 1 }
      expect(response.content_type).to match("text/html")
    end

    context "when the format is json" do
      it "returns the response in the correct format" do
        get "/votes", params: { id: 1, format: :json }
        expect(response.content_type).to match("application/json")
      end
    end
  end
end
