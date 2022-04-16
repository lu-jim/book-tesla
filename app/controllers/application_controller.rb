class ApplicationController < ActionController::API
<<<<<<< HEAD
  include Response
  include ExceptionHandler
=======
  include ActionController::MimeResponds
  :respond_to => json
>>>>>>> dev
end
