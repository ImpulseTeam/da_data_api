class DaDataAPI::Result
    DATA_FIELDS = [
      :postal_code,	# Индекс
      :country,	# Страна
      :region_fias_id, # Код ФИАС региона
      :region_kladr_id,	# Код КЛАДР региона
      :region_with_type, # Регион с типом
      :region_type,	# Тип региона (сокращенный)
      :region_type_full, # Тип региона
      :region, # Регион
      :area_fias_id, # Код ФИАС района в регионе
      :area_kladr_id,	# Код КЛАДР района в регионе
      :area_with_type, # Район в регионе с типом
      :area_type,	# Тип района в регионе (сокращенный)
      :area_type_full, # Тип района в регионе
      :area,	# Район в регионе
      :city_fias_id, # Код ФИАС города
      :city_kladr_id,	# Код КЛАДР города
      :city_with_type, # Город с типом
      :city_type,	# Тип города (сокращенный)
      :city_type_full,	# Тип города
      :city,	# Город
      :city_area,	# Административный округ (только для Москвы)
      :city_district_fias_id,	# Код ФИАС района города
      :city_district_kladr_id, # Код КЛАДР района города
      :city_district_with_type,	# Район города с типом
      :city_district_type, # Тип района города (сокращенный)
      :city_district_type_full,	# Тип района города
      :city_district,	# Район города
      :settlement_fias_id, # Код ФИАС нас. пункта
      :settlement_kladr_id,	# Код КЛАДР нас. пункта
      :settlement_with_type, # Населенный пункт с типом
      :settlement_type,	# Тип населенного пункта (сокращенный)
      :settlement_type_full, # Тип населенного пункта
      :settlement, # Населенный пункт
      :street_fias_id, # Код ФИАС улицы
      :street_kladr_id,	# Код КЛАДР улицы
      :street_with_type, # Улица с типом
      :street_type,	# Тип улицы (сокращенный)
      :street_type_full, # Тип улицы
      :street, # Улица
      :house_fias_id,	# Код ФИАС дома
      :house_kladr_id, # Код КЛАДР дома
      :house_type, # Тип дома (сокращенный)
      :house_type_full,	# Тип дома
      :house,	# Дом
      :block_type, # Тип корпуса/строения (сокращенный)
      :block_type_full,	# Тип корпуса/строения
      :block,	# Корпус/строение
      :flat_type,	# Тип квартиры (сокращенный)
      :flat_type_full, # Тип квартиры
      :flat, # Квартира
      :flat_area,	# Площадь квартиры (не заполняется)
      :square_meter_price, # Рыночная стоимость м² (не заполняется)
      :flat_price, # Рыночная стоимость квартиры (не заполняется)
      :postal_box, # Абонентский ящик
      :history_values, # Исторические наименования объекта с типом (только уникальные)
      :fias_id,	# Код ФИАС
      :fias_code,	# Иерархический код адреса в ФИАС (СС+РРР+ГГГ+ППП+СССС+УУУУ+ДДДД) (не заполняется)
      :fias_level, # Уровень детализации, до которого адрес найден в ФИАС
      :fias_actuality_state, #
      :kladr_id, # Код КЛАДР
      :capital_marker, #
      :okato,	# Код ОКАТО
      :oktmo,	# Код ОКТМО
      :tax_office, # Код ИФНС для физических лиц
      :tax_office_legal, # Код ИФНС для организаций (не заполняется)
      :timezone, # Часовой пояс (не заполняется)
      :geo_lat,	# Координаты: широта
      :geo_lon,	# Координаты: долгота
      :beltway_hit,	# Внутри кольцевой? (не заполняется)
      :beltway_distance, # Расстояние от кольцевой в км (не заполняется)
      :metro, # Ближайшие станции метро (не более 3 станций в радиусе 5 км):
      :qc_geo, # Код точности координат
      :qc_complete, #	Код пригодности к рассылке (не заполняется)
      :qc_house, # Код проверки дома (не заполняется)
      :qc, # Код проверки (не заполняется)
      :source, # Исходный адрес, как его указал человек. Для организаций — адрес как в ЕГРЮЛ.
      :unparsed_parts, # Нераспознанная часть адреса (не заполняется)
    ].freeze
  
    def initialize(data)
      @result = data
    end
  
    DATA_FIELDS.each do |field|
      define_method(field) { @result['data'][field.to_s] }
    end
  
    def value
      @result['value']
    end
  
    def unrestricted_value
      @result['unrestricted_value']
    end
  end
  