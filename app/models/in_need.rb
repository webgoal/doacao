class InNeed < ApplicationRecord
  def self.priorized
    InNeed.where(flag_donation: false).sort{|a, b| (a.income/a.n_members.to_d) <=> (b.income/b.n_members.to_d)}
  end
end
