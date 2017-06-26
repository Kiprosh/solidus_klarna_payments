module KlarnaGateway
  module AmountCalculators::US
    class LineItemCalculator
      def adjust_with(line_item)
        yield().merge({
          total_tax_amount: 0,
          tax_rate: 0
        })
      end
    end
  end
end
