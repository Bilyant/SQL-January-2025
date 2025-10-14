ALTER TABLE
	minions_info
ADD CONSTRAINT
	unique_containt
UNIQUE (
	"id",
	"email"
)
;

-- ADD CONSTRAINT UQ_id_email

ALTER TABLE
	minions_info
ADD CONSTRAINT
	banana_check
CHECK (banana > 0)
;

-- ADD CONSTRAINT CK_banana_is_positive
