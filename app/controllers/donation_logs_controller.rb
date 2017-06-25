class DonationsLogsController < ApplicationController
  def index
    @donation_logs = DonationLogs.all
  end
end
