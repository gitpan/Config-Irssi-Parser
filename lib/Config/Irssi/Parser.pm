####################################################################
#
#    This file was generated using Parse::Yapp version 1.05.
#
#        Don't edit this file, use source file instead.
#
#             ANY CHANGE MADE HERE WILL BE LOST !
#
####################################################################
package Config::Irssi::Parser;
use vars qw ( @ISA );
use strict;

@ISA= qw ( Parse::Yapp::Driver );
use Parse::Yapp::Driver;



sub new {
        my($class)=shift;
        ref($class)
    and $class=ref($class);

    my($self)=$class->SUPER::new( yyversion => '1.05',
                                  yystates =>
[
	{#State 0
		DEFAULT => -1,
		GOTOS => {
			'input' => 1
		}
	},
	{#State 1
		ACTIONS => {
			'' => 3,
			'SYMBOL' => 4,
			";" => 5,
			'error' => 9,
			'NUMBER' => 11,
			'STRING' => 6
		},
		GOTOS => {
			'assign_list' => 2,
			'toplevel' => 8,
			'assign' => 10,
			'line' => 12,
			'key' => 7
		}
	},
	{#State 2
		DEFAULT => -6
	},
	{#State 3
		DEFAULT => 0
	},
	{#State 4
		DEFAULT => -19
	},
	{#State 5
		DEFAULT => -3
	},
	{#State 6
		DEFAULT => -21
	},
	{#State 7
		ACTIONS => {
			"=" => 13
		}
	},
	{#State 8
		DEFAULT => -4
	},
	{#State 9
		ACTIONS => {
			";" => 14
		}
	},
	{#State 10
		ACTIONS => {
			";" => 15
		},
		DEFAULT => -13
	},
	{#State 11
		DEFAULT => -20
	},
	{#State 12
		DEFAULT => -2
	},
	{#State 13
		ACTIONS => {
			"(" => 20,
			"{" => 16,
			'NUMBER' => 22,
			'STRING' => 17
		},
		GOTOS => {
			'array' => 19,
			'hash' => 18,
			'expr' => 21
		}
	},
	{#State 14
		DEFAULT => -5
	},
	{#State 15
		ACTIONS => {
			'SYMBOL' => 4,
			'NUMBER' => 11,
			'STRING' => 6
		},
		DEFAULT => -14,
		GOTOS => {
			'assign_list' => 23,
			'assign' => 10,
			'key' => 7
		}
	},
	{#State 16
		ACTIONS => {
			"}" => 24,
			'SYMBOL' => 4,
			'NUMBER' => 11,
			'STRING' => 6
		},
		GOTOS => {
			'assign_list' => 25,
			'assign' => 10,
			'key' => 7
		}
	},
	{#State 17
		DEFAULT => -22
	},
	{#State 18
		DEFAULT => -25
	},
	{#State 19
		DEFAULT => -24
	},
	{#State 20
		ACTIONS => {
			"(" => 20,
			"{" => 16,
			")" => 27,
			'NUMBER' => 22,
			'STRING' => 17
		},
		GOTOS => {
			'array' => 19,
			'hash' => 18,
			'expr' => 26,
			'list' => 28
		}
	},
	{#State 21
		DEFAULT => -12
	},
	{#State 22
		DEFAULT => -23
	},
	{#State 23
		ACTIONS => {
			";" => 29
		},
		DEFAULT => -15
	},
	{#State 24
		DEFAULT => -11
	},
	{#State 25
		ACTIONS => {
			"}" => 30
		}
	},
	{#State 26
		ACTIONS => {
			"," => 31
		},
		DEFAULT => -17
	},
	{#State 27
		DEFAULT => -9
	},
	{#State 28
		ACTIONS => {
			"," => 32,
			")" => 33
		}
	},
	{#State 29
		DEFAULT => -16
	},
	{#State 30
		DEFAULT => -10
	},
	{#State 31
		ACTIONS => {
			"(" => 20,
			"{" => 16,
			'NUMBER' => 22,
			'STRING' => 17
		},
		GOTOS => {
			'array' => 19,
			'hash' => 18,
			'expr' => 26,
			'list' => 34
		}
	},
	{#State 32
		ACTIONS => {
			")" => 35
		}
	},
	{#State 33
		DEFAULT => -7
	},
	{#State 34
		DEFAULT => -18
	},
	{#State 35
		DEFAULT => -8
	}
],
                                  yyrules  =>
[
	[#Rule 0
		 '$start', 2, undef
	],
	[#Rule 1
		 'input', 0, undef
	],
	[#Rule 2
		 'input', 2,
sub
#line 12 "lib/Config/Irssi/Parser.yp"
{ push(@{$_[1]},$_[2]); $_[1] }
	],
	[#Rule 3
		 'line', 1,
sub
#line 15 "lib/Config/Irssi/Parser.yp"
{ $_[1] }
	],
	[#Rule 4
		 'line', 1, undef
	],
	[#Rule 5
		 'line', 2,
sub
#line 17 "lib/Config/Irssi/Parser.yp"
{ $_[0]->YYErrok }
	],
	[#Rule 6
		 'toplevel', 1,
sub
#line 20 "lib/Config/Irssi/Parser.yp"
{
	my %hash = @{$_[1]};
	$_[0]->YYData->{return} = \%hash;
}
	],
	[#Rule 7
		 'array', 3,
sub
#line 25 "lib/Config/Irssi/Parser.yp"
{ $_[2] }
	],
	[#Rule 8
		 'array', 4,
sub
#line 26 "lib/Config/Irssi/Parser.yp"
{ $_[2] }
	],
	[#Rule 9
		 'array', 2,
sub
#line 27 "lib/Config/Irssi/Parser.yp"
{ [] }
	],
	[#Rule 10
		 'hash', 3,
sub
#line 28 "lib/Config/Irssi/Parser.yp"
{ my %hash = @{$_[2]}; \%hash  }
	],
	[#Rule 11
		 'hash', 2,
sub
#line 29 "lib/Config/Irssi/Parser.yp"
{ my %hash; \%hash }
	],
	[#Rule 12
		 'assign', 3,
sub
#line 31 "lib/Config/Irssi/Parser.yp"
{ [$_[1], $_[3]] }
	],
	[#Rule 13
		 'assign_list', 1,
sub
#line 33 "lib/Config/Irssi/Parser.yp"
{ [ @{$_[1]} ] }
	],
	[#Rule 14
		 'assign_list', 2,
sub
#line 34 "lib/Config/Irssi/Parser.yp"
{ [ @{$_[1]} ] }
	],
	[#Rule 15
		 'assign_list', 3,
sub
#line 35 "lib/Config/Irssi/Parser.yp"
{ [ @{$_[1]}, @{$_[3]} ] }
	],
	[#Rule 16
		 'assign_list', 4,
sub
#line 36 "lib/Config/Irssi/Parser.yp"
{ [ @{$_[1]}, @{$_[3]} ] }
	],
	[#Rule 17
		 'list', 1,
sub
#line 39 "lib/Config/Irssi/Parser.yp"
{ [ $_[1] ] }
	],
	[#Rule 18
		 'list', 3,
sub
#line 40 "lib/Config/Irssi/Parser.yp"
{
			[ $_[1], @{$_[3]} ];
		 }
	],
	[#Rule 19
		 'key', 1, undef
	],
	[#Rule 20
		 'key', 1, undef
	],
	[#Rule 21
		 'key', 1, undef
	],
	[#Rule 22
		 'expr', 1, undef
	],
	[#Rule 23
		 'expr', 1, undef
	],
	[#Rule 24
		 'expr', 1, undef
	],
	[#Rule 25
		 'expr', 1, undef
	]
],
                                  @_);
    bless($self,$class);
}

