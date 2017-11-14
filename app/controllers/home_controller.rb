class HomeController < ApplicationController

    def index

        @sentences = Sentence.all
        
        example_sentence = Sentence.new()
        example_sentence.review_id = 1
        example_sentence.sentence_content = "analyze?version=2017-02-27&text=I%20still%20have%20a%20dream%2C%20a%20dream%20deeply%20rooted%20in%20the%20American%20dream%20%E2%80%93%20one%20day%20this%20nation%20will%20rise%20up%20and%20live%20up%20to%20its%20creed%2C%20%22We%20hold%20these%20truths%20to%20be%20self%20evident%3A%20that%20all%20men%20are%20created%20equal.&features=sentiment,keywords"
        example_sentence.sentiment_label = "positive"
        example_sentence.sentiment_score = 0.123

        # ar = AnalysisResult.new
        # ar.run_api_analysis(1)
        # @sentiment_score = ar.sentiment_score
        # ar.save!

        sentence_analyzer = Analyzer.new(example_sentence)
        results = sentence_analyzer.run_api_analysis()
        # example_sentence.save!

    end
    
end