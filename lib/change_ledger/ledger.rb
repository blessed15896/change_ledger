module ChangeLedger
  class Ledger < ActiveRecord::Base
    def self.entry instance, target
      create(global_id: instance.to_global_id, target: target.to_s, value: instance.attributes[target.to_s], changed_at: Time.current)
    end
  end
end
