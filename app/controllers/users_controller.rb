class UsersController < ApplicationController
    before_action :set_user, only: %i[show update destroy update_photo destroy_photo]

    def index
        @users = User.all
        @app_state = AppState.first
    end
    
    def show; end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to @user, notice: "Kullanıcı başarılı bir şekilde oluşturuldu."
        else
            redirect_to root_path, alert: "Kullanıcı oluşturulamadı! Lütfen tekrar deneyin : #{@user.format_error_messages}"
        end
    end

    def update
        if @user.update(user_params)
            redirect_to @user, notice: "Kullanıcı başarılı bir şekilde güncellendi."
        else
            redirect_to @user, alert: "Kullanıcı güncellenemedi! Lütfen tekrar deneyin : #{@user.format_error_messages}" 
        end
    end

    def destroy
        if @user.destroy
            redirect_to root_path, notice: "Kullanıcı başarılı bir şekilde silindi."
        else
            redirect_to @user, alert: "Kullanıcı silinemedi! Lütfen tekrar deneyin."
        end
    end

    def update_photo
        if @user.update(photo: user_params[:photo])
            redirect_to @user, notice: "Fotoğraf başarılı bir şekilde kaydedildi."
        else
            redirect_to @user, alert: "Fotoğraf kaydedilemedi! Lütfen tekrar deneyin."
        end
    end

    def destroy_photo
        if @user.delete_photo
            redirect_to @user, notice: "Fotoğraf başarılı bir şekilde silindi."
        else
            redirect_to @user, alert: "Fotoğraf başarılı bir şekilde silindi."
        end
    end

    def search
        @users = User.where("LOWER(username) LIKE ?", "%#{params[:username].downcase}%")
    end

    private
        def set_user
            @user = User.find(params[:id])
        end

        def user_params
            params
                .require(:user)
                .permit(
                    :name,
                    :username,
                    :email,
                    :phone,
                    :website,
                    :address_street,
                    :address_suite,
                    :address_city,
                    :address_zipcode,
                    :address_geo_lat,
                    :address_geo_lng,
                    :company_name,
                    :company_catch_phrase,
                    :company_bs,
                    :photo
                )
        end
end
