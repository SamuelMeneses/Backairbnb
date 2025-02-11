package resources

import (
	"github.com/lib/pq"
	"time"
)

type User struct {
	Email     string    `gorm:"column:email;primaryKey" json:"email" validate:"required,email"`
	Password  *string   `gorm:"column:password" json:"password,omitempty" validate:"omitempty,password"`
	FirstName string    `gorm:"column:first_name" json:"first_name"`
	LastName  string    `gorm:"column:last_name" json:"last_name"`
	Phone     string    `gorm:"column:phone" json:"phone"`
	CreatedAt time.Time `gorm:"column:created_at" json:"created_at"`
	Status    bool      `gorm:"column:status;default:true" json:"status"`
}

type Apartment struct {
	ID            string    `gorm:"column:id;primaryKey" json:"id"`
	Title         string    `gorm:"column:title" json:"title"`
	Description   string    `gorm:"column:description" json:"description"`
	Address       string    `gorm:"column:address" json:"address"`
	City          string    `gorm:"column:city" json:"city"`
	Capacity      int       `gorm:"column:capacity" json:"capacity"`
	PricePerNight float64   `gorm:"column:price_per_night" json:"price_per_night"`
	Amenities     string    `gorm:"column:amenities" json:"amenities"`
	Rules         string    `gorm:"column:rules" json:"rules"`
	Status        string    `gorm:"column:status" json:"status"`
	CreatedAt     time.Time `gorm:"column:created_at" json:"created_at"`
	ImageDefault  string    `gorm:"column:image_default" json:"image_default"`
}

type ApartmentImage struct {
	ID          uint   `gorm:"column:id;primaryKey;autoIncrement" json:"id"`
	ApartmentID string `gorm:"column:apartment_id" json:"apartment_id"`
	URL         string `gorm:"column:url" json:"url"`
	Order       int    `gorm:"column:order" json:"order"`
}

type Booking struct {
	ID          string    `gorm:"column:id;primaryKey" json:"id"`
	UserID      string    `gorm:"column:user_id" json:"user_id"`
	ApartmentID string    `gorm:"column:apartment_id" json:"apartment_id"`
	StartDate   time.Time `gorm:"column:start_date" json:"start_date"`
	EndDate     time.Time `gorm:"column:end_date" json:"end_date"`
	TotalPrice  float64   `gorm:"column:total_price" json:"total_price"`
	Status      string    `gorm:"column:status" json:"status"`
	CreatedAt   time.Time `gorm:"column:created_at" json:"created_at"`
}

type Payment struct {
	ID            string  `gorm:"column:id" json:"id"`
	BookingID     string  `gorm:"column:booking_id" json:"booking_id"`
	UserID        string  `gorm:"column:user_id" json:"user_id"`
	Amount        float64 `gorm:"column:amount" json:"amount"`
	PaymentMethod string  `gorm:"column:payment_method" json:"payment_method"`
	Status        string  `gorm:"column:status" json:"status"`
}

type City struct {
	ID       int    `gorm:"autoIncrement" json:"id"`
	CityName string `gorm:"primaryKey;unique;not null" json:"city_name"`
}

type ApartmentInfo struct {
	ID            string          `gorm:"column:id;primaryKey" json:"id"`
	Title         string          `gorm:"column:title" json:"title"`
	Description   string          `gorm:"column:description" json:"description"`
	Address       string          `gorm:"column:address" json:"address"`
	City          string          `gorm:"column:city" json:"city"`
	Capacity      int             `gorm:"column:capacity" json:"capacity"`
	PricePerNight float64         `gorm:"column:price_per_night" json:"price_per_night"`
	Amenities     string          `gorm:"column:amenities" json:"amenities"`
	Rules         string          `gorm:"column:rules" json:"rules"`
	Status        string          `gorm:"column:status" json:"status"`
	CreatedAt     time.Time       `gorm:"column:created_at" json:"created_at"`
	ImageDefault  string          `gorm:"column:image_default" json:"image_default"`
	URL           *pq.StringArray `gorm:"column:imagenes" json:"url"`
}
