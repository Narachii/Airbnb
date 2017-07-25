# Data Base

---
## Users
---
|Column  | Type  |Options|
|:----:  |:----: |:-----:|
|first_name|string |null false|
|last_name|string |null false|
|birthday_month|integer|null false|
|birthday_day|integer|null false|
|birthday_year|integer|null false|
|image|text |-|
|gender|string|-|
|Phone number|integer|-|
|language|string|-|
|currency|string||
|location|text|-|
|text|text|-|
|latitude |float |-|
|longitude|float|-|

### Association
 - belongs_to :host
 - has_many :user_reviews
 - has_many :host_reviews
 - has_many :Reviews
 - has_many :books
 
## Hosts
 ---
|Column  | Type  |Options|
|:----:  |:----: |:-----:|
|user_id  |string |null false,foreign_key :true|

### Association
- belongs_to :User
- has_many :host_comments
- has_many :rooms
- has_many :experiences

## User_reviews
---
|Column  | Type  |Options|
|:----:  |:----: |:-----:|
|user_id  |integer |null false,foreign_key :true|
|host_id  |integer |null false, foreign_key :true|
|text     |text    |null false|


### Association
- belongs_to :user
- belongs_to :host

## Host_reiews
---
|Column  | Type  |Options|
|:----:  |:----: |:-----:|
|user_id |integer |null false,foreign_key :true|
|host_id |integer |null false,foreign_key :true|
|text    |text    |null false|

### Association
- belongs_to :user
- belongs_to :host

## Bookings
---
|Column  | Type  |Options|
|:----:  |:----: |:-----:|
|user_id |integer |null false,foreign_key :true|
|room_id |integer |null false,foreign_key :true|
|guest_numbers|integer|null false|
|check_in|date    |null false|
|check_out|date   |null false|

### Association
- belongs_to :user
- belongs_to :room
- belongs_to :experience


## Rooms
---
|Column  | Type  |Options|
|:----:  |:----: |:-----:|
|host_id |integer |null false,foreign_key :true|
|name|string|null false|
|image|text|null false|
|price|integer|null false|
|availability|integer|-|
|location|text|null false|
|latitude |float |-|
|longitude|float|-|

### Associations
- belongs_to :host
- belongs_to :detail
- has_many :reviews

## details
|Column  | Type  |Options|
|:----:  |:----: |:-----:|
|room_id |integer |null false,foreign_key :true|
|accomodate|integer|null false|
|bathrooms|integer|null false|
|Bed rooms|integer|null false|
|Beds     |integer|null false|
|property-type|string|null false|
|Extra-people-price|integer|-|
|weekly-discount|integer|-|
|cleaning-fee|integer|-|

### Association
- belongs_to :room


## experiences
---
|Column  | Type  |Options|
|:----:  |:----: |:-----:|
|host_id |integer |null false,foreign_key :true|
|name|string|null false|
|image|text|null false|
|movie|text|-|
|hours|integer|null false|
|offer|text|null false|
|language|string|null false|
|price|integer|null false|
|availability|integer|-|
|host_text|text|-|
|provision|text|-|
|notes|text|-|
|plan|text|-|
|place|text|-|
|availability|date|-|
|location|text|null false|
|latitude |float |-|
|longitude|float|-|

### Associations
- belongs_to :host
- belongs_to :book
- has_many :reviews
