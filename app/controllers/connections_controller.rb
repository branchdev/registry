class ConnectionsController < ApplicationController

	def connection_request
		# if current_user.meta_type == "Teacher" ? artist_id = current_user.meta_id : teacher_id = current_user.meta_id
		# if artist_id ? teacher_id = params[:id] : artist_id = params[:id] 

		if current_user.meta_type == "Teacher"
			artist_id = params[:id]
			waiter = 'artist'
			teacher_id = current_user.meta_id

		else
			artist_id = current_user.meta_id
			teacher_id = params[:id]
			waiter = 'teacher'
		end


		connection = Connection.create(artist_id: artist_id, teacher_id: teacher_id, status: waiter)
		redirect_to :back
	end

	def update
		# if current_user.meta_type == "Teacher" ? artist_id = current_user.meta_id : teacher_id = current_user.meta_id
		# if artist_id ? teacher_id = params[:id] : artist_id = params[:id]



		connection = Connection.where(id: params[:id]).first
		connection.update_attributes(status: 'accepted')

		redirect_to :back
	end

	def destroy
		connection = Connection.where(id: params[:id]).first
		connection.destroy

		redirect_to :back
	end



end