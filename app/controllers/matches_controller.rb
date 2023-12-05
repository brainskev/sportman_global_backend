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
