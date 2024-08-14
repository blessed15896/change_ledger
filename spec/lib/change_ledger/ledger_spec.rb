require "time"

module ChangeLedger
  Dummy = Data.define(:id, :name) do
    def to_global_id
      "dummy_#{id}"
    end

    def attributes
      { "id" => id, "name" => name }
    end
  end

  RSpec.describe Ledger do
    it "creates rows" do
      instance = Dummy.new id: 3, name: "Blessed"
      time = Time.parse "Aug 14, 2024 1:40 pm"
      travel_to(time) do
        result = Ledger.entry(instance, :name)
        expect(result).to have_attributes(
          id: a_truthy_value,
          global_id: "dummy_3",
          target: "name",
          value: "Blessed",
          changed_at: time.utc,
        )
      end
    end
  end
end
