module SimpsonsHelper

	def char_params
		params.require(:simpson).permit(:fname, :lname, :occupation)
	end
end
