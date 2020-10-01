class User < ApplicationRecord
	has_one	:dompet #artinya user punya 1 dompet (harus sama dengan nama class dengan huruf kecil)

	has_secure_password
end