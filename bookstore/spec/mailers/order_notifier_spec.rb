require "rails_helper"

RSpec.describe OrderNotifier, type: :mailer do
  describe "send_email" do
    let(:mail) { OrderNotifier.send_email }

    it "renders the headers" do
      expect(mail.subject).to eq("Send email")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
