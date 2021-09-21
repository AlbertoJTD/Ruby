class ArticlesController < ApplicationController
    
    #before_action -> Es una accion que se ejecutara antes de ir a alguno de los metodos definidos
    before_action :find_article, only: [:show,:edit,:update,:destroy] #Forma 1
    #before_action :find_article, except: [:new,:create] #Forma 2
    
    before_action :authenticate_user!, only: [:new,:create,:edit,:update,:destroy]

    #after_action -> se ejecuta despues de los metodos

    def index
        @articles = Article.all #Obtener todos los registros
    end

    def show
        #@article = Article.find(params[:id]) #Recibir el id del articulo a mostrar
    end

    def edit
        #@article = Article.find(params[:id])
        @categories = Category.all
    end

    def update
        #@article = Article.find(params[:id]) #Buscar el articulo
        @article.update(article_params) #ACTUALIZAR EL REGITSRO
        
        redirect_to @article #Redireccinar hacia el articulo
    end

    def new
        @article = Article.new
        @categories = Category.all
    end

    def create
        #Se usa article porque en la vista estamos usando un objeto llamado asi
        #@article=current_user.articles.create(title: params[:article][:title], content: params[:article][:content]) #Recibir el parametro del control y crear un articulo

        @article = current_user.articles.create(article_params)

        #render json:@article #Mostrar el contenido del articulo creado 
        redirect_to @article
    end

    def destroy
        @article = Article.find(params[:id]) #Buscar el articulo
        @article.destroy #Eliminar el articulo

        redirect_to root_path
    end

    def from_author
        @user = User.find(params[:user_id])
    end

    def find_article
        #Variable de clase
        @article = Article.find(params[:id])
        puts "eSTOY EN FIND ARTICLE"
    end

    #Parametros fuertes -> solo aceptar los valores indicados
    def article_params
        params.require(:article).permit(:title,:content,category_elements: [])
    end
end
