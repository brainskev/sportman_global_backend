class MatchesController < ApplicationController
    berfore_action :set_match, only: [:show, :edit, :update, :destroy]

    def index
        @matches = Matche.all 
    end
end
