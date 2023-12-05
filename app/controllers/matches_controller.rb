class MatchesController < ApplicationController
    berfore_action :set_match, only: [:show, :edit, :update, :destroy]

    def index
        @matches = Matche.all 
    end

    def show
       @match
    end 

    def new
        @match = Match.new
    end

    def create 
        @match = Match.new(match params)

        if @match.save
            redirect_to @match, notice: 'Match was successfully created.'
        else
            render :new
        end
    end

    def edit
        @match
    end

    def update
        if @match.update(match_params)
            redirect_to @match, notice: 'Match was succesfully updated.'
        else
            render :edit
        end
    end

    def destroy
        @match.destroy
        redirect_to matches_url, notice: 'Matche was succesfully destroyed.'
    end

    private

    def set_match
        @match = Match.find(params[:id])
    end



end                 
