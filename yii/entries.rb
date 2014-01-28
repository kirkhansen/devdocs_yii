module Docs
  class Yii
    class EntriesFilter < Docs::EntriesFilter
     
      def get_name
        #class names exist in the <h1> content.
        name = at_css('h1').content.strip
        name
      end

      def get_type
        #need to get the table with a class of summaryTable. Then we need the content of the first td in the first tr.
	    type = css('table.summaryTable td')[0].content
	    type
		
      end
    end
  end
end