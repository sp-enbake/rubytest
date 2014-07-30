class Payment < ActiveRecord::Base

  # Using a transation to stop the race condition
  def self.with(query)
    transaction(isolation: :serializable) do
      yield where(query).first_or_create!
    end
  end

end
