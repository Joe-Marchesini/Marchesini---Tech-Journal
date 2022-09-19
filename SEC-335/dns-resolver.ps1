$network=$args[0]
$dns=$args[1]

for ($i = 1; $i -le 254; $i++)
{
	Resolve-DnsName -DnsOnly $network`.$i -Server $dns -ErrorAction Ignore
}
