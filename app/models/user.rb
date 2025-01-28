class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :cars, dependent: :destroy #追記 ユーザーが削除されたら、ツイートも削除されるようになります。すでに書いてある場合は追記しなくて大丈夫です。
         has_many :likes, dependent: :destroy
         has_many :liked_cars, through: :likes, source: :car
         has_many :comments, dependent: :destroy
        def already_liked?(car)
          self.likes.exists?(car_id: car.id)
        end
         validates :name, presence: true #追記
         validates :profile, length: { maximum: 200 }
end
