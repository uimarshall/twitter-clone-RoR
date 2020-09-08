class RegistrationsController < Devise::RegistrationsController
    private
    # Parameters needed for sign up
    def sign_up_params
        params.require(:user).permit(:name, :username, :email, :password, :password_conformation)
    end
    # params for acct update -- current_password(to ensure you enter ur pw during update)
    def account_update_params
        params.require(:user).permit(:name, :username, :email, :password, :password_conformation, :current_password)
    end
end