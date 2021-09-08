class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :update, :destroy]
  before_action :set_country, only: [:listbycountry, :listbyall]
  before_action :set_project, only: [:listbyproject, :listbyall]
  before_action :set_role, only: [:listbyrole, :listbyall]
  
  # GET /people
  def index
    @people = Person.all

    render json: @people
  end

  # GET /people/bycountry/1
  def listbycountry
    @people = Person.live_in_country(@country).all
    render json: @people
  end

  def listbyproject
    @people = Person.works_in_project(@project).all
    render json: @people
  end
  
  def listbyrole
    @people = Person.has_the_role(@role).all
    render json: @people
  end  

  def listbyall
    @people = Person.has_all_tags(@country, @role, @project).all
    render json: @people
  end

  # GET /people/1
  def show
    render json: @person
  end

 # GET /people/employees/1
  def employees
    @people = Person.where("employee = TRUE")
    render json: @people
  end

  # GET /people/clients/1
  def clients
     @people = Person.where("client = TRUE")
     render json: @people
  end

  # POST /people
  def create
    @person = Person.new(person_params)

    if @person.save
      render json: @person, status: :created, location: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /people/1
  def update
    if @person.update(person_params)
      render json: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # DELETE /people/1
  def destroy
    @person.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end


    def set_country
      @country = Country.find(params[:country_id])
    end

    def set_project
      @project = Project.find(params[:project_id])
    end    

    def set_role
      @role = Role.find(params[:role_id])
    end    


    # Only allow a list of trusted parameters through.
    def person_params
      params.require(:person).permit(:firstname, :lastname, :adress, :email, :employee, :client, :country_id, :project_id, :role_id)
    end




end
