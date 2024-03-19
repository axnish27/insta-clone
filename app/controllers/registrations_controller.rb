class RegistrationsController < Devise::RegistrationsController
  def new
    super
    @username_lenght = 12
  end

  def update
    # add custom update logic here
  end

  private

  def 
  end
end
