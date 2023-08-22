class Property < ApplicationRecord
        enum property_type: { departamento: "Departamento", casa: "Casa" }
end
