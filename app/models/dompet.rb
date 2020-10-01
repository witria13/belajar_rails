class Dompet < ApplicationRecord
	belongs_to	:user  #dompet dimiliki user
	#yang mempunyai fk yang  ada tulisan belongs_tonya
end