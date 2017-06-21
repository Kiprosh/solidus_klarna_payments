module KlarnaGateway
  module AmountCalculators::US
    class LineItemCalculator
      def adjust_with(line_item)
        yield().merge({
          total_tax_amount: 0,
          tax_rate: 0
          # unit_price: unit_price(line_item),
          # total_amount: total_amount(line_item)
        })
      end

      private

      def unit_price(line_item)
        # line_item.display_price.cents
        (line_item.display_amount.cents / line_item.quantity) + line_item_tax_rate
      end

      def total_amount(line_item)
        # unit_price(line_item) * line_item.quantity
        line_item.display_amount.cents
      end
    end
  end
end
