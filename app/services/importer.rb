class Importer

  def self.import(file_contents)
    return unless file_contents

    data = parse(file_contents)
    save_data(data)
  end

  def self.save_data(data)
    import_total = data.map {|s| s[:item_price].to_f * s[:purchase_count].to_i }.reduce(0, :+)
    file_import  = FileImport.create( total: import_total)

    data.each do |d|

      customer = Customer.where(
          name: d[:purchaser_name]).first_or_create
      merchant = Merchant.where(
          address: d[:merchant_address],
          name: d[:merchant_name]).first_or_create
      item = Item.where(
          description: d[:item_description],
          price: d[:item_price],
          merchant_id: merchant.id).first_or_create

      Purchase.create!(
          file_import_id: file_import.id,
          customer_id: customer.id,
          item_id: item.id,
          count: d[:purchase_count]
      )
    end
  end

  def self.parse(file_contents)
    columns = [:purchaser_name, :item_description, :item_price, :purchase_count, :merchant_address, :merchant_name]
    data = []
    rows = file_contents.split(/\r?\n/).drop(1)
    rows.each do |r|
      data << Hash[*columns.zip(r.split(/\t/)).flatten]
    end
    data
  end
end