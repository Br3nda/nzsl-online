class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def find_or_create_vocab_sheet
    #VocabSheet.find() raises exception if not found - this is not what we want
    @sheet = VocabSheet.find_by_id(session[:vocab_sheet_id])
    @sheet ||= VocabSheet.create
    session[:vocab_sheet_id] = @sheet.id
  end

  def redirect_back_or_default
    begin
      redirect_to :back
    rescue RedirectBackError
      redirect_to root_path
    end
  end

  def respond_with_json_or_redirect(object, redirect = nil)
    respond_with(object) do |format|
      format.html { redirect ? redirect_to(redirect) : redirect_back_or_default }
    end
  end

end

