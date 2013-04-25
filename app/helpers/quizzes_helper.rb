module QuizzesHelper

	def wpm_calc(min,sec,word_count)
		word_count = word_count.to_f
		min = min.to_i
		sec = sec.to_i 
		min_sec = min*60
		total_seconds = sec + min_sec
		wpm = word_count/total_seconds*60
		return wpm.to_i
	end

	def time_quant(wpm,word_count)
		sec = word_count/wpm.to_f*60
		time = Time.at(sec).strftime("%M:%S")
	end

	
	

	

	


	
end
