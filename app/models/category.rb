class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'オートキャンプ' },
    { id: 3, name: '車乗り入れ不可' },
    { id: 4, name: 'ロッジ' },
    { id: 5, name: 'バンガロー' },
    { id: 6, name: 'キャビン' },
    { id: 7, name: '区画サイト' },
    { id: 8, name: 'フリーサイト' },
    { id: 9, name: 'フリーサイト、区画共に有り' },
    { id: 10, name: 'グランピング（手ぶらOK)' },
    { id: 11, name: 'フリー、区画サイト、バンガロー有り（オートキャンプ)' },
    { id: 12, name: 'フリー、区画サイト、バンガロー有り（オートキャンプ不可)' }
  ]

  include ActiveHash::Associations
  has_many :campsites
  end