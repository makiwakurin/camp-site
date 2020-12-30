class Status <  ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: 'オートキャンプ' },
    { id: 2, name: '車乗り入れ不可' },
    { id: 3, name: 'ロッジ' },
    { id: 4, name: 'バンガロー' },
    { id: 5, name: 'キャビン' },
    { id: 6, name: '区画サイト' },
    { id: 7, name: 'フリーサイト' },
    { id: 8, name: 'フリーサイト、区画共に有り' },
    { id: 9, name: 'グランピング（手ぶらOK)' },
    { id: 10, name: 'フリー、区画サイト、バンガロー有り（オートキャンプ)' },
    { id: 11, name: 'フリー、区画サイト、バンガロー有り（オートキャンプ不可)' }
  ]
  
  include ActiveHash::Associations
  has_many :campsites
end
