class Api::V1::ListController < ApiController
    def index
        @lists = List.all                           
    end

    def create
        params_list = params.require(:list).permit(:name)
        List.create(params_list)
        render status: :created
    end
    
end
