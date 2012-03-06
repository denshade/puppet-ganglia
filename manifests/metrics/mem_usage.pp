define ganglia::metrics::mem_usage
($processname)
{
	include ganglia::metrics
	
	ganglia::metrics::gmetric { "system/process_mem_usage/ganglia_process_mem_usage.sh $name $processname" :
				
                   		minute	=> '*'
                   } # ganglia metric
}