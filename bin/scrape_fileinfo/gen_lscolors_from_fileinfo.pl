#!/usr/bin/perl
# vim: ft=perl:fdm=marker:fmr=#<,#>:fen:et:sw=2:
use strict;
use warnings FATAL => 'all';
use vars     qw($VERSION);
use autodie  qw(:all);

use LWP::Simple;
use HTML::TableExtract;


binmode STDOUT, ':encoding(UTF-8)';

# populated in BEGIN block
my %urls;

print "# vim: ft=dircolors:fdm=marker:fdl=0:et:sw=2:\n";
while(<DATA>) {
  print;
}


for my $cat(sort(keys(%urls))) {
  printf "###< %s\n", $cat;
  generate_lscolors($urls{$cat});
  print "#>\n";
}


sub generate_lscolors {
  my $url = shift;

  my $te = HTML::TableExtract->new(
    headers => ['File Extension', 'File Type'],
  );

  $te->parse(get($url));

  for my $ts($te->tables) {
    for my $row($ts->rows) {
      printf "%20s %20s  # %s\n", lc($row->[0]), '38;5;187', $row->[1];
    }
  }
}



BEGIN {
  #< fileinfo.com extensions by category
  %urls             = (
    'text'              => 'https://fileinfo.com/filetypes/text',
    'data'              => 'https://fileinfo.com/filetypes/datafiles-all',
    'audio'             => 'https://fileinfo.com/filetypes/audio-all',
    'video'             => 'https://fileinfo.com/filetypes/video-all',
    'ebook'             => 'https://fileinfo.com/filetypes/ebook',
    '3d image'          => 'https://fileinfo.com/filetypes/3d_image',
    'raster image'      => 'https://fileinfo.com/filetypes/raster_image',
    'vector image'      => 'https://fileinfo.com/filetypes/vector_image',
    'camera raw'        => 'https://fileinfo.com/filetypes/camera_raw',
    'layout'            => 'https://fileinfo.com/filetypes/page_layout',
    'spreadsheet'       => 'https://fileinfo.com/filetypes/spreadsheet',
    'databse'           => 'https://fileinfo.com/filetypes/database',
    'executable'        => 'https://fileinfo.com/filetypes/executable',
    'game files'        => 'https://fileinfo.com/filetypes/game-all',
    'cad'               => 'https://fileinfo.com/filetypes/cad',
    'gps data and maps' => 'https://fileinfo.com/filetypes/gis',
    'web'               => 'https://fileinfo.com/filetypes/web',
    'plugin files'      => 'https://fileinfo.com/filetypes/plugin',
    'fonts'             => 'https://fileinfo.com/filetypes/font',
    'system files'      => 'https://fileinfo.com/filetypes/system',
    'configs'           => 'https://fileinfo.com/filetypes/settings-all',
    'encoded'           => 'https://fileinfo.com/filetypes/encoded',
    'compressed'        => 'https://fileinfo.com/filetypes/compressed',
    'disk images'       => 'https://fileinfo.com/filetypes/disk_image',
    'code'              => 'https://fileinfo.com/filetypes/developer-all',
    'backup'            => 'https://fileinfo.com/filetypes/backup',
    'misc'              => 'https://fileinfo.com/filetypes/misc-all',
  );
  #>
}

__DATA__
BLK                    38;5;68
CAPABILITY             38;5;17
CHR                    38;5;113;1
DIR                    38;5;30
DOOR                   38;5;127
EXEC                   38;5;166;1
FIFO                   38;5;126
FILE                   38;5;253
LINK                   target
MULTIHARDLINK          38;5;222;1
ORPHAN                 48;5;196;38;5;232;1
OTHER_WRITABLE         38;5;220;1
SETGID                 48;5;3;38;5;0
SETUID                 38;5;220;1;3;100;1
SOCK                   38;5;197
STICKY                 38;5;232;48;5;30
STICKY_OTHER_WRITABLE  48;5;235;38;5;139;3
*LS_COLORS             48;5;89;38;5;197;1;3;4;7


*AUTHORS       = 38;5;220;1
*CHANGES       = 38;5;220;1
*CONTRIBUTORS  = 38;5;220;1
*COPYING       = 38;5;220;1
*COPYRIGHT     = 38;5;220;1
*HISTORY       = 38;5;220;1
*INSTALL       = 38;5;220;1
*LICENSE       = 38;5;220;1
*MANIFEST      = 38;5;243
*Makefile      = 38;5;155
*NOTICE        = 38;5;220;1
*PATENTS       = 38;5;220;1
*README        = 38;5;220;1
*VERSION       = 38;5;220;1
*@.service     = 38;5;45
*cfg           = 38;5;204
*conf          = 38;5;204
*lockfile      = 38;5;248
*pm_to_blib    = 38;5;240
*rc            = 38;5;204
*~             = 38;5;241

