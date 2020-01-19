class UsersController < ApplicationController
  def show
    myvotes = Vote.all.select { |vote| vote.user == current_user }
    confirmedvotes = myvotes.select { |vote| vote.event_date.confirmed == true }
    @myevents = confirmedvotes.map { |vote| vote.event_date.event }.uniq.sort_by! { |ev| ev.confirmed_date.date }
    @todayevs = @myevents.select { |ev| ev.confirmed_date.date == Date.today }
    @tomorrowevs = @myevents.select { |ev| ev.confirmed_date.date == Date.tomorrow }
    weekdyys = @myevents.reject { |ev| ev.confirmed_date.date == Date.today }
    weekdays = weekdyys.reject { |ev| ev.confirmed_date.date == Date.tomorrow }
    @weekevs = weekdays.select { |ev| ev.confirmed_date.date > Date.today && ev.confirmed_date.date - Date.today < 8 }
    @restofevs = @myevents.select { |ev| ev.confirmed_date.date - Date.today > 7 }
    @pastevs = @myevents.select { |ev| ev.confirmed_date.date - Date.today < 0 }
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to groups_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :photo)
  end
end
