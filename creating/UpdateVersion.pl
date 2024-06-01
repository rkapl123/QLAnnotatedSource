use strict; use feature 'unicode_strings';
# enter new version to update all modules with
print "new version (empty to skip):";
my $newVersion = <STDIN>;
chomp $newVersion;


print "updating version for quantlibheaderFull.html\n";
my $data = read_file ("quantlibheaderFull.html");
$data =~ s/ - version (.*?)<\/div>/ - version $newVersion<\/div>/s;
write_file("quantlibheaderFull.html", $data);

sub read_file {
	my ($filename) = @_;

	open my $in, '<:encoding(UTF-8)', $filename or die "Could not open '$filename' for reading $!";
	binmode($in);
	local $/ = undef;
	my $all = <$in>;
	close $in;

	return $all;
}

sub write_file {
	my ($filename, $content) = @_;

	open my $out, '>:encoding(UTF-8)', $filename or die "Could not open '$filename' for writing $!";
	binmode($out);
	print $out $content;
	close $out;

	return;
}
