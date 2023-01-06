# contrib/pg_audit/Makefile

MODULE_big = pgaudit-extended
OBJS = pgaudit-extended.o $(WIN32RES)

EXTENSION = pgaudit-extended
DATA = pgaudit-extended--1.6.2.sql pgaudit-extended--1.6--1.6.1.sql pgaudit-extended--1.6.1--1.6.2.sql
PGFILEDESC = "pgaudit-extended - An audit logging extension for PostgreSQL"

REGRESS = pgaudit-extended
REGRESS_OPTS = --temp-config=$(top_srcdir)/contrib/pgaudit-extended/pgaudit-extended.conf

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/pgaudit-extended
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif
