class RegistrationsController < Devise::RegistrationsController
        private

        def sign_up_params
            #requireメソッドがデータのオブジェクト名を定め、
            #permitメソッドで変更を加えられる（保存処理ができる）キーを指定
            params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)        
        end

        def acount_update_params
            params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :current_password)
        end
end