#line 49 "lib/Config/Irssi/Parser.yp"


sub error {
	my ($me) = @_;
	
	print "Oh, error\n";
	return if $me->YYData->{error};

	$me->YYData->{error} = {
		val => scalar $me->YYCurval,
		tok => scalar $me->YYCurtok,
		expect => [$me->YYExpect],
		line  => $me->YYData->{line},
	};

	return;
}

sub _lexer {
	my ($me) = @_;
	my ($tok, $val) = $me->_lexer;
	if ($tok and $val) {
		if ($tok ne $val) {
			print "# $tok ($val)\n";
		} else {
			print "# $tok\n";
		}
	}
	return ($tok, $val);
}

sub lexer {
    my ($parser) = shift;
	local $/ = undef;


	unless ($parser->YYData->{INPUT}) {
		my $fh = $parser->YYData->{fh};
		my $s = <$fh>;
		return ('', undef) if not defined $s;
		$s =~ s/^\s*#\s*.+?$//mg;
		$parser->YYData->{INPUT} = $s;
	}


    for ($parser->YYData->{INPUT}) {
		s/^([ \t\n]+)//;
        s/^([0-9]+(?:\.[0-9]+)?)//
                and return('NUMBER',$1);
        s/^([A-Za-z][A-Za-z0-9_]*)//
                and return('SYMBOL',$1);

		if (s/^(["'])((?:\\.|(?!\1)[^\\])*)\1//) {
			my $s = $2;
			my $q = $1;
			$s =~ s/\\$q/$q/g;
			$s =~ s/\\\\/\\/g;
			return (STRING => $s);
		}
		
        s/^\s*(.)//s
                and return($1,$1);
    }
}



sub parse {
    my ($self, $fh) = @_;
	
	$self->YYData->{fh} = $fh;
    $self->YYParse( yylex => \&lexer, yyerror => \&error );

	if ($self->YYData->{return}) {
		return $self->YYData->{return};
	}
	return undef;
}

sub lex {
    my ($self, $fh) = @_;
	
	$self->YYData->{fh} = $fh;
	while (my ($tok, $val) = $self->lexer) {
		last if (not $tok and not defined $val);
		print "# $tok";
		if ($val ne $tok) {
			print " ($val)";
		}
		print "\n";
	}
}

1;
