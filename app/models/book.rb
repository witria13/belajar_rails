class Book < ApplicationRecord
	belongs_to :author #buku punya author

	#memanggil validasi
	validates	:title, presence: {message: 'Judul Harus Diisi'}
	#LENGTH
	validates	:about, length: {minimum: 10, message: 'minimal harus 10 karakter'}
	#validates	:about, length: {maximum: 10}
	#validates	:about, length: {in: 5..20}
	#validates	:about, length: { is: 5 }

	#NUMERICALITY
	#validates	:page, numericality: true #tidak boleh huruf
	#validates	:page, numericality: {greater_than: 10} #harus angka + lebih dari 10
	#validates	:page, numericality: {greater_than_or_equal_to: 10} #harus angka + lebih dari sama dengan 10
	#validates	:page, numericality: {less_than: 1000} #harus angka + maksimal 1000
	#validates	:page, numericality: {equal_to: 1000} #harus angka + maksimal 1000
	#validates	:page, numericality: {more_than: 10, message: 'minimal jumlah halaman 10'} #lebih besar dari

	#INCLUSION  : memvalidasi nilai atribut harus = salah satu yang di definisikan
	#validates 	:about, inclusion: {in: ['good', 'bad', 'enough']}

	#INCLUSION  : memvalidasi nilai atribut Tidak boleh = salah satu yang di definisikan
	#validates 	:about, exclusion: {in: ['good', 'bad', 'enough']}

	#FORMAT 	: Untuk menentukan suatu format dari nilai yg kita punya apakah lolos/tidak, bantuan regex
	#regex 		: karakter aneh
	#validates 	:title, format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i}
	#validates	:price, format: {in: /[0-9]/}

	#UNIQUENESS : Mengecek apakah suatu nilai / kolom sudah ada didatabase atau belum contoh usernamenya harus uniq
	#validates	:title, uniqueness: true
	#validates	:title, uniqueness: {case_sensitive: false} #huruf besar/kecil dianggap sama

	#validate 	:custom_validation

	#validates	:price, numericality: {greater_than_or_equal_to: 150000}, if: :page_more_than_300

	#def page_more_than_300
	#	page >= 300
	#end

	#validates	:page, numericality: {less_than: 10}, if: :price_less_than_15000

	#def price_less_than_15000
	#	price <= 15000
	#end

	#PROC
	#validates	:about, length: {minimum: 20}, if: Proc.new {|b| b.page >=300}

	#def custom_validation
	#	if page >= 300
	#		if price < 100000
	#			errors.add(:price, 'harga minimal  100rb jika jumlah halaman 300 atau lebih')
	#		end
	#	end
	#end

	def self.expensive
		where('price > 25000')
	end

	def self.price_equal_more(price)
		where('price >= ? ', price)
	end
end
