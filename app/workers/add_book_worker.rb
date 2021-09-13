class AddBookWorker
    include Sidekiq::Worker

    def perform(name, author)
        p "Hey there! new book named #{name} from author #{author} is added!"
    end
end