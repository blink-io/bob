module github.com/stephenafamo/bob

go 1.21

toolchain go1.21.6

require (
	ariga.io/atlas v0.18.0
	github.com/DATA-DOG/go-txdb v0.1.8
	github.com/Masterminds/sprig/v3 v3.2.3
	github.com/aarondl/opt v0.0.0-20240108180805-338d04d857dc
	github.com/antlr/antlr4/runtime/Go/antlr/v4 v4.0.0-20230321174746-8dcc6526cfb1
	github.com/go-sql-driver/mysql v1.7.1
	github.com/google/go-cmp v0.6.0
	github.com/hashicorp/hcl/v2 v2.10.0
	github.com/iancoleman/strcase v0.3.0
	github.com/jackc/pgx/v5 v5.5.2
	github.com/knadh/koanf v1.5.0
	github.com/lib/pq v1.10.9
	github.com/nsf/jsondiff v0.0.0-20230430225905-43f6cf3098c1
	github.com/qdm12/reprint v0.0.0-20200326205758-722754a53494
	github.com/stephenafamo/scan v0.5.0
	github.com/stephenafamo/sqlparser v0.0.0-20230326220333-c2adaf4c30e8
	github.com/takuoki/gocase v1.1.1
	github.com/urfave/cli/v2 v2.27.1
	github.com/volatiletech/strmangle v0.0.6
	github.com/wasilibs/go-pgquery v0.0.0-20240124010238-c9a912d768dc
	golang.org/x/mod v0.14.0
	golang.org/x/tools v0.17.0
	modernc.org/sqlite v1.28.0
	mvdan.cc/gofumpt v0.5.0
)

require (
	github.com/Masterminds/goutils v1.1.1 // indirect
	github.com/Masterminds/semver/v3 v3.2.0 // indirect
	github.com/aarondl/json v0.0.0-20221020222930-8b0db17ef1bf // indirect
	github.com/agext/levenshtein v1.2.1 // indirect
	github.com/apparentlymart/go-textseg/v13 v13.0.0 // indirect
	github.com/cpuguy83/go-md2man/v2 v2.0.2 // indirect
	github.com/dustin/go-humanize v1.0.1 // indirect
	github.com/fsnotify/fsnotify v1.6.0 // indirect
	github.com/go-openapi/inflect v0.19.0 // indirect
	github.com/google/uuid v1.3.0 // indirect
	github.com/huandu/xstrings v1.3.3 // indirect
	github.com/imdario/mergo v0.3.13 // indirect
	github.com/jackc/pgpassfile v1.0.0 // indirect
	github.com/jackc/pgservicefile v0.0.0-20221227161230-091c0ba34f0a // indirect
	github.com/kballard/go-shellquote v0.0.0-20180428030007-95032a82bc51 // indirect
	github.com/mattn/go-isatty v0.0.17 // indirect
	github.com/mattn/go-sqlite3 v1.14.16 // indirect
	github.com/mitchellh/copystructure v1.2.0 // indirect
	github.com/mitchellh/go-wordwrap v1.0.0 // indirect
	github.com/mitchellh/mapstructure v1.5.0 // indirect
	github.com/mitchellh/reflectwalk v1.0.2 // indirect
	github.com/pelletier/go-toml v1.9.5 // indirect
	github.com/pganalyze/pg_query_go/v5 v5.1.0 // indirect
	github.com/remyoudompheng/bigfft v0.0.0-20230129092748-24d4a6f8daec // indirect
	github.com/russross/blackfriday/v2 v2.1.0 // indirect
	github.com/sergi/go-diff v1.1.0 // indirect
	github.com/shopspring/decimal v1.3.1 // indirect
	github.com/spf13/cast v1.5.0 // indirect
	github.com/stretchr/testify v1.8.2 // indirect
	github.com/tetratelabs/wazero v1.6.1-0.20240124004658-4185e533bb18 // indirect
	github.com/volatiletech/inflect v0.0.1 // indirect
	github.com/wasilibs/wazerox v0.0.0-20231208014050-e6b725634531 // indirect
	github.com/xrash/smetrics v0.0.0-20201216005158-039620a65673 // indirect
	github.com/zclconf/go-cty v1.8.0 // indirect
	golang.org/x/crypto v0.17.0 // indirect
	golang.org/x/exp v0.0.0-20230131160201-f062dba9d201 // indirect
	golang.org/x/sys v0.15.0 // indirect
	golang.org/x/text v0.14.0 // indirect
	golang.org/x/xerrors v0.0.0-20220907171357-04be3eba64a2 // indirect
	google.golang.org/protobuf v1.31.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	lukechampine.com/uint128 v1.2.0 // indirect
	modernc.org/cc/v3 v3.40.0 // indirect
	modernc.org/ccgo/v3 v3.16.13 // indirect
	modernc.org/libc v1.29.0 // indirect
	modernc.org/mathutil v1.6.0 // indirect
	modernc.org/memory v1.7.2 // indirect
	modernc.org/opt v0.1.3 // indirect
	modernc.org/strutil v1.1.3 // indirect
	modernc.org/token v1.1.0 // indirect
)

// replace github.com/pingcap/tidb => github.com/pingcap/tidb v1.1.0-beta.0.20230311041313-145b7cdf72fe
// replace github.com/stephenafamo/sqlparser => ../sqlparser
