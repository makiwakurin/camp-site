class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: 'camp style' },
    { id: 2, name: 'オートキャンプ' },
    { id: 3, name: 'オートキャンプ不可' },
    { id: 4, name: '首都圏近郊' },
    { id: 5, name: 'ファミリー向け' }
  ]

  include ActiveHash::Associations
  has_many :Campsites
  
  end