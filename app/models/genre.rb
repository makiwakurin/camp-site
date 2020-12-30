class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'お風呂、シャワー有り' },
    { id: 3, name: '温泉施設有り' },
  ]

  include ActiveHash::Associations
  has_many :campsites
  
  end