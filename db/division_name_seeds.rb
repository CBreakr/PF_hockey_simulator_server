
def addDivisionNames
    puts "divisions"
    
    divisions = ["Gretzky",
        "Lemieux",
        "Howe",
        "Orr",
        "Hasek",
        "Jagr",
        "Lidstrom",
        "Ovechkin",
        "Crosby",
        "Yzerman",
        "Sakic",
        "Brodeur",
        "Lafleur",
        "Borque",
        "Béliveau",
        "Hull",
        "Esposito",
        "Dionne",
        "Sawchuk",
        "Ross"
    ]

    divisions.each do |div|
        SampleDivisionName.create(name: div)
    end
end

=begin
  
=end