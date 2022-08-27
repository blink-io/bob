package psql

import (
	"github.com/stephenafamo/bob/dialect/psql/dialect"
	"github.com/stephenafamo/bob/expr"
)

type Expression = dialect.Expression

//nolint:gochecknoglobals
var bmod = expr.Builder[Expression, Expression]{}

func F(name string, args ...any) *dialect.Function {
	f := dialect.NewFunction(name, args...)

	// We have embedded the same function as the chain base
	// this is so that chained methods can also be used by functions
	f.Chain.Base = &f

	return &f
}

func S(s string) Expression {
	return bmod.S(s)
}

func X(exp any, others ...any) Expression {
	return bmod.X(exp, others...)
}

func Not(exp any) Expression {
	return bmod.Not(exp)
}

func Or(args ...any) Expression {
	return bmod.Or(args...)
}

func And(args ...any) Expression {
	return bmod.And(args...)
}

func Concat(args ...any) Expression {
	return bmod.Concat(args...)
}

func Arg(args ...any) Expression {
	return bmod.Arg(args...)
}

func P(exp any) Expression {
	return bmod.P(exp)
}

func Placeholder(n uint) Expression {
	return bmod.Placeholder(n)
}

func Raw(query string, args ...any) Expression {
	return bmod.Raw(query, args...)
}

func Group(exps ...any) Expression {
	return bmod.Group(exps...)
}

func Quote(ss ...string) Expression {
	return bmod.Quote(ss...)
}
