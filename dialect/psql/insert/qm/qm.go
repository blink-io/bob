package qm

import (
	"github.com/stephenafamo/bob"
	"github.com/stephenafamo/bob/clause"
	"github.com/stephenafamo/bob/dialect/psql"
	"github.com/stephenafamo/bob/dialect/psql/dialect"
	"github.com/stephenafamo/bob/mods"
)

func With(name string, columns ...string) dialect.CTEChain[*psql.InsertQuery] {
	return dialect.With[*psql.InsertQuery](name, columns...)
}

func Recursive(r bool) bob.Mod[*psql.SelectQuery] {
	return mods.Recursive[*psql.SelectQuery](r)
}

func Into(name any, columns ...string) bob.Mod[*psql.InsertQuery] {
	return mods.QueryModFunc[*psql.InsertQuery](func(i *psql.InsertQuery) {
		i.Table = clause.Table{
			Expression: name,
			Columns:    columns,
		}
	})
}

func IntoAs(name any, alias string, columns ...string) bob.Mod[*psql.InsertQuery] {
	return mods.QueryModFunc[*psql.InsertQuery](func(i *psql.InsertQuery) {
		i.Table = clause.Table{
			Expression: name,
			Alias:      alias,
			Columns:    columns,
		}
	})
}

func OverridingSystem() bob.Mod[*psql.InsertQuery] {
	return mods.QueryModFunc[*psql.InsertQuery](func(i *psql.InsertQuery) {
		i.Overriding = "SYSTEM"
	})
}

func OverridingUser() bob.Mod[*psql.InsertQuery] {
	return mods.QueryModFunc[*psql.InsertQuery](func(i *psql.InsertQuery) {
		i.Overriding = "USER"
	})
}

func Values(clauses ...any) bob.Mod[*psql.InsertQuery] {
	return mods.Values[*psql.InsertQuery](clauses)
}

func Rows(rows ...[]any) bob.Mod[*psql.InsertQuery] {
	return mods.Rows[*psql.InsertQuery](rows)
}

// Insert from a query
func Query(q bob.Query) bob.Mod[*psql.InsertQuery] {
	return mods.QueryModFunc[*psql.InsertQuery](func(i *psql.InsertQuery) {
		i.Query = q
	})
}

// The column to target. Will auto add brackets
func OnConflict(columns ...any) mods.Conflict[*psql.InsertQuery] {
	return mods.Conflict[*psql.InsertQuery](func() clause.Conflict {
		return clause.Conflict{
			Target: clause.ConflictTarget{
				Columns: columns,
			},
		}
	})
}

func OnConflictOnConstraint(constraint string) mods.Conflict[*psql.InsertQuery] {
	return mods.Conflict[*psql.InsertQuery](func() clause.Conflict {
		return clause.Conflict{
			Target: clause.ConflictTarget{
				Constraint: constraint,
			},
		}
	})
}

func Returning(clauses ...any) bob.Mod[*psql.InsertQuery] {
	return mods.Returning[*psql.InsertQuery](clauses)
}
