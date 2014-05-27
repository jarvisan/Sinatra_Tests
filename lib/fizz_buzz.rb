require 'json'

class FizzBuzz

	def fizzbuzz(num, format)
		num = num.to_i
		ary = Array.new
		for i in 1..num
			(ary[i-1] = checks(i))
		end	

		out = Output.new

		if(format == "html")
			out.html(ary)
		elsif(format === "json")
			out.json(ary)
		else 
			out.plain(ary)
		end	
	end

	def checks(i)
		if(i % 3 == 0 && i % 5 == 0)
			"FizzBuzz"
		elsif (i % 3 == 0)
			"Fizz"
		elsif (i % 5 == 0)
			"Buzz"
		else
			i	
		end
	end
end

class Output

	def plain(ary)
		ary.join(", ")
	end

	def json(ary)
		ary.to_json
	end

	def html(ary)
		<<-EOF
			#{ary.map { |d| "<li>#{d}</li>"}.join("\n\t")}
		EOF
	end
end
