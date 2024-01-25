# My custom extension for gen, for personal use.

## struct tag configuration

### Struct tag with name and options
```go
// Example 1
type User struct {
	Name string `bun:"name,notnull,unique"`
}

```

### Struct tag without name
```go
type User struct {
	ID int64 `db:"id,pk" goqu:skipinsert`
	CreatedAt time.Time `db:"" goqu:"skipupdate"`
}
```

## Model with embedded struct

### Example like bun
```go
// Example 1, embedded struct with struct tags
type User struct {
	bun.BaseModel `bun:"groups,alias:groups" db:"-", json:"-"`
	Name string `bun:"name"`
}

// Example 2, embedded struct with no tags
type User struct {
	model.MixinModel
	Name string `bun:"name,notnull,unique"`
}
```

## Import external template files

## Model with specified methods

### Model with 'Table() string' method

### Model With 'TableName() string' method