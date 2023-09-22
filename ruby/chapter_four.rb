require 'pry'
require_relative 'utils.rb'

puts 'say ain\'t so !'

puts "I have a tab \t aaa and \nand a newline"

super_puts 'using delimiters for special characters'

puts 'this is the same'
puts '"Stop", she said, "I can\'t live without \'s and "s."'
puts 'as'
puts %q{"Stop using %q", ""she said, "I can't live without 's and "s."}

super_puts 'different delimiters after %q - any special character can be used here'

puts %q("Stop", she said, "I can't live without 's and "s.")
puts %q@"Stop", she said, "I can't live without 's and "s."@

super_puts 'using multilines string'

texto = <<EOF
  some text goes here
  second line
  third line
EOF

puts texto

long_text = %q{some long line goes here}

puts long_text

def html_escape(s)
  s.to_s.gsub(/&/, "&amp;").gsub(/\"/, "&quot;").
    gsub(/>/, "&gt;").gsub(/</, "&lt;")
end

some_html = %q{<div class="next-table-cell-wrapper"><div class="table-item"><span class="line-primary text-weight-medium" data-spm-anchor-id="a2756.order-detail-ta-ta-b.0.i4.1acd2fc2JWZg6x">USD 307.00</span><br><span class="line-secondary"><span data-i18n-appname="trade-biz" data-i18n-key="bc_trade_fund_map.payment_record.table_val.amount.ADVANCE">for Initial Payment</span></span></div></div>}
puts some_html
puts html_escape some_html
