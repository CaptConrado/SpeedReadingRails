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

	def start_at

	end

	def finished_at
	end

	def time_quant(wpm,word_count)
		sec = word_count/wpm.to_f*60
		time = Time.at(sec).strftime("%M:%S")
	end

	def compare(current_wpm,nat_wpm)
		you = current_wpm.to_f
		them = nat_wpm.to_f
		k = you/them*100
		k = k.to_i
		return k
	end

	# 
	# button "start" do
	# 	@time = Time.now
	# 	@label.replace "Started at #{@time.strftime '%l:%M:%S %p'}"
	# end

	# button "stop" do
	# 	@label.replace "Stopped, ", strong("#{Time.now - @time}"),
	# 	" seconds elapsed."
	# end 
	
end


