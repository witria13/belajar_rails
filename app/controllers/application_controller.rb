class ApplicationController < ActionController::Base

	protect_from_forgery with: :exception

	#method hanya bisa diakses dicontroller tidak bisa di view
	#dengan adanya ini maka bisa dipanggil di view application:
	helper_method	:current_user

	#mengambil data user yang login
	def current_user
		if session[:user_id] #jika user_id ada maka
			User.find(session[:user_id]) #kita bisa mengambil user id
		else
			nil	
		end
	end

	#mengecek apakah user sudah login atau belum
	def user_signed_in?
		if current_user
			true
		else
			redirect_to new_session_path, notice: 'Silahkan login terlebih dahulu'
			return false #menghentikan yang kita jalankan / memotong jalnnya reques
		end
	end
end

