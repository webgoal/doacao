class InNeed < ApplicationRecord
  has_many :donation_logs
  def self.priorized
    InNeed.all.sort{|a, b| (a.income/a.n_members.to_d) <=> (b.income/b.n_members.to_d)}
  end
end
