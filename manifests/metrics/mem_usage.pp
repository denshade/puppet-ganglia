define ganglia::metrics::mem_usage
($processname)
{
	include ganglia::metrics
	
	ganglia::metrics::gmetric { "system/process_mem_usage/ganglia_proc_mem_usage.sh $processname $name" :
				
                   		minute	=> '*'
                   } # ganglia metric
}