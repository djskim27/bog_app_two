class CreaturesController < ApplicationController
        def index
            @creatures = Creature.all
        end
        def show 
            @creature = Creature.find(params[:id])
        end
        def new
            @creature = Creature.new
        end
        
        def create
        
            @creature = Creature.create!(creature_params)
            redirect_to root_path
        
        end
    
        def edit
            @creature = Creature.find(params[:id])
        end
    
        def update
            @creature = Creature.find(params[:id])
            @creature.update creature_params 
    
            redirect_to creature_path(@creature)
        end
    
        def destroy
            @creature = Creature.find(params[:id])
            @creature.destroy
            redirect_to root_path
        end
    
    
        private
        def creature_params
        creature = params.require(:creature).permit(:name, :description)
    
    
        end
    
end
