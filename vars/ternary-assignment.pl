    #!/usr/bin/perl
    use strict;
    use warnings FATAL => 'all';
     
    my $v1 = 'hello';
    my $v2 = 'world';
     
    my $v1_or_v2 = 1;
     
    my $v3 = 'lol';
     
    ($v1_or_v2 ? $v1 : $v2) = $v3;
     
    print "v1 : $v1\n";
    print "v2 : $v2\n";
    print "v3 : $v3\n";
    print "v1_or_v2 : $v1_or_v2\n";
