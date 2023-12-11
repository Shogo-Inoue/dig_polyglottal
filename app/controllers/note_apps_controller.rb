class NoteAppsController < ApplicationController
    def index
        @noteTexts=NoteApp.all #ここで変数noteTextにDBのテーブルのnoteTexが読めるはず
      
      end

      def show
        @noteText = NoteApp.find(params[:id])
      end
      def new
        # @noteText = NoteApp.new
        @noteTextCard = NoteApp.new
      end
    
      def create
        @noteTextCard = NoteApp.new(note_params)
        @note_apps=NoteApp
        if @noteTextCard.save
            redirect_to @note_apps
  
        else
          render :new, status: :unprocessable_entity
        end
      end

      def edit
        @note_app = NoteApp.find(params[:id])
        @noteTextCard = NoteApp.find(params[:id])
      end
    
      def update
        @note_app = NoteApp.find(params[:id])
        @note_apps= NoteApp

        if @note_app.update(note_params)
          redirect_to @note_apps
        else
          render :edit, status: :unprocessable_entity
        end
      end

      def destroy
        @note_app = NoteApp.find(params[:id])
        @note_app.destroy
    
        redirect_to root_path, status: :see_other
      end
      private
        def note_params
          params.require(:note_app).permit(:noteText)
        end
end
