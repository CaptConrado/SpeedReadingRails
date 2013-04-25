module QuizzesHelper

	avg_wpm_prose = 300
	avg_wpm_scren = 180
	your_avg_wpm = 0

	def wpm_calc(min,sec,word_count)
		word_count = word_count.to_f
		min = min.to_i
		sec = sec.to_i 
		min_sec = min*60
		total_seconds = sec + min_sec
		wpm = word_count/total_seconds*60
		return wpm.to_i
	end

	def time_now
		time = Time.now().strftime("%H:%M:%S")
	end

	def time_quant(wpm,word_count)
		sec = word_count/wpm.to_f*60
		time = Time.at(sec).strftime("%M:%S")
	end

	def word_count
		self.body.scan(/\w+/).size
	end

	def letter_count
		self.body.scan(/./).size
	end

	
end
